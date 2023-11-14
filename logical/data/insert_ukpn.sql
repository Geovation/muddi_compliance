--INGEST NETWORK
WITH network AS
    (INSERT INTO muddi.network (record_id, object_id, geom, asset_owner_id, commodity_type, network_type, network_name)
    SELECT 
        uuid_generate_v4(),
        uuid_generate_v4(),
        st_collect(wkb_geometry),
        'UK Power Networks',
        'electricity',
        'network',
        'UKPN'
    FROM import."33kv_overhead_lines" 
    RETURNING system_id 
)
INSERT INTO muddi.network (record_id, object_id, geom, asset_owner_id, commodity_type, parent_network_id, network_type, network_name)
SELECT 
    uuid_generate_v4(),
    uuid_generate_v4(),
    st_collect(import.wkb_geometry),
    'UK Power Networks',
    'electricity',
    system_id,
    'subnetwork',
    import.dno
FROM network, import."33kv_overhead_lines"  AS import
GROUP BY import.dno, system_id;

-- INGEST SERVICE AREAS
WITH service as (
    INSERT INTO muddi.service_area  (record_id, object_id, geom, extent, network_id)  
    SELECT
        uuid_generate_v4(),
        uuid_generate_v4(),
        st_convexhull(network.geom),
        st_extent(import.wkb_geometry),
        network.system_id
    FROM import."33kv_overhead_lines"  AS import,
    muddi.network AS network
    WHERE network.network_name = 'UKPN'
    GROUP BY network.geom, network.system_id
    RETURNING network_id
) 
INSERT INTO muddi.service_area  (record_id, object_id, geom, extent, network_id)  
SELECT
    uuid_generate_v4(),
    uuid_generate_v4(),
    st_convexhull(network.geom),
    st_extent(import.wkb_geometry),
    network.system_id
FROM service
INNER JOIN muddi.network AS network ON service.network_id = network.parent_network_id 
INNER JOIN import."33kv_overhead_lines"  AS import ON network.network_name = import.dno
GROUP BY network.geom, network.system_id;

-- CREATE NODE TABLE
CREATE TABLE staging.nodes AS
SELECT 
	gen_random_uuid() as record_id,
	'UKPN' AS network_name,
	dno AS sub_network_name,
	geom,
	'Joint' AS node_type,
	array_agg(leaving) AS leaving,
	array_agg(entering) AS entering
FROM (
  SELECT 
  	dno,
    ST_StartPoint(st_linemerge(wkb_geometry)) AS geom, 
    ogc_fid::varchar AS leaving,
    NULL::varchar AS entering
  FROM import."33kv_overhead_lines" 
  UNION ALL
  SELECT 
  	dno,
    ST_EndPoint(st_linemerge(wkb_geometry)) AS geom, 
    NULL::varchar AS leaving,
    ogc_fid::varchar AS entering
  FROM import."33kv_overhead_lines" 
) AS foo
GROUP BY geom, dno;

--INGEST NODES 
INSERT INTO muddi.network_node (record_id, object_id, geom, asset_owner_id, utility_type, network_id, sub_network_id, node_type)
SELECT 
    import.record_id,
    uuid_generate_v4(),
    import.geom,
    'UK Power Networks',
    'electricity',
    network.system_id,
    sub_network.system_id,
    import.node_type
FROM staging.nodes as import
join muddi.network as network on import.network_name = network.network_name
left join muddi.network as sub_network on (network.system_id = sub_network.parent_network_id and import.sub_network_name = sub_network.network_name);

-- CREATE LINK TABLE 
CREATE TABLE staging.links AS
SELECT
    link.ogc_fid::varchar AS record_id,
    link.wkb_geometry AS geom,
    'UKPN' AS network_name,
    link.dno as sub_network_name,
    'cable' AS conveyance_type,
    link.betr_spann AS voltage,
    link.ob_class as description,
    node1.nodeid::varchar AS node_to,
    node2.nodeid::varchar AS node_from
FROM import."33kv_overhead_lines"  AS link
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
 
--INGEST LINKS
INSERT INTO muddi.network_link (record_id, object_id, geom, asset_owner_id, utility_type, network_node_to_id, network_node_from_id, network_id, sub_network_id, conveyance_type, description, voltage)
SELECT 
    import.record_id,
    uuid_generate_v4(),
    import.geom,
    'UK Power Networks',
    'electricity',
    node_to.system_id,
   	node_from.system_id,
    network.system_id,
    sub_network.system_id,
    import.conveyance_type,
    import.description,
    import.voltage
FROM staging.links as import
INNER JOIN muddi.network as network on import.network_name = network.network_name
LEFT JOIN muddi.network as sub_network on (network.system_id = sub_network.parent_network_id and import.sub_network_name = sub_network.network_name)
INNER JOIN muddi.network_node as node_to on import.node_to=node_to.record_id 
INNER JOIN muddi.network_node as node_from on import.node_from=node_from.record_id ;

--DROP STAGING TABLES
DROP TABLE staging.nodes;
DROP TABLE staging.links;