--CREATE SCHEMA TO HOLD VIEWS
CREATE SCHEMA layers;

--ELECTRICITY LINKS
CREATE VIEW layers.electricity_links AS
SELECT
    object.id,
    network_link.conveyance_type,
    network_link.voltage,
    network.network_name as network_name,
    organisations.name as asset_owner,
    ST_Transform(object.sf_geometry, 4326) as sf_geometry
FROM muddi.object
INNER JOIN muddi.asset on object.id = asset.object_id
INNER JOIN muddi.network_asset on asset.id = network_asset.asset_id
INNER JOIN muddi.network_conveyance on network_asset.id = network_conveyance.network_asset_id
INNER JOIN muddi.network_link ON network_conveyance.id = network_link.network_conveyance_id
INNER JOIN muddi.network on network_conveyance.network_id = network.id
INNER JOIN muddi.organisations on asset.asset_owner_id = organisations.id
WHERE network_asset.utility_type = 'electricity';

--ELECTRICITY NODES
CREATE VIEW layers.electricity_nodes AS
SELECT
    object.id,
    network_node.node_type,
    network.network_name as network_name,
    organisations.name as asset_owner,
    ST_Transform(object.sf_geometry, 4326) as sf_geometry
FROM muddi.object
INNER JOIN muddi.asset on object.id = asset.object_id
INNER JOIN muddi.network_asset on asset.id = network_asset.asset_id
INNER JOIN muddi.network_conveyance on network_asset.id = network_conveyance.network_asset_id
INNER JOIN muddi.network_node ON network_conveyance.id = network_node.network_conveyance_id
INNER JOIN muddi.network on network_conveyance.network_id = network.id
INNER JOIN muddi.organisations on asset.asset_owner_id = organisations.id
WHERE network_asset.utility_type = 'electricity';

--ELECTRICITY NETWORKS
CREATE VIEW layers.electricity_networks AS
SELECT
    object.id,
    network.network_name,
    network.commodity_type,
    CASE 
        WHEN network.parent_network_id IS NOT NULL THEN True
        ELSE False
    END AS subnetwork,
    parent_network.network_name as parent_network_name,
    organisations.name as asset_owner,
    ST_Transform(object.sf_geometry, 4326) as sf_geometry
FROM muddi.object
INNER JOIN muddi.asset on object.id = asset.object_id
INNER JOIN muddi.network on asset.id = network.asset_id
LEFT JOIN muddi.network as parent_network on network.parent_network_id = parent_network.id
INNER JOIN muddi.organisations on asset.asset_owner_id = organisations.id
WHERE network.commodity_type = 'electricity';

--GAS LINKS
CREATE VIEW layers.gas_links AS
SELECT
    object.id,
    network_link.conveyance_type,
    network_link.material,
    network_link.diameter,
    network_link.diameter_units,
    network.network_name as network_name,
    organisations.name as asset_owner,
    ST_Transform(object.sf_geometry, 4326) as sf_geometry
FROM muddi.object
INNER JOIN muddi.asset on object.id = asset.object_id
INNER JOIN muddi.network_asset on asset.id = network_asset.asset_id
INNER JOIN muddi.network_conveyance on network_asset.id = network_conveyance.network_asset_id
INNER JOIN muddi.network_link ON network_conveyance.id = network_link.network_conveyance_id
INNER JOIN muddi.network on network_conveyance.network_id = network.id
INNER JOIN muddi.organisations on asset.asset_owner_id = organisations.id
WHERE network_asset.utility_type = 'gas';

--GAS NODES
CREATE VIEW layers.gas_nodes AS
SELECT
    object.id,
    network_node.node_type,
    network.network_name as network_name,
    organisations.name as asset_owner,
    ST_Transform(object.sf_geometry, 4326) as sf_geometry
FROM muddi.object
INNER JOIN muddi.asset on object.id = asset.object_id
INNER JOIN muddi.network_asset on asset.id = network_asset.asset_id
INNER JOIN muddi.network_conveyance on network_asset.id = network_conveyance.network_asset_id
INNER JOIN muddi.network_node ON network_conveyance.id = network_node.network_conveyance_id
INNER JOIN muddi.network on network_conveyance.network_id = network.id
INNER JOIN muddi.organisations on asset.asset_owner_id = organisations.id
WHERE network_asset.utility_type = 'gas';

--GAS NETWORKS
CREATE VIEW layers.gas_networks AS
SELECT
    object.id,
    network.network_name,
    network.commodity_type,
    CASE 
        WHEN network.parent_network_id IS NOT NULL THEN True
        ELSE False
    END AS subnetwork,
    parent_network.network_name as parent_network_name,
    organisations.name as asset_owner,
    ST_Transform(object.sf_geometry, 4326) as sf_geometry
FROM muddi.object
INNER JOIN muddi.asset on object.id = asset.object_id
INNER JOIN muddi.network on asset.id = network.asset_id
LEFT JOIN muddi.network as parent_network on network.parent_network_id = parent_network.id
INNER JOIN muddi.organisations on asset.asset_owner_id = organisations.id
WHERE network.commodity_type = 'gas';