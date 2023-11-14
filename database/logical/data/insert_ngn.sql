--INGEST NETWORK
WITH network AS
    (INSERT INTO muddi.network (record_id, object_id, geom, asset_owner_id, commodity_type, network_type, network_name)
    SELECT 
        uuid_generate_v4(),
        uuid_generate_v4(),
        st_collect(shape),
        'Northern Gas Networks',
        'gas',
        'network',
        'NGN'
    FROM import.gasline_live_distribution_main_pipe
    RETURNING system_id 
),
subnetwork AS
    (INSERT INTO muddi.network (record_id, object_id, geom, asset_owner_id, commodity_type, parent_network_id, network_type, network_name)
    SELECT 
        uuid_generate_v4(),
        uuid_generate_v4(),
        st_collect(import.shape),
        'Northern Gas Networks',
        'gas',
        system_id,
        'subnetwork',
        import.networkid
    FROM network, import.gasline_live_distribution_main_pipe AS import
    GROUP BY import.networkid, system_id
    RETURNING parent_network_id 
)
INSERT INTO muddi.network (record_id, object_id, geom, asset_owner_id, commodity_type, parent_network_id, network_type, network_name)
SELECT 
    uuid_generate_v4(),
    uuid_generate_v4(),
    st_collect(import.shape),
    'Northern Gas Networks',
    'gas',
    network.parent_network_id,
    'subordinate network',
    case 
   		when link.assettype = 11 then 'LP'
   		when link.assettype = 21 then 'MP'
   		when link.assettype = 31 then 'IP'
    end
FROM (select parent_network_id from subnetwork group by parent_network_id) as network, import.gasline_live_distribution_main_pipe AS import
GROUP BY import.assettype, parent_network_id;

-- INGEST SERVICE AREAS
WITH service as (
    INSERT INTO muddi.service_area  (record_id, object_id, geom, extent, network_id)  
    SELECT
        uuid_generate_v4(),
        uuid_generate_v4(),
        st_convexhull(network.geom),
        st_extent(import.shape),
        network.system_id
    FROM import.gasline_live_distribution_main_pipe AS import,
    muddi.network AS network
    WHERE network.network_name = 'NGN'
    GROUP BY network.geom, network.system_id
    RETURNING network_id
) 
INSERT INTO muddi.service_area  (record_id, object_id, geom, extent, network_id)  
SELECT
    uuid_generate_v4(),
    uuid_generate_v4(),
    st_convexhull(network.geom),
    st_extent(import.shape),
    network.system_id
FROM service
INNER JOIN muddi.network AS network ON service.network_id = network.parent_network_id 
INNER JOIN import.gasline_live_distribution_main_pipe AS import ON network.network_name = import.networkid
GROUP BY network.geom, network.system_id;

-- CREATE NODE TABLE
CREATE TABLE staging.nodes AS
SELECT 
	gen_random_uuid() as record_id,
	'NGN' AS network_name,
	networkid AS sub_network_name,
	CASE 
   		WHEN assettype = 11 THEN 'LP'
   		WHEN assettype = 21 THEN 'MP'
   		WHEN assettype = 31 THEN 'IP'
   	END AS subordinate_network_name,
	geom,
	'Joint' AS node_type,
	array_agg(leaving) AS leaving,
	array_agg(entering) AS entering
FROM (
  SELECT 
  	networkid,
  	assettype,
    ST_StartPoint(st_linemerge(shape)) AS geom, 
    globalid::varchar AS leaving,
    NULL::varchar AS entering
  FROM import.gasline_live_distribution_main_pipe
  UNION ALL
  SELECT 
  	networkid,
  	assettype,
    ST_EndPoint(st_linemerge(shape)) AS geom, 
    NULL::varchar AS leaving,
    globalid::varchar AS entering
  FROM import.gasline_live_distribution_main_pipe
) AS foo
GROUP BY geom, networkid, assettype;

--INGEST NODES 
INSERT INTO muddi.network_node (record_id, object_id, geom, asset_owner_id, utility_type, network_id, sub_network_id, subordinate_network_id, node_type)
SELECT 
    import.record_id,
    uuid_generate_v4(),
    import.geom,
    'Northern Gas Networks',
    'gas',
    network.system_id,
    sub_network.system_id,
    subordinate_network.system_id,
    import.node_type
FROM staging.nodes as import
join muddi.network as network on import.network_name = network.network_name
left join muddi.network as sub_network on (network.system_id = sub_network.parent_network_id and import.sub_network_name = sub_network.network_name)
left join muddi.network as subordinate_network on (network.system_id = subordinate_network.parent_network_id and import.subordinate_network_name = subordinate_network.network_name);

-- CREATE LINK TABLE 
CREATE TABLE staging.links AS
SELECT
    link.globalid::varchar AS record_id,
    link.shape AS geom,
    'NGN' AS network_name,
    link.networkid as sub_network_name,
    case 
   		when link.assettype = 11 then 'LP'
   		when link.assettype = 21 then 'MP'
   		when link.assettype = 31 then 'IP'
   	end as subordinate_network_name,
    'pipe' AS conveyance_type,
    link.material,
    link.diameter,
    link.unitofdiameter as diameter_units,
    link.description,
    node1.nodeid::varchar AS node_to,
    node2.nodeid::varchar AS node_from
FROM import.gasline_live_distribution_main_pipe AS link
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
 
--INGEST LINKS
INSERT INTO muddi.network_link (record_id, object_id, geom, asset_owner_id, utility_type, network_node_to_id, network_node_from_id, network_id, sub_network_id, subordinate_network_id, conveyance_type, description, material, diameter, diameter_units)
SELECT 
    import.record_id,
    uuid_generate_v4(),
    import.geom,
    'Northern Gas Networks',
    'gas',
    node_to.system_id,
   	node_from.system_id,
    network.system_id,
    sub_network.system_id,
    subordinate_network.system_id,
    import.conveyance_type,
    import.description,
    import.material,
    import.diameter,
    import.diameter_units
FROM staging.links as import
INNER JOIN muddi.network as network on import.network_name = network.network_name
LEFT JOIN muddi.network as sub_network on (network.system_id = sub_network.parent_network_id and import.sub_network_name = sub_network.network_name)
LEFT JOIN muddi.network as subordinate_network on (network.system_id = subordinate_network.parent_network_id and import.subordinate_network_name = subordinate_network.network_name)
INNER JOIN muddi.network_node as node_to on import.node_to=node_to.record_id 
INNER JOIN muddi.network_node as node_from on import.node_from=node_from.record_id ;

--INGEST CONTAINER (VIA RELATIONSHIP TABLE)
WITH relationship AS (
    INSERT INTO muddi.relationship_accessory (network_link_id)
    SELECT 
        link.system_id
    FROM muddi.network_link as link
    INNER JOIN import.gasline_live_distribution_main_pipe as import ON link.record_id = import.globalid
    RETURNING system_id, network_link_id
)
INSERT INTO muddi.container (record_id, object_id, geom, asset_owner_id, utility_type, relationship_id, container_type, material, diameter, diameter_units, sdr)
SELECT
    import.globalid,
    uuid_generate_v4(),
    import.shape,
    'Northern Gas Networks',
    'Gas',
    relationship.system_id,
    'Carrier Pipe',
    import.carrierpipematerial,
    import.carrierpipediameter,
    import.carrierpipeunitofdiameter,
    import.carrierpipesdr
FROM relationship
INNER JOIN muddi.network_link AS link ON relationship.network_link_id = link.system_id
INNER JOIN import.gasline_live_distribution_main_pipe AS import ON link.record_id = import.globalid
WHERE import.carrierpipematerial IS NOT NULL OR import.carrierpipediameter IS NOT NULL;

--INGEST PROTECTION 
WITH relationship AS (
    INSERT INTO muddi.relationship_accessory (network_link_id)
    SELECT 
        link.system_id
    FROM muddi.network_link as link
    INNER JOIN import.gasline_live_distribution_main_pipe as import ON link.record_id = import.globalid
    RETURNING system_id, network_link_id
)
INSERT INTO muddi.protection (record_id, object_id, geom, asset_owner_id, utility_type, relationship_id, protection_type)
SELECT
    import.globalid,
    uuid_generate_v4(),
    import.shape,
    'Northern Gas Networks',
    'Gas',
    relationship.system_id,
    import.protectiontype
FROM relationship
INNER JOIN muddi.network_link AS link ON relationship.network_link_id = link.system_id
INNER JOIN import.gasline_live_distribution_main_pipe AS import ON link.record_id = import.globalid
WHERE import.protectiontype IS NOT NULL;

-- DROP STAGING TABLES (AFTER ALL DATA INGESTED)
DROP TABLE staging.nodes;
DROP TABLE staging.links;