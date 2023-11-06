CREATE TABLE muddi.observation (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    target_object VARCHAR,
    target_property VARCHAR,
    valid_time TIMESTAMP,
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.denotation (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    target_object VARCHAR,
    target_property VARCHAR,
    valid_time TIMESTAMP,
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.action (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    target_object VARCHAR,
    target_property VARCHAR,
    valid_time TIMESTAMP,
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.geotech_unit (
    system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
	object_id VARCHAR, 
    geom GEOMETRY NOT NULL,
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.chemical_unit(
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.hydro_unit (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.geological_unit (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.structure (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    role VARCHAR,  
    asset_owner_id VARCHAR,
    PRIMARY KEY (system_id)
    );



CREATE TABLE muddi.access (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id UUID,
    utility_type varchar, 
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.protection (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id UUID,
    utility_type varchar, 
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.container (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id UUID,
    utility_type varchar, 
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.support (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id UUID,
    utility_type varchar, 
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.sensor  (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id UUID,
    utility_type varchar, 
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.network_node (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id UUID,
    utility_type varchar, 
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.network_link (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id UUID,
    utility_type varchar, 
    PRIMARY KEY (system_id)
);

CREATE TABLE muddi.network (
	system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    asset_owner_id UUID,
    commodity_type varchar, 
    PRIMARY KEY (system_id)
);


CREATE TABLE muddi.planning_area (
    system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY(system_id)
);

CREATE TABLE muddi.site (
    system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY(system_id)
);

CREATE TABLE muddi.service_area (
    system_id UUID DEFAULT uuid_generate_v4(),
    record_id VARCHAR,
    object_id VARCHAR,
    geom GEOMETRY NOT NULL,
    PRIMARY KEY(system_id)
);