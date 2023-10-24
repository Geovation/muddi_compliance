CREATE SCHEMA layers;

CREATE VIEW layers.electricity_lines AS
SELECT
    object.id,
    network_link.conveyance_type,
    network_link.voltage,
    network.network_name as network_name,
    organisations.name as asset_owner,
    object.sf_geometry

FROM muddi.object
INNER JOIN muddi.asset on object.id = asset.object_id
INNER JOIN muddi.network_asset on asset.id = network_asset.asset_id
INNER JOIN muddi.network_conveyance on network_asset.id = network_conveyance.network_asset_id
INNER JOIN muddi.network_link ON network_conveyance.id = network_link.network_conveyance_id
INNER JOIN muddi.network on network_conveyance.network_id = network.id
INNER JOIN muddi.organisations on asset.asset_owner_id = organisations.id
WHERE network_asset.utility_type = 'electricity';

CREATE VIEW layers.electricity_nodes AS
SELECT
    object.id,
    network_node.node_type,
    network.network_name as network_name,
    organisations.name as asset_owner,
    object.sf_geometry

FROM muddi.object
INNER JOIN muddi.asset on object.id = asset.object_id
INNER JOIN muddi.network_asset on asset.id = network_asset.asset_id
INNER JOIN muddi.network_conveyance on network_asset.id = network_conveyance.network_asset_id
INNER JOIN muddi.network_node ON network_conveyance.id = network_node.network_conveyance_id
INNER JOIN muddi.network on network_conveyance.network_id = network.id
INNER JOIN muddi.organisations on asset.asset_owner_id = organisations.id
WHERE network_asset.utility_type = 'electricity';