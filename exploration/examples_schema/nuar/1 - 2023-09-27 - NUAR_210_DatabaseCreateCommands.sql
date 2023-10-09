 CREATE DATABASE local_nuar_210_ogc_sample WITH TEMPLATE = template0 ENCODING = 'UTF8'

ALTER DATABASE local_nuar_210_ogc_sample OWNER TO postgres; --deleted this one but i think we need it 

-- Run in the new local_nuar_210_ogc_sample database
CREATE EXTENSION IF NOT EXISTS postgis
    SCHEMA public
    VERSION "3.3.1";
