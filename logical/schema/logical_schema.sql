CREATE SCHEMA muddi;

CREATE TABLE muddi.geotech_unit (
    system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
	object_id VARCHAR, 
    geom GEOMETRY NOT NULL,
    PRIMARY KEY (system_id)
);
CREATE INDEX muddi_geotech_unit_geom_idx ON muddi.geotech_unit USING GIST (geom);

CREATE TABLE muddi.chemical_unit(
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY (system_id)
);
CREATE INDEX muddi_chemical_unit_geom_idx ON muddi.chemical_unit USING GIST (geom);

CREATE TABLE muddi.hydro_unit (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY (system_id)
);
CREATE INDEX muddi_hydro_unit_geom_idx ON muddi.hydro_unit USING GIST (geom);

CREATE TABLE muddi.geologic_unit (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY (system_id)
);
CREATE INDEX muddi_geologic_unit_geom_idx ON muddi.geologic_unit USING GIST (geom);

CREATE TABLE muddi.network (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id VARCHAR,
    commodity_type VARCHAR,
    parent_network_id UUID,
    network_type VARCHAR,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_network_parent_network FOREIGN KEY (parent_network_id) REFERENCES muddi.network (system_id)
);
CREATE INDEX muddi_network_geom_idx ON muddi.network USING GIST (geom);

CREATE TABLE muddi.planning_area (
    system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    extent GEOMETRY,
    PRIMARY KEY(system_id)
);
CREATE INDEX muddi_planning_area_geom_idx ON muddi.planning_area USING GIST (geom);
CREATE INDEX muddi_planning_area_extent_idx ON muddi.planning_area USING GIST (extent);

CREATE TABLE muddi.site (
    system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    extent GEOMETRY,
    network_id UUID,
    sub_network_id UUID,
    subordinate_network_id UUID,
    PRIMARY KEY(system_id),
    CONSTRAINT fk_muddi_site_network FOREIGN KEY (network_id) REFERENCES muddi.network (system_id),
    CONSTRAINT fk_muddi_site_sub_network FOREIGN KEY (sub_network_id) REFERENCES muddi.network (system_id),
    CONSTRAINT fk_muddi_site_subordinate_network FOREIGN KEY (subordinate_network_id) REFERENCES muddi.network (system_id)
);
CREATE INDEX muddi_site_geom_idx ON muddi.site USING GIST (geom);
CREATE INDEX muddi_site_extent_idx ON muddi.site USING GIST (extent);

CREATE TABLE muddi.service_area (
    system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    extent GEOMETRY,
    network_id UUID,
    PRIMARY KEY(system_id),
    CONSTRAINT fk_muddi_service_area_network FOREIGN KEY (network_id) REFERENCES muddi.network (system_id)
);
CREATE INDEX muddi_service_area_geom_idx ON muddi.service_area USING GIST (geom);
CREATE INDEX muddi_service_area_extent_idx ON muddi.service_area USING GIST (extent);

CREATE TABLE muddi.network_node (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id VARCHAR,
    utility_type VARCHAR, 
    network_id UUID,
    sub_network_id UUID,
    subordinate_network_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_network_link_network FOREIGN KEY (network_id) REFERENCES muddi.network (system_id),
    CONSTRAINT fk_muddi_network_link_sub_network FOREIGN KEY (sub_network_id) REFERENCES muddi.network (system_id),
    CONSTRAINT fk_muddi_network_link_subordinate_network FOREIGN KEY (subordinate_network_id) REFERENCES muddi.network (system_id)
);
CREATE INDEX muddi_network_node_geom_idx ON muddi.network_node USING GIST (geom);

CREATE TABLE muddi.network_link (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id VARCHAR,
    utility_type VARCHAR, 
    network_node_to_id UUID,
    network_node_from_id UUID,
    network_id UUID,
    sub_network_id UUID,
    subordinate_network_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_network_link_network FOREIGN KEY (network_id) REFERENCES muddi.network (system_id),
    CONSTRAINT fk_muddi_network_link_sub_network FOREIGN KEY (sub_network_id) REFERENCES muddi.network (system_id),
    CONSTRAINT fk_muddi_network_link_subordinate_network FOREIGN KEY (subordinate_network_id) REFERENCES muddi.network (system_id),
    CONSTRAINT fk_muddi_network_link_node_to FOREIGN KEY (network_node_to_id) REFERENCES muddi.network_node (system_id),
    CONSTRAINT fk_muddi_network_link_node_from FOREIGN KEY (network_node_from_id) REFERENCES muddi.network_node (system_id)
);
CREATE INDEX muddi_network_link_geom_idx ON muddi.network_link USING GIST (geom);

CREATE TABLE muddi.relationship_accessory (
    system_id UUID DEFAULT uuid_generate_v4(),
    network_node_id UUID,
    network_link_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_relationship_accessory_network_node FOREIGN KEY (network_node_id) REFERENCES muddi.network_node (system_id),
    CONSTRAINT fk_muddi_relationship_accessory_network_link FOREIGN KEY (network_link_id) REFERENCES muddi.network_link (system_id)
);

CREATE TABLE muddi.structure (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    role VARCHAR,  
    asset_owner_id VARCHAR,
    relationship_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_structure_relationship_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_event (system_id)
);
CREATE INDEX muddi_structure_geom_idx ON muddi.structure USING GIST (geom);

CREATE TABLE muddi.access (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id VARCHAR,
    utility_type VARCHAR,
    relationship_id UUID, 
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_access_relationship_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_accessory (system_id)
);
CREATE INDEX muddi_access_geom_idx ON muddi.access USING GIST (geom);

CREATE TABLE muddi.protection (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id VARCHAR,
    utility_type VARCHAR, 
    relationship_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_protection_relationship_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_accessory (system_id)
);
CREATE INDEX muddi_protection_geom_idx ON muddi.protection USING GIST (geom);

CREATE TABLE muddi.container (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id VARCHAR,
    utility_type VARCHAR, 
    relationship_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_sensor_container_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_accessory (system_id)
);
CREATE INDEX muddi_container_geom_idx ON muddi.container USING GIST (geom);

CREATE TABLE muddi.support (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id VARCHAR,
    utility_type VARCHAR, 
    relationship_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_support_relationship_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_accessory (system_id)
);
CREATE INDEX muddi_support_geom_idx ON muddi.support USING GIST (geom);

CREATE TABLE muddi.sensor  (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id VARCHAR,
    utility_type VARCHAR, 
    relationship_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_sensor_relationship_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_accessory (system_id)
);
CREATE INDEX muddi_sensor_geom_idx ON muddi.sensor USING GIST (geom);

CREATE TABLE muddi.relationship_event (
    system_id UUID DEFAULT uuid_generate_v4(),
    geotech_unit_id UUID,
    chemical_unit_id UUID,
    hydro_unit_id UUID,
    geologic_unit_id UUID,
    structure_id UUID,
    access_id UUID,
    protection_id UUID,
    container_id UUID,
    support_id UUID,
    sensor_id UUID,
    network_node_id UUID,
    network_link_id UUID,
    network_id UUID,
    service_area_id UUID,
    site_id UUID,
    planning_area_id UUID,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_relationship_event_geotech_unit FOREIGN KEY (geotech_unit_id) REFERENCES muddi.geotech_unit (system_id),
    CONSTRAINT fk_muddi_relationship_event_chemical_unit FOREIGN KEY (chemical_unit_id) REFERENCES muddi.chemical_unit (system_id),
    CONSTRAINT fk_muddi_relationship_event_hydro_unit FOREIGN KEY (hydro_unit_id) REFERENCES muddi.hydro_unit (system_id),
    CONSTRAINT fk_muddi_relationship_event_geologic_unit FOREIGN KEY (geologic_unit_id) REFERENCES muddi.geologic_unit (system_id),
    CONSTRAINT fk_muddi_relationship_event_access FOREIGN KEY (access_id) REFERENCES muddi.access (system_id),
    CONSTRAINT fk_muddi_relationship_event_protection FOREIGN KEY (protection_id) REFERENCES muddi.protection (system_id),
    CONSTRAINT fk_muddi_relationship_event_container FOREIGN KEY (container_id) REFERENCES muddi.container (system_id),
    CONSTRAINT fk_muddi_relationship_event_support FOREIGN KEY (support_id) REFERENCES muddi.support (system_id),
    CONSTRAINT fk_muddi_relationship_event_sensor FOREIGN KEY (sensor_id) REFERENCES muddi.sensor (system_id),
    CONSTRAINT fk_muddi_relationship_event_network_node FOREIGN KEY (network_node_id) REFERENCES muddi.network_node (system_id),
    CONSTRAINT fk_muddi_relationship_event_network_link FOREIGN KEY (network_link_id) REFERENCES muddi.network_link (system_id),
    CONSTRAINT fk_muddi_relationship_event_network FOREIGN KEY (network_id) REFERENCES muddi.network (system_id),
    CONSTRAINT fk_muddi_relationship_event_service_area FOREIGN KEY (service_area_id) REFERENCES muddi.service_area (system_id),
    CONSTRAINT fk_muddi_relationship_event_site FOREIGN KEY (site_id) REFERENCES muddi.site (system_id),
    CONSTRAINT fk_muddi_relationship_event_planning_area FOREIGN KEY (planning_area_id) REFERENCES muddi.planning_area (system_id),
    CONSTRAINT fk_muddi_relationship_event_structure FOREIGN KEY (structure_id) REFERENCES muddi.structure (system_id)
);

CREATE TABLE muddi.observation (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY,
    relationship_id UUID,
    target_object VARCHAR,
    target_property VARCHAR,
    valid_time TIMESTAMP,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_observation_relationship_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_event (system_id)
);
CREATE INDEX muddi_observation_geom_idx ON muddi.observation USING GIST (geom);

CREATE TABLE muddi.denotation (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY,
    relationship_id UUID,
    target_object VARCHAR,
    target_property VARCHAR,
    valid_time TIMESTAMP,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_denotation_relationship_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_event (system_id)
);
CREATE INDEX muddi_denotation_geom_idx ON muddi.denotation USING GIST (geom);

CREATE TABLE muddi.action (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY,
    relationship_id UUID,
    target_object VARCHAR,
    target_property VARCHAR,
    valid_time TIMESTAMP,
    PRIMARY KEY (system_id),
    CONSTRAINT fk_muddi_action_relationship_event FOREIGN KEY (relationship_id) REFERENCES muddi.relationship_event (system_id)
);
CREATE INDEX muddi_action_geom_idx ON muddi.action USING GIST (geom);

COMMENT ON COLUMN muddi.geotech_unit.geom IS 'geom used in place of conceptual sf_geometry.';
