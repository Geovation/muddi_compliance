--CREATE SCHEMA TO HOLD VIEWS
CREATE SCHEMA layers;

--ELECTRICITY LINKS
CREATE MATERIALIZED VIEW layers.electricity_links AS
SELECT
    network_link.system_id,
    network_link.conveyance_type,
    network_link.voltage,
    network.network_name as network_name,
    sub_network.network_name AS sub_network_name,
    subordinate_network.network_name AS subordinate_network_name,
    network_link.asset_owner_id as asset_owner,
    ST_Transform(network_link.geom, 4326) AS sf_geometry
FROM muddi.network_link 
INNER JOIN muddi.network on network_link.network_id = network.system_id
LEFT JOIN muddi.network AS sub_network on network_link.sub_network_id = sub_network.system_id
LEFT JOIN muddi.network AS subordinate_network on network_link.subordinate_network_id = subordinate_network.system_id
WHERE network_link.utility_type = 'electricity';


--ELECTRICITY NODES
CREATE MATERIALIZED VIEW layers.electricity_nodes AS
SELECT
    network_node.system_id,
    network_node.node_type,
    network.network_name AS network_name,
    sub_network.network_name AS sub_network_name,
    subordinate_network.network_name AS subordinate_network_name,
    network_node.asset_owner_id AS asset_owner,
    ST_Transform(network_node.geom, 4326) AS sf_geometry
FROM muddi.network_node
INNER JOIN muddi.network ON network_node.network_id = network.system_id
LEFT JOIN muddi.network AS sub_network ON network_node.sub_network_id = sub_network.system_id
LEFT JOIN muddi.network AS subordinate_network ON network_node.subordinate_network_id = subordinate_network.system_id
WHERE network_node.utility_type = 'electricity';

--ELECTRICITY NETWORKS
CREATE MATERIALIZED VIEW layers.electricity_networks AS
SELECT
    network.system_id,
    network.network_name,
    network.commodity_type,
    network.network_type,
    parent_network.network_name as parent_network_name,
    network.asset_owner_id as asset_owner,
    ST_Transform(network.geom, 4326) as sf_geometry
FROM muddi.network
LEFT JOIN muddi.network as parent_network on network.parent_network_id = parent_network.system_id
WHERE network.commodity_type = 'electricity';

--ELECTRICITY SERVICE AREA
CREATE MATERIALIZED VIEW layers.electricity_service_area AS
SELECT
    service_area.system_id,
    network.network_name,
    network.commodity_type,
    network.network_type,
    parent_network.network_name as parent_network_name,
    network.asset_owner_id as asset_owner,
    ST_Transform(service_area.geom, 4326) as sf_geometry
FROM muddi.service_area
LEFT JOIN muddi.network ON service_area.network_id = network.system_id
LEFT JOIN muddi.network as parent_network on network.parent_network_id = parent_network.system_id
WHERE network.commodity_type = 'electricity';

--GAS LINKS
CREATE MATERIALIZED VIEW layers.gas_links AS
SELECT
    network_link.system_id,
    network_link.conveyance_type,
    network_link.material,
    network_link.diameter,
    network_link.diameter_units,
    network.network_name as network_name,
    sub_network.network_name AS sub_network_name,
    subordinate_network.network_name AS subordinate_network_name,
    network_link.asset_owner_id as asset_owner,
    ST_Transform(network_link.geom, 4326) AS sf_geometry
FROM muddi.network_link 
INNER JOIN muddi.network on network_link.network_id = network.system_id
LEFT JOIN muddi.network AS sub_network on network_link.sub_network_id = sub_network.system_id
LEFT JOIN muddi.network AS subordinate_network on network_link.subordinate_network_id = subordinate_network.system_id
WHERE network_link.utility_type = 'gas';


--GAS NODES
CREATE MATERIALIZED VIEW layers.gas_nodes AS
SELECT
    network_node.system_id,
    network_node.node_type,
    network.network_name AS network_name,
    sub_network.network_name AS sub_network_name,
    subordinate_network.network_name AS subordinate_network_name,
    network_node.asset_owner_id AS asset_owner,
    ST_Transform(network_node.geom, 4326) AS sf_geometry
FROM muddi.network_node
INNER JOIN muddi.network ON network_node.network_id = network.system_id
LEFT JOIN muddi.network AS sub_network ON network_node.sub_network_id = sub_network.system_id
LEFT JOIN muddi.network AS subordinate_network ON network_node.subordinate_network_id = subordinate_network.system_id
WHERE network_node.utility_type = 'gas';

--GAS NETWORKS
CREATE MATERIALIZED VIEW layers.gas_networks AS
SELECT
    network.system_id,
    network.network_name,
    network.commodity_type,
    network.network_type,
    parent_network.network_name as parent_network_name,
    network.asset_owner_id as asset_owner,
    ST_Transform(network.geom, 4326) as sf_geometry
FROM muddi.network
LEFT JOIN muddi.network as parent_network on network.parent_network_id = parent_network.system_id
WHERE network.commodity_type = 'gas';

--GAS SERVICE AREA
CREATE MATERIALIZED VIEW layers.gas_service_area AS
SELECT
    service_area.system_id,
    network.network_name,
    network.commodity_type,
    network.network_type,
    parent_network.network_name as parent_network_name,
    network.asset_owner_id as asset_owner,
    ST_Transform(service_area.geom, 4326) as sf_geometry
FROM muddi.service_area
LEFT JOIN muddi.network ON service_area.network_id = network.system_id
LEFT JOIN muddi.network as parent_network on network.parent_network_id = parent_network.system_id
WHERE network.commodity_type = 'gas';

-- Views Indexes
 
CREATE INDEX layers_electricity_links_sf_geometry_idx
  ON layers.electricity_links
  USING GIST (sf_geometry);
  
CREATE INDEX layers_electricity_networks_sf_geometry_idx
  ON layers.electricity_networks
  USING GIST (sf_geometry);
  
CREATE INDEX layers_electricity_nodes_sf_geometry_idx
  ON layers.electricity_nodes
  USING GIST (sf_geometry);
  
CREATE INDEX layers_electricity_service_area_sf_geometry_idx
  ON layers.electricity_service_area
  USING GIST (sf_geometry);
  
CREATE INDEX layers_gas_links_sf_geometry_idx
  ON layers.gas_links
  USING GIST (sf_geometry);
  
CREATE INDEX layers_gas_networks_sf_geometry_idx
  ON layers.gas_networks
  USING GIST (sf_geometry);
  
CREATE INDEX layers_gas_nodes_sf_geometry_idx
  ON layers.gas_nodes
  USING GIST (sf_geometry);
  
CREATE INDEX layers_gas_service_area_sf_geometry_idx
  ON layers.gas_service_area
  USING GIST (sf_geometry);