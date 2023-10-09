CREATE DATABASE local_nuar_210_ogc_sample WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';

ALTER DATABASE local_nuar_210_ogc_sample OWNER TO postgres;

-- Run in the new local_nuar_210_ogc_sample database
CREATE EXTENSION IF NOT EXISTS postgis
    SCHEMA public
    VERSION "3.3.1";
