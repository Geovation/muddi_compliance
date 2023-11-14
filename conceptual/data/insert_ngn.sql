--ORGANISATIONS
INSERT INTO muddi.organisations (name)
VALUES
('Northern Gas Networks');

--DATA SOURCE
INSERT INTO muddi.data_sources (name, organisation_id)
SELECT
    'gasline_live_distribution_main_pipe',
    organisations.id
FROM muddi.organisations as organisations where organisations.name = 'Northern Gas Networks';

--NETWORK
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_collect(import.shape))),
        st_collect(import.shape) ,
        'network',
        source.id
    FROM public.gasline_live_distribution_main_pipe AS import, muddi.data_sources AS source
    WHERE source.name = 'gasline_live_distribution_main_pipe'
    GROUP BY source.id
    RETURNING id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'Northern Gas Networks'
    RETURNING id
)
INSERT INTO muddi.network (asset_id, network_name, commodity_type)
SELECT 
    asset.id,
    'NGN',
    'gas'
FROM asset;


--SUBNETWORK
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_collect(import.shape))),
        st_collect(import.shape),
        'network',
        source.id 
    FROM public.gasline_live_distribution_main_pipe AS import, muddi.data_sources AS source
    WHERE source.name = 'gasline_live_distribution_main_pipe'
    GROUP BY import.networkid, source.id
    RETURNING id, record_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'Northern Gas Networks'
    RETURNING id, object_id
)
INSERT INTO muddi.network (asset_id, network_name, commodity_type, parent_network_id)
SELECT 
    asset.id,
    import.networkid,
    'gas',
    (SELECT id FROM muddi.network WHERE network_name = 'NGN')
FROM asset
INNER JOIN object ON asset.object_id = object.id
INNER JOIN 
    (
        SELECT
            md5(st_astext(st_collect(shape))) AS record_id,
            networkid
        FROM public.gasline_live_distribution_main_pipe
        GROUP BY networkid
    ) AS import 
    ON object.record_id = import.record_id;

--SERVICE AREA (FULL NETWORK)
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_extent(import.shape))),
        st_extent(import.shape), 
        'service area',
        source.id
    FROM public.gasline_live_distribution_main_pipe AS import, muddi.data_sources AS source
    WHERE source.name = 'gasline_live_distribution_main_pipe'
    GROUP BY source.id
    RETURNING id, sf_geometry
), space AS (
    INSERT INTO muddi.space (object_id, extent)
    SELECT
        object.id,
        object.sf_geometry
    FROM object
    RETURNING id
)
INSERT INTO muddi.service_area (space_id, network_id)
SELECT 
    space.id,
    network.id 
FROM space, muddi.network as network
where network.network_name = 'NGN';

--SERVICE AREA (SUBNETWORKS)
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_extent(import.shape))),
        st_extent(import.shape),
        'service area',
        source.id 
    FROM public.gasline_live_distribution_main_pipe AS import, muddi.data_sources AS source
    WHERE source.name = 'gasline_live_distribution_main_pipe'
    GROUP BY import.networkid, source.id
    RETURNING id, sf_geometry, record_id
), space AS (
    INSERT INTO muddi.space (object_id, extent)
    SELECT
        object.id,
        object.sf_geometry
    FROM object
    RETURNING id, object_id
)
INSERT INTO muddi.service_area (space_id, network_id)
SELECT 
    space.id,
    network.id 
FROM space
INNER JOIN object ON space.object_id = object.id
INNER JOIN 
    (
        SELECT
            md5(st_astext(st_extent(shape))) AS record_id,
            networkid
        FROM public.gasline_live_distribution_main_pipe
        GROUP BY networkid
    ) AS import 
    ON object.record_id = import.record_id
INNER JOIN muddi.network as network on import.networkid=network.network_name;

--CREATE NODE TABLE

CREATE TABLE staging.nodes AS
SELECT 
	gen_random_uuid() as record_id,
	networkid as network_name,
	geom,
	array_agg(leaving) AS leaving,
	array_agg(entering) AS entering
FROM (
  SELECT 
  	networkid,
    ST_StartPoint(st_linemerge(shape)) AS geom, 
    globalid::varchar AS leaving,
    NULL::varchar AS entering
  FROM public.gasline_live_distribution_main_pipe
  UNION ALL
  SELECT 
  	networkid,
    ST_EndPoint(st_linemerge(shape)) AS geom, 
    NULL::varchar AS leaving,
    globalid::varchar AS entering
  FROM public.gasline_live_distribution_main_pipe
) as foo
GROUP BY geom, networkid;

--CREATE LINK TABLE
CREATE TABLE staging.links AS
SELECT
    link.globalid::varchar AS record_id,
    link.shape AS geom,
    link.networkid as network_name,
    'pipe' AS conveyance_type,
    link.material,
    link.diameter,
    link.unitofdiameter as diameter_units,
    node1.nodeid::varchar AS starting_node,
    node2.nodeid::varchar AS ending_node
FROM public.gasline_live_distribution_main_pipe AS link
INNER JOIN (
    SELECT 
        record_id as nodeid,
        leaving_link as linkid
    FROM staging.nodes
    CROSS JOIN UNNEST(nodes.leaving) AS leaving_link) as node1
    ON link.globalid::varchar = node1.linkid 
INNER JOIN (
    SELECT 
        record_id AS nodeid,
        starting_link AS linkid
    FROM staging.nodes
    CROSS JOIN UNNEST(nodes.entering) AS starting_link) as node2
    ON link.globalid::varchar = node2.linkid;
    
--INGEST NODES
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        record_id,
        geom,
        'node',
        source.id
    FROM staging.nodes AS import, muddi.data_sources AS source
    WHERE source.name = 'gasline_live_distribution_main_pipe'
    RETURNING id, record_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'Northern Gas Networks'
    RETURNING id, object_id
), network_asset AS (
    INSERT INTO muddi.network_asset (asset_id, utility_type)
    SELECT 
        asset.id,
        'gas'
    FROM asset
    RETURNING id, asset_id
), network_conveyance AS (
    INSERT INTO muddi.network_conveyance (network_asset_id, network_id)
    SELECT
        network_asset.id,
        network.id
    FROM network_asset
    INNER JOIN asset ON network_asset.asset_id = asset.id
    INNER JOIN object ON asset.object_id = object.id
    INNER JOIN 
    (
        SELECT
            record_id::varchar,
            network_name
        FROM staging.nodes
    ) AS import 
    ON object.record_id = import.record_id
    INNER JOIN muddi.network as network on import.network_name=network.network_name
    RETURNING id
)   INSERT INTO muddi.network_node (network_conveyance_id, node_type)
	SELECT
        network_conveyance.id,
        'Joint'
    FROM network_conveyance;
    
--INGEST LINKS
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        record_id,
        geom,
        'link',
        source.id
    FROM staging.links AS import, muddi.data_sources AS source
    WHERE source.name = 'gasline_live_distribution_main_pipe'
    RETURNING id, record_id, data_source_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'Northern Gas Networks'
    RETURNING id, object_id
), network_asset AS (
    INSERT INTO muddi.network_asset (asset_id, utility_type)
    SELECT 
        asset.id,
        'gas'
    FROM asset
    RETURNING id, asset_id
), network_conveyance AS (
    INSERT INTO muddi.network_conveyance (network_asset_id, network_id)
    SELECT
        network_asset.id,
        network.id
    FROM network_asset
    INNER JOIN asset ON network_asset.asset_id = asset.id
    INNER JOIN object ON asset.object_id = object.id
    INNER JOIN 
    (
        SELECT
            record_id,
            network_name
        FROM staging.links
    ) AS import 
    ON object.record_id = import.record_id
    INNER JOIN muddi.network as network on import.network_name=network.network_name
    RETURNING id, network_asset_id
)   INSERT INTO muddi.network_link (network_conveyance_id, conveyance_type, material, diameter, diameter_units, network_node_to_id, network_node_from_id)
	SELECT
        network_conveyance.id,
        import.conveyance_type,
        import.material,
        import.diameter,
        import.diameter_units,
        end_network_node.id,
        start_network_node.id
    FROM network_conveyance
    INNER JOIN network_asset on network_conveyance.network_asset_id = network_asset.id
    INNER JOIN asset ON network_asset.asset_id = asset.id
    INNER JOIN object ON asset.object_id = object.id
    INNER JOIN 
    (
        SELECT
            record_id,
            conveyance_type,
            material,
            diameter,
            diameter_units,
            starting_node,
            ending_node
        FROM staging.links
    ) AS import 
    ON object.record_id = import.record_id
    INNER JOIN muddi.object AS start_object ON import.starting_node = start_object.record_id  AND start_object.data_source_id = object.data_source_id
    INNER JOIN muddi.asset AS start_asset ON start_object.id = start_asset.object_id
    INNER JOIN muddi.network_asset AS start_network_asset ON start_asset.id = start_network_asset.asset_id
    INNER JOIN muddi.network_conveyance AS start_network_conveyance ON start_network_asset.id = start_network_conveyance.network_asset_id
    INNER JOIN muddi.network_node AS start_network_node ON start_network_conveyance.id = start_network_node.network_conveyance_id
    INNER JOIN muddi.object AS end_object ON import.ending_node = end_object.record_id  AND start_object.data_source_id = object.data_source_id
    INNER JOIN muddi.asset AS end_asset ON end_object.id = end_asset.object_id
    INNER JOIN muddi.network_asset AS end_network_asset ON end_asset.id = end_network_asset.asset_id
    INNER JOIN muddi.network_conveyance AS end_network_conveyance ON end_network_asset.id = end_network_conveyance.network_asset_id
    INNER JOIN muddi.network_node AS end_network_node ON end_network_conveyance.id = end_network_node.network_conveyance_id
  ;
  
-- CONTAINER

WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        import.globalid,
        import.shape,
        'container',
        source.id
    FROM gasline_live_distribution_main_pipe AS import, muddi.data_sources AS source
    WHERE source.name = 'gasline_live_distribution_main_pipe' AND (import.carrierpipematerial IS NOT NULL OR import.carrierpipediameter IS NOT NULL)
    RETURNING id, record_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'Northern Gas Networks'
    RETURNING id, object_id
), network_asset AS (
    INSERT INTO muddi.network_asset (asset_id, utility_type)
    SELECT 
        asset.id,
        'gas'
    FROM asset
    RETURNING id, asset_id
), network_accessory AS (
    INSERT INTO muddi.network_accessory (network_asset_id, network_conveyance_id)
    SELECT
        network_asset.id,
        network_conveyance.id
    FROM network_asset
    INNER JOIN asset ON network_asset.asset_id = asset.id
    INNER JOIN object ON asset.object_id = object.id
    INNER JOIN muddi.object as conveyance_object on object.record_id = conveyance_object.record_id
    INNER JOIN muddi.asset as conveyance_asset on conveyance_object.id = conveyance_asset.object_id
    INNER JOIN muddi.network_asset as conveyance_network_asset on conveyance_asset.id = conveyance_network_asset.asset_id
    INNER JOIn muddi.network_conveyance on conveyance_network_asset.id=network_conveyance.network_asset_id
    WHERE conveyance_object.feature_type = 'link'
    RETURNING id, network_asset_id
)   INSERT INTO muddi.container (network_accessory_id, container_type, material, diameter, diameter_units, sdr )
	SELECT
        network_accessory.id,
        'pipe',
    	import.carrierpipematerial,
    	import.carrierpipediameter,
    	import.carrierpipeunitofdiameter,
    	import.carrierpipesdr
    FROM network_accessory
    INNER JOIN network_asset on network_accessory.network_asset_id = network_asset.id
    INNER JOIN asset ON network_asset.asset_id = asset.id
    INNER JOIN object ON asset.object_id = object.id
    INNER JOIN gasline_live_distribution_main_pipe as import on object.record_id = import.globalid;
    



-- PROTECTION 


WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        import.globalid,
        import.shape,
        'protection',
        source.id
    FROM gasline_live_distribution_main_pipe AS import, muddi.data_sources AS source
    WHERE source.name = 'gasline_live_distribution_main_pipe' AND import.protectiontype IS NOT NULL
    RETURNING id, record_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'Northern Gas Networks'
    RETURNING id, object_id
), network_asset AS (
    INSERT INTO muddi.network_asset (asset_id, utility_type)
    SELECT 
        asset.id,
        'gas'
    FROM asset
    RETURNING id, asset_id
), network_accessory AS (
    INSERT INTO muddi.network_accessory (network_asset_id, network_conveyance_id)
    SELECT
        network_asset.id,
        network_conveyance.id
    FROM network_asset
    INNER JOIN asset ON network_asset.asset_id = asset.id
    INNER JOIN object ON asset.object_id = object.id
    INNER JOIN muddi.object as conveyance_object on object.record_id = conveyance_object.record_id
    INNER JOIN muddi.asset as conveyance_asset on conveyance_object.id = conveyance_asset.object_id
    INNER JOIN muddi.network_asset as conveyance_network_asset on conveyance_asset.id = conveyance_network_asset.asset_id
    INNER JOIn muddi.network_conveyance on conveyance_network_asset.id=network_conveyance.network_asset_id
    WHERE conveyance_object.feature_type = 'link'
    RETURNING id, network_asset_id
)   INSERT INTO muddi.protection (network_accessory_id, protection_type)
	SELECT
        network_accessory.id,
    	import.protectiontype
    FROM network_accessory
    INNER JOIN network_asset on network_accessory.network_asset_id = network_asset.id
    INNER JOIN asset ON network_asset.asset_id = asset.id
    INNER JOIN object ON asset.object_id = object.id
    INNER JOIN gasline_live_distribution_main_pipe as import on object.record_id = import.globalid;

DROP TABLE staging.nodes;

DROP TABLE staging.links;