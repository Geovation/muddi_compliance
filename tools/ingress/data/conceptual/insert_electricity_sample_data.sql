--ORGANISATIONS
INSERT INTO muddi.organisations (name)
VALUES
('Sample Electricity Provider London');

--DATA SOURCE
INSERT INTO muddi.data_sources (name, organisation_id)
SELECT
    'Electricity Sample Data London',
    organisations.id
FROM muddi.organisations as organisations where organisations.name = 'Sample Electricity Provider London';

--NETWORK
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_collect(import.geom))),
        st_collect(import.geom) ,
        'network',
        source.id
    FROM (select geom from "Electricity_Sample_Data — Service_Cable" union 
        select geom from "Electricity_Sample_Data — HV_Cable" union
        select geom from "Electricity_Sample_Data — EHV_Cable" union
        select geom from "Electricity_Sample_Data — LV_Cable")
        AS import, muddi.data_sources AS source
    WHERE source.name = 'Electricity Sample Data London'
    GROUP BY source.id
    RETURNING id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'Sample Electricity Provider London'
    RETURNING id
)
INSERT INTO muddi.network (asset_id, network_name, commodity_type)
SELECT 
    asset.id,
    'Sample Electricity London',
    'electricity'
FROM asset;

--SERVICE AREA (FULL NETWORK)
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        md5(st_astext(st_extent(import.shape))),
        st_extent(import.shape), 
        'service area',
        source.id
    FROM public. "Electricity_Sample_Data — HV_Cable" AS import, muddi.data_sources AS source
    WHERE source.name = 'Electricity Sample Data London'
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
where network.network_name = 'Sample Electricity London';

-- HIGH VOLTAGE LINKS AND NODES 

-- INGEST NODES
WITH object AS (
    INSERT INTO muddi.object (record_id, sf_geometry, feature_type, data_source_id)
    SELECT
        id,
        geom,
        'node',
        source.id
    FROM "Electricity_Sample_Data — HV_J" AS import, muddi.data_sources AS source
    WHERE source.name = 'Electricity Sample Data London'
    RETURNING id, record_id
), asset AS (
    INSERT INTO muddi.asset (object_id, asset_owner_id)
    SELECT
        object.id,
        organisations.id
    FROM object, muddi.organisations AS organisations
    WHERE organisations.name = 'Sample Electricity Data London'
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

-- LINKS STAGING TABLE