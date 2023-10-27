--ORGANISATIONS
INSERT INTO muddi.organisations (name)
VALUES
('UK Power Networks');

--DATA SOURCE
INSERT INTO muddi.data_sources (name, organisation_id)
SELECT
    '33kv_overhead_lines',
    organisations.id
FROM muddi.organisations as organisations where organisations.name = 'UK Power Networks';

--NETWORK
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_collect(import.wkb_geometry))),
        st_collect(import.wkb_geometry),
        'network',
        source.id
    FROM public."33kv_overhead_lines" AS import, muddi.data_sources AS source
    WHERE source.name = '33kv_overhead_lines'
    GROUP BY source.id
    RETURNING id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'UK Power Networks'
    RETURNING id
)
INSERT INTO muddi.network (asset_id, network_name, commodity_type)
SELECT 
    asset.id,
    'UKPN',
    'electricity'
FROM asset;

--SUBNETWORK
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_collect(import.wkb_geometry))),
        st_collect(import.wkb_geometry),
        'network',
        source.id 
    FROM public."33kv_overhead_lines" AS import, muddi.data_sources AS source
    WHERE source.name = '33kv_overhead_lines'
    GROUP BY import.dno, source.id
    RETURNING id, record_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'UK Power Networks'
    RETURNING id, object_id
)
INSERT INTO muddi.network (asset_id, network_name, commodity_type, parent_network_id)
SELECT 
    asset.id,
    import.dno,
    'electricity',
    (SELECT id FROM muddi.network WHERE network_name = 'UKPN')
FROM asset
INNER JOIN object ON asset.object_id = object.id
INNER JOIN 
    (
        SELECT
            md5(st_astext(st_collect(wkb_geometry))) AS record_id,
            dno
        FROM public."33kv_overhead_lines"
        GROUP BY dno
    ) AS import 
    ON object.record_id = import.record_id;

--SERVICE AREA (FULL NETWORK)
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_extent(import.wkb_geometry))),
        st_extent(import.wkb_geometry), 
        'service area',
        source.id
    FROM public."33kv_overhead_lines" AS import, muddi.data_sources AS source
    WHERE source.name = '33kv_overhead_lines'
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
where network.network_name = 'UKPN';

--SERVICE AREA (SUBNETWORKS)
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_extent(import.wkb_geometry))),
        st_extent(import.wkb_geometry),
        'service area',
        source.id 
    FROM public."33kv_overhead_lines" AS import, muddi.data_sources AS source
    WHERE source.name = '33kv_overhead_lines'
    GROUP BY import.dno, source.id
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
            md5(st_astext(st_extent(wkb_geometry))) AS record_id,
            dno
        FROM public."33kv_overhead_lines"
        GROUP BY dno
    ) AS import 
    ON object.record_id = import.record_id
INNER JOIN muddi.network as network on import.dno=network.network_name;

--CREATE NODE TABLE
CREATE TABLE staging.nodes AS
SELECT 
	gen_random_uuid() as record_id,
	dno as network_name,
	geom,
	array_agg(leaving) AS leaving,
	array_agg(entering) AS entering
FROM (
  SELECT 
  	dno,
    ST_StartPoint(wkb_geometry) AS geom, 
    ogc_fid::varchar AS leaving,
    NULL::varchar AS entering
  FROM public."33kv_overhead_lines"
  UNION ALL
  SELECT 
  	dno,
    ST_EndPoint(wkb_geometry) AS geom, 
    NULL::varchar AS leaving,
    ogc_fid::varchar AS entering
  FROM public."33kv_overhead_lines"
) as foo
GROUP BY geom, dno;

--CREATE LINK TABLE
CREATE TABLE staging.links AS
SELECT
    link.ogc_fid::varchar AS record_id,
    link.wkb_geometry AS geom,
    link.dno as network_name,
    'cable' AS conveyance_type,
    link.betr_spann AS voltage,
    node1.nodeid::varchar AS starting_node,
    node2.nodeid::varchar AS ending_node
FROM public."33kv_overhead_lines" AS link
INNER JOIN (
    SELECT 
        record_id as nodeid,
        leaving_link as linkid
    FROM staging.nodes
    CROSS JOIN UNNEST(nodes.leaving) AS leaving_link) as node1
    ON link.ogc_fid::varchar = node1.linkid 
INNER JOIN (
    SELECT 
        record_id AS nodeid,
        starting_link AS linkid
    FROM staging.nodes
    CROSS JOIN UNNEST(nodes.entering) AS starting_link) as node2
    ON link.ogc_fid::varchar = node2.linkid;
--INGEST NODES

WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        record_id,
        geom,
        'node',
        source.id
    FROM staging.nodes AS import, muddi.data_sources AS source
    WHERE source.name = '33kv_overhead_lines'
    RETURNING id, record_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'UK Power Networks'
    RETURNING id, object_id
), network_asset AS (
    INSERT INTO muddi.network_asset (asset_id, utility_type)
    SELECT 
        asset.id,
        'electricity'
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
    WHERE source.name = '33kv_overhead_lines'
    RETURNING id, record_id, data_source_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'UK Power Networks'
    RETURNING id, object_id
), network_asset AS (
    INSERT INTO muddi.network_asset (asset_id, utility_type)
    SELECT 
        asset.id,
        'electricity'
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
)   INSERT INTO muddi.network_link (network_conveyance_id, conveyance_type, voltage, network_node_to_id, network_node_from_id)
	SELECT
        network_conveyance.id,
        import.conveyance_type,
        import.voltage,
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
            voltage,
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
    INNER JOIN muddi.network_node AS end_network_node ON end_network_conveyance.id = end_network_node.network_conveyance_id;

DROP TABLE staging.nodes;

DROP TABLE staging.links;