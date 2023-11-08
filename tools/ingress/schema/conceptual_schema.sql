--SCHEMA CREATION
CREATE SCHEMA muddi;

CREATE TABLE muddi.organisations (
    id uuid DEFAULT uuid_generate_v4(),
    name varchar NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE muddi.data_sources (
    id uuid DEFAULT uuid_generate_v4(),
    name varchar NOT NULL, 
    organisation_id uuid,
    PRIMARY KEY (id), 
    CONSTRAINT fk_muddi_data_source_organisation FOREIGN KEY (organisation_id) REFERENCES muddi.organisations (id)
);

CREATE TABLE muddi.object (
    id uuid DEFAULT uuid_generate_v4(),
    record_id varchar,
    sf_geometry geometry NOT NULL,
    system_id uuid DEFAULT uuid_generate_v4(),
    feature_type varchar,
    data_source_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_object_data_source FOREIGN KEY (data_source_id) REFERENCES muddi.data_sources (id)
);

CREATE INDEX muddi_object_sf_geometry_idx
  ON muddi.object
  USING GIST (sf_geometry);

CREATE TABLE muddi.event (
	id uuid DEFAULT uuid_generate_v4(),
    target_object uuid,
    target_property varchar,
    valid_time timestamp,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_event_object FOREIGN KEY (target_object) REFERENCES muddi.object (id)
);

CREATE TABLE muddi.observation (
	id uuid DEFAULT uuid_generate_v4(),
    event_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_observation_event FOREIGN KEY (event_id) REFERENCES muddi.event (id)
);

CREATE TABLE muddi.denotation (
	id uuid DEFAULT uuid_generate_v4(),
    event_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_denotation_event FOREIGN KEY (event_id) REFERENCES muddi.event (id)
);

CREATE TABLE muddi.action (
	id uuid DEFAULT uuid_generate_v4(),
    event_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_action_event FOREIGN KEY (event_id) REFERENCES muddi.event (id)
);



CREATE TABLE muddi.asset (
	id uuid DEFAULT uuid_generate_v4(),
    asset_owner_id uuid,
    object_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_asset_object FOREIGN KEY (object_id) REFERENCES muddi.object (id),
    CONSTRAINT fk_muddi_asset_organisation FOREIGN KEY (asset_owner_id) REFERENCES muddi.organisations (id)
);

CREATE TABLE muddi.network (
	id uuid DEFAULT uuid_generate_v4(),
    commodity_type varchar,
    network_name varchar,
    parent_network_id uuid,
    asset_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_network_asset FOREIGN KEY (asset_id) REFERENCES muddi.asset (id),
    CONSTRAINT fk_muddi_network_network FOREIGN KEY (parent_network_id) REFERENCES muddi.network (id)
);

CREATE TABLE muddi.network_asset (
	id uuid DEFAULT uuid_generate_v4(),
    utility_type varchar,
    asset_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_network_asset_asset FOREIGN KEY (asset_id) REFERENCES muddi.asset (id)
);

CREATE TABLE muddi.network_conveyance (
	id uuid DEFAULT uuid_generate_v4(),
    network_asset_id uuid,
    network_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_network_conveyance_network_asset FOREIGN KEY (network_asset_id) REFERENCES muddi.network_asset (id),
    CONSTRAINT fk_muddi_network_conveyance_network FOREIGN KEY (network_id) REFERENCES muddi.network (id)
);

CREATE TABLE muddi.network_node (
	id uuid DEFAULT uuid_generate_v4(),
    network_conveyance_id uuid,
    node_type varchar,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_network_node_network_conveyance FOREIGN KEY (network_conveyance_id) REFERENCES muddi.network_conveyance (id)
);

CREATE TABLE muddi.network_link (
	id uuid DEFAULT uuid_generate_v4(),
    network_conveyance_id uuid,
    network_node_to_id uuid,
    network_node_from_id uuid,
    conveyance_type varchar,
    voltage varchar,
    material varchar,
    diameter double precision,
    diameter_units varchar,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_network_link_network_conveyance FOREIGN KEY (network_conveyance_id) REFERENCES muddi.network_conveyance (id),
    CONSTRAINT fk_muddi_network_link_network_node_to FOREIGN KEY (network_node_to_id) REFERENCES muddi.network_node (id),
    CONSTRAINT fk_muddi_network_link_network_node_from FOREIGN KEY (network_node_from_id) REFERENCES muddi.network_node (id)
);

CREATE TABLE muddi.network_accessory (
	id uuid DEFAULT uuid_generate_v4(),
    network_asset_id uuid,
    network_conveyance_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_network_accessory_network_asset FOREIGN KEY (network_asset_id) REFERENCES muddi.network_asset (id),
    CONSTRAINT fk_muddi_network_accessory_network_conveyance FOREIGN KEY (network_conveyance_id) REFERENCES muddi.network_conveyance (id)
);

CREATE TABLE muddi.access (
	id uuid DEFAULT uuid_generate_v4(),
    network_accessory_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_access_network_accessory FOREIGN KEY (network_accessory_id) REFERENCES muddi.network_accessory (id)
);

CREATE TABLE muddi.protection (
	id uuid DEFAULT uuid_generate_v4(),
    network_accessory_id uuid,
    protection_type varchar,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_protection_network_accessory FOREIGN KEY (network_accessory_id) REFERENCES muddi.network_accessory (id)
);

CREATE TABLE muddi.container (
	id uuid DEFAULT uuid_generate_v4(),
    network_accessory_id uuid,
    container_type varchar,
    material varchar,
    diameter double precision,
    diameter_units varchar,
    sdr double precision,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_container_network_accessory FOREIGN KEY (network_accessory_id) REFERENCES muddi.network_accessory (id)
);

CREATE TABLE muddi.support (
	id uuid DEFAULT uuid_generate_v4(),
    network_accessory_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_support_network_accessory FOREIGN KEY (network_accessory_id) REFERENCES muddi.network_accessory (id)
);

CREATE TABLE muddi.sensor (
	id uuid DEFAULT uuid_generate_v4(),
    network_accessory_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_sensor_network_accessory FOREIGN KEY (network_accessory_id) REFERENCES muddi.network_accessory (id)
);

CREATE TABLE muddi.structure (
	id uuid DEFAULT uuid_generate_v4(),
    role varchar,
    asset_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_structure_asset FOREIGN KEY (asset_id) REFERENCES muddi.asset (id)
);

CREATE TABLE muddi.environment_unit (
	id uuid DEFAULT uuid_generate_v4(),
    boundary geometry,
    object_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_environment_unit_object FOREIGN KEY (object_id) REFERENCES muddi.object (id)
);

CREATE TABLE muddi.geotech_unit (
	id uuid DEFAULT uuid_generate_v4(),
    environment_unit_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_geotech_unit_environment_unit FOREIGN KEY (environment_unit_id) REFERENCES muddi.environment_unit (id)
);

CREATE TABLE muddi.chemical_unit (
	id uuid DEFAULT uuid_generate_v4(),
    environment_unit_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_chemical_unit_environment_unit FOREIGN KEY (environment_unit_id) REFERENCES muddi.environment_unit (id)
);

CREATE TABLE muddi.hydro_unit (
	id uuid DEFAULT uuid_generate_v4(),
    environment_unit_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_hydro_unit_environment_unit FOREIGN KEY (environment_unit_id) REFERENCES muddi.environment_unit (id)
);

CREATE TABLE muddi.geologic_unit (
	id uuid DEFAULT uuid_generate_v4(),
    environment_unit_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_geologic_unit_environment_unit FOREIGN KEY (environment_unit_id) REFERENCES muddi.environment_unit (id)
);

CREATE TABLE muddi.space (
    id uuid DEFAULT uuid_generate_v4(),
    object_id uuid,
    extent geometry,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_space_object FOREIGN KEY (object_id) REFERENCES muddi.object (id)
);

CREATE TABLE muddi.planning_area (
	id uuid DEFAULT uuid_generate_v4(),
    space_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_planning_area_space FOREIGN KEY (space_id) REFERENCES muddi.space (id)
);

CREATE TABLE muddi.site (
	id uuid DEFAULT uuid_generate_v4(),
    space_id uuid,
    network_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_site_space FOREIGN KEY (space_id) REFERENCES muddi.space (id),
    CONSTRAINT fk_muddi_site_network FOREIGN KEY (network_id) REFERENCES muddi.network (id)
);

CREATE TABLE muddi.service_area (
	id uuid DEFAULT uuid_generate_v4(),
    space_id uuid,
    network_id uuid,
    PRIMARY KEY (id),
    CONSTRAINT fk_muddi_service_area_space FOREIGN KEY (space_id) REFERENCES muddi.space (id),
    CONSTRAINT fk_muddi_service_area_network FOREIGN KEY (network_id) REFERENCES muddi.network (id)
);

CREATE SCHEMA staging;