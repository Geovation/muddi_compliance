--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.4 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: nuarcodelists_datamanagement; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuarcodelists_datamanagement;


ALTER SCHEMA nuarcodelists_datamanagement OWNER TO sds_admin;

--
-- Name: nuarcodelists_platform; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuarcodelists_platform;


ALTER SCHEMA nuarcodelists_platform OWNER TO sds_admin;

--
-- Name: nuarcodelists_transformation; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuarcodelists_transformation;


ALTER SCHEMA nuarcodelists_transformation OWNER TO sds_admin;

--
-- Name: nuarcustombackdrop; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuarcustombackdrop;


ALTER SCHEMA nuarcustombackdrop OWNER TO sds_admin;

--
-- Name: nuardata; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuardata;


ALTER SCHEMA nuardata OWNER TO sds_admin;

--
-- Name: nuarorganisations; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuarorganisations;


ALTER SCHEMA nuarorganisations OWNER TO sds_admin;

--
-- Name: nuarsubmissions; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuarsubmissions;


ALTER SCHEMA nuarsubmissions OWNER TO sds_admin;

--
-- Name: nuarusercreateddata; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuarusercreateddata;


ALTER SCHEMA nuarusercreateddata OWNER TO sds_admin;

--
-- Name: nuarversion; Type: SCHEMA; Schema: -; Owner: sds_admin
--

CREATE SCHEMA nuarversion;


ALTER SCHEMA nuarversion OWNER TO sds_admin;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: azure_pg_admin
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO azure_pg_admin;

--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: datasettypevalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.datasettypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.datasettypevalue OWNER TO sds_admin;

--
-- Name: lifecyclestatusvalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.lifecyclestatusvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.lifecyclestatusvalue OWNER TO sds_admin;

--
-- Name: publicationresultvalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.publicationresultvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.publicationresultvalue OWNER TO sds_admin;

--
-- Name: publicationstagestatusvalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.publicationstagestatusvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.publicationstagestatusvalue OWNER TO sds_admin;

--
-- Name: publicationstagevalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.publicationstagevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.publicationstagevalue OWNER TO sds_admin;

--
-- Name: publicationstatusvalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.publicationstatusvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.publicationstatusvalue OWNER TO sds_admin;

--
-- Name: submissionreplacementscopevalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.submissionreplacementscopevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.submissionreplacementscopevalue OWNER TO sds_admin;

--
-- Name: submissionresultvalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.submissionresultvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.submissionresultvalue OWNER TO sds_admin;

--
-- Name: submissionstatusvalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.submissionstatusvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.submissionstatusvalue OWNER TO sds_admin;

--
-- Name: submissiontypevalue; Type: TABLE; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

CREATE TABLE nuarcodelists_datamanagement.submissiontypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_datamanagement.submissiontypevalue OWNER TO sds_admin;

--
-- Name: activitytypevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.activitytypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    activitytypecategory text
);


ALTER TABLE nuarcodelists_platform.activitytypevalue OWNER TO sds_admin;

--
-- Name: activitytypevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.activitytypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text,
    activitytypecategory_original text NOT NULL,
    activitytypecategory_translated text
);


ALTER TABLE nuarcodelists_platform.activitytypevalue_translated OWNER TO sds_admin;

--
-- Name: actortypevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.actortypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.actortypevalue OWNER TO sds_admin;

--
-- Name: actortypevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.actortypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.actortypevalue_translated OWNER TO sds_admin;

--
-- Name: annotationhorizontalalignmentvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.annotationhorizontalalignmentvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.annotationhorizontalalignmentvalue OWNER TO sds_admin;

--
-- Name: annotationhorizontalalignmentvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.annotationhorizontalalignmentvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.annotationhorizontalalignmentvalue_translated OWNER TO sds_admin;

--
-- Name: annotationverticalalignmentvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.annotationverticalalignmentvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.annotationverticalalignmentvalue OWNER TO sds_admin;

--
-- Name: annotationverticalalignmentvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.annotationverticalalignmentvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.annotationverticalalignmentvalue_translated OWNER TO sds_admin;

--
-- Name: coveragetypevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.coveragetypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.coveragetypevalue OWNER TO sds_admin;

--
-- Name: coveragetypevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.coveragetypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.coveragetypevalue_translated OWNER TO sds_admin;

--
-- Name: datasensitivitylevelvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.datasensitivitylevelvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.datasensitivitylevelvalue OWNER TO sds_admin;

--
-- Name: datasensitivitylevelvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.datasensitivitylevelvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.datasensitivitylevelvalue_translated OWNER TO sds_admin;

--
-- Name: dataservicetypevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.dataservicetypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.dataservicetypevalue OWNER TO sds_admin;

--
-- Name: dataservicetypevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.dataservicetypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.dataservicetypevalue_translated OWNER TO sds_admin;

--
-- Name: enhancedmeasurestypevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.enhancedmeasurestypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.enhancedmeasurestypevalue OWNER TO sds_admin;

--
-- Name: enhancedmeasurestypevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.enhancedmeasurestypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.enhancedmeasurestypevalue_translated OWNER TO sds_admin;

--
-- Name: measurementunitsvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.measurementunitsvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.measurementunitsvalue OWNER TO sds_admin;

--
-- Name: measurementunitsvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.measurementunitsvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.measurementunitsvalue_translated OWNER TO sds_admin;

--
-- Name: nationalorregionalcoveragevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.nationalorregionalcoveragevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.nationalorregionalcoveragevalue OWNER TO sds_admin;

--
-- Name: nationalorregionalcoveragevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.nationalorregionalcoveragevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.nationalorregionalcoveragevalue_translated OWNER TO sds_admin;

--
-- Name: observationcategoryvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationcategoryvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.observationcategoryvalue OWNER TO sds_admin;

--
-- Name: observationcategoryvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationcategoryvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.observationcategoryvalue_translated OWNER TO sds_admin;

--
-- Name: observationfeedbackratingvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationfeedbackratingvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.observationfeedbackratingvalue OWNER TO sds_admin;

--
-- Name: observationfeedbackratingvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationfeedbackratingvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.observationfeedbackratingvalue_translated OWNER TO sds_admin;

--
-- Name: observationimpactvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationimpactvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.observationimpactvalue OWNER TO sds_admin;

--
-- Name: observationimpactvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationimpactvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.observationimpactvalue_translated OWNER TO sds_admin;

--
-- Name: observationsharingscopeprimaryvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationsharingscopeprimaryvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.observationsharingscopeprimaryvalue OWNER TO sds_admin;

--
-- Name: observationsharingscopeprimaryvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationsharingscopeprimaryvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.observationsharingscopeprimaryvalue_translated OWNER TO sds_admin;

--
-- Name: observationsharingscopesecondaryvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationsharingscopesecondaryvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.observationsharingscopesecondaryvalue OWNER TO sds_admin;

--
-- Name: observationsharingscopesecondaryvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationsharingscopesecondaryvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.observationsharingscopesecondaryvalue_translated OWNER TO sds_admin;

--
-- Name: observationvisibilitystatusvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationvisibilitystatusvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.observationvisibilitystatusvalue OWNER TO sds_admin;

--
-- Name: observationvisibilitystatusvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.observationvisibilitystatusvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.observationvisibilitystatusvalue_translated OWNER TO sds_admin;

--
-- Name: operationalstatusvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.operationalstatusvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.operationalstatusvalue OWNER TO sds_admin;

--
-- Name: operationalstatusvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.operationalstatusvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.operationalstatusvalue_translated OWNER TO sds_admin;

--
-- Name: organisationtypevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.organisationtypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.organisationtypevalue OWNER TO sds_admin;

--
-- Name: organisationtypevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.organisationtypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.organisationtypevalue_translated OWNER TO sds_admin;

--
-- Name: qualitylevelvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.qualitylevelvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.qualitylevelvalue OWNER TO sds_admin;

--
-- Name: qualitylevelvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.qualitylevelvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.qualitylevelvalue_translated OWNER TO sds_admin;

--
-- Name: serviceareapurposevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.serviceareapurposevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.serviceareapurposevalue OWNER TO sds_admin;

--
-- Name: serviceareapurposevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.serviceareapurposevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.serviceareapurposevalue_translated OWNER TO sds_admin;

--
-- Name: undergroundstatusvalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.undergroundstatusvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_platform.undergroundstatusvalue OWNER TO sds_admin;

--
-- Name: undergroundstatusvalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.undergroundstatusvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.undergroundstatusvalue_translated OWNER TO sds_admin;

--
-- Name: utilitytypevalue; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.utilitytypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_platform.utilitytypevalue OWNER TO sds_admin;

--
-- Name: utilitytypevalue_translated; Type: TABLE; Schema: nuarcodelists_platform; Owner: sds_admin
--

CREATE TABLE nuarcodelists_platform.utilitytypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_platform.utilitytypevalue_translated OWNER TO sds_admin;

--
-- Name: accesstypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.accesstypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.accesstypevalue OWNER TO sds_admin;

--
-- Name: accesstypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.accesstypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.accesstypevalue_translated OWNER TO sds_admin;

--
-- Name: assettovov_linkedassettablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.assettovov_linkedassettablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.assettovov_linkedassettablevalue OWNER TO sds_admin;

--
-- Name: assettovov_linkedvovtablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.assettovov_linkedvovtablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.assettovov_linkedvovtablevalue OWNER TO sds_admin;

--
-- Name: contactdetailstypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.contactdetailstypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.contactdetailstypevalue OWNER TO sds_admin;

--
-- Name: contactdetailstypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.contactdetailstypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.contactdetailstypevalue_translated OWNER TO sds_admin;

--
-- Name: containertypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.containertypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.containertypevalue OWNER TO sds_admin;

--
-- Name: containertypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.containertypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.containertypevalue_translated OWNER TO sds_admin;

--
-- Name: conveyancecategoryvalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.conveyancecategoryvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.conveyancecategoryvalue OWNER TO sds_admin;

--
-- Name: conveyancecategoryvalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.conveyancecategoryvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.conveyancecategoryvalue_translated OWNER TO sds_admin;

--
-- Name: conveyancemethodvalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.conveyancemethodvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.conveyancemethodvalue OWNER TO sds_admin;

--
-- Name: conveyancemethodvalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.conveyancemethodvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.conveyancemethodvalue_translated OWNER TO sds_admin;

--
-- Name: conveyancetoaccessory_linkedaccessorytablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.conveyancetoaccessory_linkedaccessorytablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.conveyancetoaccessory_linkedaccessorytablevalue OWNER TO sds_admin;

--
-- Name: conveyancetoaccessory_linkedconveyancetablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.conveyancetoaccessory_linkedconveyancetablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.conveyancetoaccessory_linkedconveyancetablevalue OWNER TO sds_admin;

--
-- Name: depthmethodvalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.depthmethodvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.depthmethodvalue OWNER TO sds_admin;

--
-- Name: depthmethodvalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.depthmethodvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.depthmethodvalue_translated OWNER TO sds_admin;

--
-- Name: designationpurposevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.designationpurposevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.designationpurposevalue OWNER TO sds_admin;

--
-- Name: designationpurposevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.designationpurposevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.designationpurposevalue_translated OWNER TO sds_admin;

--
-- Name: featuretypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.featuretypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.featuretypevalue OWNER TO sds_admin;

--
-- Name: featuretypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.featuretypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.featuretypevalue_translated OWNER TO sds_admin;

--
-- Name: guidance_linkedobjecttablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.guidance_linkedobjecttablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.guidance_linkedobjecttablevalue OWNER TO sds_admin;

--
-- Name: horizontalmeasurementmethodvalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.horizontalmeasurementmethodvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.horizontalmeasurementmethodvalue OWNER TO sds_admin;

--
-- Name: horizontalmeasurementmethodvalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.horizontalmeasurementmethodvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.horizontalmeasurementmethodvalue_translated OWNER TO sds_admin;

--
-- Name: installationmethodtypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.installationmethodtypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.installationmethodtypevalue OWNER TO sds_admin;

--
-- Name: installationmethodtypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.installationmethodtypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.installationmethodtypevalue_translated OWNER TO sds_admin;

--
-- Name: intendedpermanencevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.intendedpermanencevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.intendedpermanencevalue OWNER TO sds_admin;

--
-- Name: intendedpermanencevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.intendedpermanencevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.intendedpermanencevalue_translated OWNER TO sds_admin;

--
-- Name: linkedfile_linkedobjecttablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.linkedfile_linkedobjecttablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.linkedfile_linkedobjecttablevalue OWNER TO sds_admin;

--
-- Name: linktolinkzoi_linkedlinkedzoneofinteresttablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.linktolinkzoi_linkedlinkedzoneofinteresttablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.linktolinkzoi_linkedlinkedzoneofinteresttablevalue OWNER TO sds_admin;

--
-- Name: linktolinkzoi_linkedlinktablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.linktolinkzoi_linkedlinktablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.linktolinkzoi_linkedlinktablevalue OWNER TO sds_admin;

--
-- Name: localereferencetypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.localereferencetypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.localereferencetypevalue OWNER TO sds_admin;

--
-- Name: localereferencetypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.localereferencetypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.localereferencetypevalue_translated OWNER TO sds_admin;

--
-- Name: locationtypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.locationtypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.locationtypevalue OWNER TO sds_admin;

--
-- Name: locationtypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.locationtypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.locationtypevalue_translated OWNER TO sds_admin;

--
-- Name: materialgradevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.materialgradevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.materialgradevalue OWNER TO sds_admin;

--
-- Name: materialgradevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.materialgradevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.materialgradevalue_translated OWNER TO sds_admin;

--
-- Name: materialvalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.materialvalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.materialvalue OWNER TO sds_admin;

--
-- Name: materialvalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.materialvalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.materialvalue_translated OWNER TO sds_admin;

--
-- Name: networkaccessorytypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networkaccessorytypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networkaccessorytypevalue OWNER TO sds_admin;

--
-- Name: networkaccessorytypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networkaccessorytypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.networkaccessorytypevalue_translated OWNER TO sds_admin;

--
-- Name: networkdescriptiontypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networkdescriptiontypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networkdescriptiontypevalue OWNER TO sds_admin;

--
-- Name: networkdescriptiontypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networkdescriptiontypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.networkdescriptiontypevalue_translated OWNER TO sds_admin;

--
-- Name: networklinkcomponenttypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networklinkcomponenttypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networklinkcomponenttypevalue OWNER TO sds_admin;

--
-- Name: networklinkcomponenttypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networklinkcomponenttypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.networklinkcomponenttypevalue_translated OWNER TO sds_admin;

--
-- Name: networknodecomponenttypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networknodecomponenttypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networknodecomponenttypevalue OWNER TO sds_admin;

--
-- Name: networknodecomponenttypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networknodecomponenttypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.networknodecomponenttypevalue_translated OWNER TO sds_admin;

--
-- Name: networktoconveyance_linkedconveyancetablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktoconveyance_linkedconveyancetablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktoconveyance_linkedconveyancetablevalue OWNER TO sds_admin;

--
-- Name: networktoconveyance_linkednetworktablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktoconveyance_linkednetworktablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktoconveyance_linkednetworktablevalue OWNER TO sds_admin;

--
-- Name: networktoservicearea_linkednetworktablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktoservicearea_linkednetworktablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktoservicearea_linkednetworktablevalue OWNER TO sds_admin;

--
-- Name: networktoservicearea_linkedserviceareatablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktoservicearea_linkedserviceareatablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktoservicearea_linkedserviceareatablevalue OWNER TO sds_admin;

--
-- Name: networktosite_linkednetworktablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktosite_linkednetworktablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktosite_linkednetworktablevalue OWNER TO sds_admin;

--
-- Name: networktosite_linkedsitetablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktosite_linkedsitetablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktosite_linkedsitetablevalue OWNER TO sds_admin;

--
-- Name: networktosubnetwork_linkednetworktablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktosubnetwork_linkednetworktablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktosubnetwork_linkednetworktablevalue OWNER TO sds_admin;

--
-- Name: networktosubnetwork_linkedsubnetworktablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktosubnetwork_linkedsubnetworktablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktosubnetwork_linkedsubnetworktablevalue OWNER TO sds_admin;

--
-- Name: networktosubordinatenetwork_linkednetworktablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktosubordinatenetwork_linkednetworktablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktosubordinatenetwork_linkednetworktablevalue OWNER TO sds_admin;

--
-- Name: networktosubordinatenetwork_linkedsubordinatenetworktablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.networktosubordinatenetwork_linkedsubordinatenetworktablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.networktosubordinatenetwork_linkedsubordinatenetworktablevalue OWNER TO sds_admin;

--
-- Name: nodetonodezoi_linkednodetablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.nodetonodezoi_linkednodetablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.nodetonodezoi_linkednodetablevalue OWNER TO sds_admin;

--
-- Name: nodetonodezoi_linkednodezoneofinteresttablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.nodetonodezoi_linkednodezoneofinteresttablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.nodetonodezoi_linkednodezoneofinteresttablevalue OWNER TO sds_admin;

--
-- Name: nonutilityobjecttypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.nonutilityobjecttypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.nonutilityobjecttypevalue OWNER TO sds_admin;

--
-- Name: nonutilityobjecttypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.nonutilityobjecttypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.nonutilityobjecttypevalue_translated OWNER TO sds_admin;

--
-- Name: operatingconveyanceleveltypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.operatingconveyanceleveltypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.operatingconveyanceleveltypevalue OWNER TO sds_admin;

--
-- Name: operatingconveyanceleveltypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.operatingconveyanceleveltypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.operatingconveyanceleveltypevalue_translated OWNER TO sds_admin;

--
-- Name: physicalprotectiontypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.physicalprotectiontypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.physicalprotectiontypevalue OWNER TO sds_admin;

--
-- Name: physicalprotectiontypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.physicalprotectiontypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.physicalprotectiontypevalue_translated OWNER TO sds_admin;

--
-- Name: planningareatypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.planningareatypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.planningareatypevalue OWNER TO sds_admin;

--
-- Name: planningareatypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.planningareatypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.planningareatypevalue_translated OWNER TO sds_admin;

--
-- Name: serviceareatypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.serviceareatypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.serviceareatypevalue OWNER TO sds_admin;

--
-- Name: serviceareatypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.serviceareatypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.serviceareatypevalue_translated OWNER TO sds_admin;

--
-- Name: sewerdepthtypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.sewerdepthtypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.sewerdepthtypevalue OWNER TO sds_admin;

--
-- Name: sewerdepthtypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.sewerdepthtypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.sewerdepthtypevalue_translated OWNER TO sds_admin;

--
-- Name: sitetoasset_linkedassettablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.sitetoasset_linkedassettablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.sitetoasset_linkedassettablevalue OWNER TO sds_admin;

--
-- Name: sitetoasset_linkedsitetablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.sitetoasset_linkedsitetablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.sitetoasset_linkedsitetablevalue OWNER TO sds_admin;

--
-- Name: sitetositezoi_linkedsitetablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.sitetositezoi_linkedsitetablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.sitetositezoi_linkedsitetablevalue OWNER TO sds_admin;

--
-- Name: sitetositezoi_linkedsitezoitablevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.sitetositezoi_linkedsitezoitablevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.sitetositezoi_linkedsitezoitablevalue OWNER TO sds_admin;

--
-- Name: sitetypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.sitetypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.sitetypevalue OWNER TO sds_admin;

--
-- Name: sitetypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.sitetypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.sitetypevalue_translated OWNER TO sds_admin;

--
-- Name: supporttypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.supporttypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.supporttypevalue OWNER TO sds_admin;

--
-- Name: supporttypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.supporttypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.supporttypevalue_translated OWNER TO sds_admin;

--
-- Name: temperaturerangevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.temperaturerangevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.temperaturerangevalue OWNER TO sds_admin;

--
-- Name: temperaturerangevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.temperaturerangevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.temperaturerangevalue_translated OWNER TO sds_admin;

--
-- Name: unitoftimevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.unitoftimevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.unitoftimevalue OWNER TO sds_admin;

--
-- Name: unitoftimevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.unitoftimevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.unitoftimevalue_translated OWNER TO sds_admin;

--
-- Name: utilitysubtypevalue; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.utilitysubtypevalue (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value text NOT NULL,
    applicabledomains text NOT NULL
);


ALTER TABLE nuarcodelists_transformation.utilitysubtypevalue OWNER TO sds_admin;

--
-- Name: utilitysubtypevalue_translated; Type: TABLE; Schema: nuarcodelists_transformation; Owner: sds_admin
--

CREATE TABLE nuarcodelists_transformation.utilitysubtypevalue_translated (
    systemid character varying(38) NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    systemloaddate timestamp with time zone NOT NULL,
    value_original text NOT NULL,
    languagecode text,
    value_translated text
);


ALTER TABLE nuarcodelists_transformation.utilitysubtypevalue_translated OWNER TO sds_admin;

--
-- Name: backdropfeaturelifecycle_history; Type: TABLE; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE TABLE nuarcustombackdrop.backdropfeaturelifecycle_history (
    systemid text NOT NULL,
    featuresystemid text NOT NULL,
    featuretype text NOT NULL,
    originallifecyclestatus text,
    newlifecyclestatus text NOT NULL,
    originalversion text,
    newversion text,
    dateofchange timestamp with time zone,
    supersededbyid text,
    supersededbyfeaturetype text,
    description text
);


ALTER TABLE nuarcustombackdrop.backdropfeaturelifecycle_history OWNER TO sds_admin;

--
-- Name: nuarbackdroparea; Type: TABLE; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE TABLE nuarcustombackdrop.nuarbackdroparea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    name text,
    description text,
    geometry public.geometry(Polygon,27700) NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarcustombackdrop.nuarbackdroparea OWNER TO sds_admin;

--
-- Name: nuarbackdropline; Type: TABLE; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE TABLE nuarcustombackdrop.nuarbackdropline (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    name text,
    description text,
    geometry public.geometry(LineString,27700) NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarcustombackdrop.nuarbackdropline OWNER TO sds_admin;

--
-- Name: nuarbackdroppoint; Type: TABLE; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE TABLE nuarcustombackdrop.nuarbackdroppoint (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    name text,
    description text,
    geometry public.geometry(Point,27700) NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarcustombackdrop.nuarbackdroppoint OWNER TO sds_admin;

--
-- Name: nuarbackdropraster; Type: TABLE; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE TABLE nuarcustombackdrop.nuarbackdropraster (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    name text,
    description text,
    mimetype text NOT NULL,
    fullpath text NOT NULL,
    extent public.geometry(Polygon,27700) NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarcustombackdrop.nuarbackdropraster OWNER TO sds_admin;

--
-- Name: nuarbackdroptext; Type: TABLE; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE TABLE nuarcustombackdrop.nuarbackdroptext (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    name text,
    description text,
    orientation real NOT NULL,
    orientationmeasurementunits text NOT NULL,
    textstring text NOT NULL,
    geometry public.geometry(Point,27700) NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarcustombackdrop.nuarbackdroptext OWNER TO sds_admin;

--
-- Name: archaeologicalsite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.archaeologicalsite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    grade text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.archaeologicalsite OWNER TO sds_admin;

--
-- Name: areasofspecialscientificinterestnorthernireland; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.areasofspecialscientificinterestnorthernireland (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    reference text,
    name text NOT NULL,
    county text,
    map_scale text,
    speciespt1 text,
    speciespt2 text,
    habitat text,
    earth_sci text,
    parties real,
    declareday date,
    declare_ha real,
    confirmday date,
    conmfirm_ha real,
    hyperlink text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.areasofspecialscientificinterestnorthernireland OWNER TO sds_admin;

--
-- Name: conservationarea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.conservationarea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    designationpurpose text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.conservationarea OWNER TO sds_admin;

--
-- Name: denotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.denotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.denotation OWNER TO sds_admin;

--
-- Name: depth; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.depth (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    frommeasure numeric,
    tomeasure numeric,
    dateofcapture date,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.depth OWNER TO sds_admin;

--
-- Name: drainageaccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainageaccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainageaccessobject OWNER TO sds_admin;

--
-- Name: drainagecontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagecontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagecontainerobject OWNER TO sds_admin;

--
-- Name: drainagenetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagenetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagenetwork OWNER TO sds_admin;

--
-- Name: drainagenetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagenetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagenetworkannotation OWNER TO sds_admin;

--
-- Name: drainagenetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagenetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagenetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: drainagenetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagenetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagenetworkdimension OWNER TO sds_admin;

--
-- Name: drainagenetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagenetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagenetworklink OWNER TO sds_admin;

--
-- Name: drainagenetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagenetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagenetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: drainagenetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagenetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagenetworknode OWNER TO sds_admin;

--
-- Name: drainagenetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagenetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagenetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: drainagephysicalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagephysicalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagephysicalprotectionobject OWNER TO sds_admin;

--
-- Name: drainageservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainageservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainageservicearea OWNER TO sds_admin;

--
-- Name: drainagesite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagesite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagesite OWNER TO sds_admin;

--
-- Name: drainagesitezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagesitezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagesitezoneofinterest OWNER TO sds_admin;

--
-- Name: drainagesupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.drainagesupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.drainagesupportobject OWNER TO sds_admin;

--
-- Name: electricityaccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricityaccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricityaccessobject OWNER TO sds_admin;

--
-- Name: electricitycontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitycontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitycontainerobject OWNER TO sds_admin;

--
-- Name: electricitynetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitynetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitynetwork OWNER TO sds_admin;

--
-- Name: electricitynetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitynetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitynetworkannotation OWNER TO sds_admin;

--
-- Name: electricitynetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitynetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitynetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: electricitynetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitynetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitynetworkdimension OWNER TO sds_admin;

--
-- Name: electricitynetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitynetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    operatingvoltage_operatingvoltage real,
    operatingvoltage_unitofmeasure text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitynetworklink OWNER TO sds_admin;

--
-- Name: electricitynetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitynetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    operatingvoltage_operatingvoltage real,
    operatingvoltage_unitofmeasure text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitynetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: electricitynetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitynetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    operatingvoltage_operatingvoltage real,
    operatingvoltage_unitofmeasure text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitynetworknode OWNER TO sds_admin;

--
-- Name: electricitynetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitynetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    operatingvoltage_operatingvoltage real,
    operatingvoltage_unitofmeasure text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitynetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: electricityphysicalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricityphysicalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricityphysicalprotectionobject OWNER TO sds_admin;

--
-- Name: electricityservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricityservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricityservicearea OWNER TO sds_admin;

--
-- Name: electricitysite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitysite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitysite OWNER TO sds_admin;

--
-- Name: electricitysitezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitysitezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitysitezoneofinterest OWNER TO sds_admin;

--
-- Name: electricitysupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.electricitysupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.electricitysupportobject OWNER TO sds_admin;

--
-- Name: fuelandchemicalsaccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsaccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsaccessobject OWNER TO sds_admin;

--
-- Name: fuelandchemicalscontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalscontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalscontainerobject OWNER TO sds_admin;

--
-- Name: fuelandchemicalsnetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsnetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsnetwork OWNER TO sds_admin;

--
-- Name: fuelandchemicalsnetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsnetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsnetworkannotation OWNER TO sds_admin;

--
-- Name: fuelandchemicalsnetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsnetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsnetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: fuelandchemicalsnetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsnetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsnetworkdimension OWNER TO sds_admin;

--
-- Name: fuelandchemicalsnetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsnetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    materialgrade text,
    slabbing boolean DEFAULT false,
    tape boolean DEFAULT false,
    mahp boolean DEFAULT true,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsnetworklink OWNER TO sds_admin;

--
-- Name: fuelandchemicalsnetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsnetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    materialgrade text,
    slabbing boolean DEFAULT false,
    tape boolean DEFAULT false,
    mahp boolean DEFAULT true,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsnetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: fuelandchemicalsnetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsnetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsnetworknode OWNER TO sds_admin;

--
-- Name: fuelandchemicalsnetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsnetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsnetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: fuelandchemicalsphysicalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsphysicalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsphysicalprotectionobject OWNER TO sds_admin;

--
-- Name: fuelandchemicalsservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalsservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalsservicearea OWNER TO sds_admin;

--
-- Name: fuelandchemicalssite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalssite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalssite OWNER TO sds_admin;

--
-- Name: fuelandchemicalssitezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalssitezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalssitezoneofinterest OWNER TO sds_admin;

--
-- Name: fuelandchemicalssupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.fuelandchemicalssupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.fuelandchemicalssupportobject OWNER TO sds_admin;

--
-- Name: gasaccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasaccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasaccessobject OWNER TO sds_admin;

--
-- Name: gascontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gascontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gascontainerobject OWNER TO sds_admin;

--
-- Name: gasnetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasnetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasnetwork OWNER TO sds_admin;

--
-- Name: gasnetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasnetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasnetworkannotation OWNER TO sds_admin;

--
-- Name: gasnetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasnetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasnetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: gasnetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasnetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasnetworkdimension OWNER TO sds_admin;

--
-- Name: gasnetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasnetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    materialgrade text,
    slabbing boolean DEFAULT false,
    tape boolean DEFAULT false,
    mahp boolean DEFAULT false,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasnetworklink OWNER TO sds_admin;

--
-- Name: gasnetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasnetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    materialgrade text,
    slabbing boolean DEFAULT false,
    tape boolean DEFAULT false,
    mahp boolean DEFAULT false,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasnetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: gasnetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasnetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasnetworknode OWNER TO sds_admin;

--
-- Name: gasnetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasnetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasnetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: gasphysicalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasphysicalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasphysicalprotectionobject OWNER TO sds_admin;

--
-- Name: gasservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gasservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gasservicearea OWNER TO sds_admin;

--
-- Name: gassite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gassite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gassite OWNER TO sds_admin;

--
-- Name: gassitezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gassitezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gassitezoneofinterest OWNER TO sds_admin;

--
-- Name: gassupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.gassupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.gassupportobject OWNER TO sds_admin;

--
-- Name: generalplanningarea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.generalplanningarea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.generalplanningarea OWNER TO sds_admin;

--
-- Name: horizontalmeasurementmethod; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.horizontalmeasurementmethod (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    frommeasure numeric,
    tomeasure numeric,
    dateofcapture date,
    horizontalmeasurementmethod text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.horizontalmeasurementmethod OWNER TO sds_admin;

--
-- Name: muddienvironmentalunit; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.muddienvironmentalunit (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.muddienvironmentalunit OWNER TO sds_admin;

--
-- Name: nonutilityobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.nonutilityobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isencased boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    type text,
    subtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.nonutilityobject OWNER TO sds_admin;

--
-- Name: nuardatafeaturelifecycle_history; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.nuardatafeaturelifecycle_history (
    systemid text NOT NULL,
    featuresystemid text NOT NULL,
    featuretype text NOT NULL,
    originallifecyclestatus text,
    newlifecyclestatus text NOT NULL,
    originalversion text,
    newversion text,
    dateofchange timestamp with time zone,
    supersededbyid text,
    supersededbyfeaturetype text,
    description text
);


ALTER TABLE nuardata.nuardatafeaturelifecycle_history OWNER TO sds_admin;

--
-- Name: nuarguidance; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.nuarguidance (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    name text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.nuarguidance OWNER TO sds_admin;

--
-- Name: nuarlinkedfile; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.nuarlinkedfile (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    fullpath text,
    mimetype text,
    name text,
    typedescription text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.nuarlinkedfile OWNER TO sds_admin;

--
-- Name: qualitylevel; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.qualitylevel (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    frommeasure numeric,
    tomeasure numeric,
    dateofcapture date,
    qualitylevel text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.qualitylevel OWNER TO sds_admin;

--
-- Name: relationship_coveragetobackdropobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_coveragetobackdropobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    coverageid text NOT NULL,
    backdropobjecttable text NOT NULL,
    backdropobjectid text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_coveragetobackdropobject OWNER TO sds_admin;

--
-- Name: relationship_guidance; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_guidance (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedguidanceid text NOT NULL,
    linkedobjectid text NOT NULL,
    linkedobjecttable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_guidance OWNER TO sds_admin;

--
-- Name: relationship_linkedfile; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_linkedfile (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedfileid text NOT NULL,
    linkedobjectid text NOT NULL,
    linkedobjecttable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_linkedfile OWNER TO sds_admin;

--
-- Name: relationship_linktolinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_linktolinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedlinkid text NOT NULL,
    linkedlinktable text NOT NULL,
    linkedlinkzoneofinterestid text NOT NULL,
    linkedlinkzoneofinteresttable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_linktolinkzoneofinterest OWNER TO sds_admin;

--
-- Name: relationship_networkconveyancetonetworkaccessory; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_networkconveyancetonetworkaccessory (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedconveyanceid text NOT NULL,
    linkedconveyancetable text NOT NULL,
    linkedaccessoryid text NOT NULL,
    linkedaccessorytable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_networkconveyancetonetworkaccessory OWNER TO sds_admin;

--
-- Name: relationship_networktonetworkconveyance; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_networktonetworkconveyance (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkednetworkid text NOT NULL,
    linkednetworktable text NOT NULL,
    linkedconveyanceid text NOT NULL,
    linkedconveyancetable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_networktonetworkconveyance OWNER TO sds_admin;

--
-- Name: relationship_networktoservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_networktoservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkednetworkid text NOT NULL,
    linkednetworktable text NOT NULL,
    linkedserviceareaid text NOT NULL,
    linkedserviceareatable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_networktoservicearea OWNER TO sds_admin;

--
-- Name: relationship_networktosite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_networktosite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkednetworkid text NOT NULL,
    linkednetworktable text NOT NULL,
    linkedsiteid text NOT NULL,
    linkedsitetable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_networktosite OWNER TO sds_admin;

--
-- Name: relationship_networktosubnetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_networktosubnetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkednetworkid text NOT NULL,
    linkednetworktable text NOT NULL,
    linkedsubnetworkid text NOT NULL,
    linkedsubnetworktable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_networktosubnetwork OWNER TO sds_admin;

--
-- Name: relationship_networktosubordinatenetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_networktosubordinatenetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkednetworkid text NOT NULL,
    linkednetworktable text NOT NULL,
    linkedsubordinatenetworkid text NOT NULL,
    linkedsubordinatenetworktable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_networktosubordinatenetwork OWNER TO sds_admin;

--
-- Name: relationship_nodetonodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_nodetonodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkednodeid text NOT NULL,
    linkednodetable text NOT NULL,
    linkednodezoneofinterestid text NOT NULL,
    linkednodezoneofinteresttable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_nodetonodezoneofinterest OWNER TO sds_admin;

--
-- Name: relationship_objecttocontactdetails; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_objecttocontactdetails (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedobjectid text NOT NULL,
    linkedobjecttable text NOT NULL,
    linkedcontactdetailsid text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_objecttocontactdetails OWNER TO sds_admin;

--
-- Name: relationship_sitetoasset; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_sitetoasset (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedsiteid text NOT NULL,
    linkedsitetable text NOT NULL,
    linkedassetid text NOT NULL,
    linkedassettable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_sitetoasset OWNER TO sds_admin;

--
-- Name: relationship_sitetositezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_sitetositezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedsiteid text NOT NULL,
    linkedsitetable text NOT NULL,
    linkedsitezoneid text NOT NULL,
    linkedsitezonetable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_sitetositezoneofinterest OWNER TO sds_admin;

--
-- Name: relationship_subordinatenetworktorule; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_subordinatenetworktorule (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    networkid text NOT NULL,
    networktableid text NOT NULL,
    ruleid text NOT NULL,
    ruletablename text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_subordinatenetworktorule OWNER TO sds_admin;

--
-- Name: relationship_supplementaldatacoveragetoobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_supplementaldatacoveragetoobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedsupplementaldatacoverageid text NOT NULL,
    linkedobjectid text NOT NULL,
    linkedobjecttable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_supplementaldatacoveragetoobject OWNER TO sds_admin;

--
-- Name: relationship_variableobjectvaluetoasset; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.relationship_variableobjectvaluetoasset (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedvariableobjectvalueid text NOT NULL,
    linkedvariableobjectvaluetable text NOT NULL,
    linkedassetid text NOT NULL,
    linkedassettable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.relationship_variableobjectvaluetoasset OWNER TO sds_admin;

--
-- Name: restrictedplanningarea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.restrictedplanningarea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.restrictedplanningarea OWNER TO sds_admin;

--
-- Name: servicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.servicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.servicearea OWNER TO sds_admin;

--
-- Name: seweraccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.seweraccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.seweraccessobject OWNER TO sds_admin;

--
-- Name: sewercontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewercontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewercontainerobject OWNER TO sds_admin;

--
-- Name: sewernetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewernetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewernetwork OWNER TO sds_admin;

--
-- Name: sewernetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewernetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewernetworkannotation OWNER TO sds_admin;

--
-- Name: sewernetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewernetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewernetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: sewernetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewernetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewernetworkdimension OWNER TO sds_admin;

--
-- Name: sewernetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewernetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    backdrop boolean,
    startingdepthtype text,
    endingdepthtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewernetworklink OWNER TO sds_admin;

--
-- Name: sewernetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewernetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    backdrop boolean,
    startingdepthtype text,
    endingdepthtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewernetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: sewernetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewernetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewernetworknode OWNER TO sds_admin;

--
-- Name: sewernetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewernetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewernetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: sewerphysicalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewerphysicalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewerphysicalprotectionobject OWNER TO sds_admin;

--
-- Name: sewerservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewerservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewerservicearea OWNER TO sds_admin;

--
-- Name: sewersite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewersite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewersite OWNER TO sds_admin;

--
-- Name: sewersitezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewersitezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewersitezoneofinterest OWNER TO sds_admin;

--
-- Name: sewersupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sewersupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sewersupportobject OWNER TO sds_admin;

--
-- Name: siteofpreviousindustrialuse; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.siteofpreviousindustrialuse (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    previoususe text,
    enddate date,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.siteofpreviousindustrialuse OWNER TO sds_admin;

--
-- Name: sitesofspecialscientificinterestengland; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sitesofspecialscientificinterestengland (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    ensisid real NOT NULL,
    gid real NOT NULL,
    sssi_name text NOT NULL,
    status text,
    version real,
    gis_date text,
    gis_file text,
    area real,
    sssi_area real,
    reference text,
    easting real,
    northing real,
    easting0 real,
    northing0 real,
    latitude text,
    longitude text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sitesofspecialscientificinterestengland OWNER TO sds_admin;

--
-- Name: sitesofspecialscientificinterestscotland; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sitesofspecialscientificinterestscotland (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    pa_code real,
    name text NOT NULL,
    status text,
    type text,
    geo_loc text,
    site_ha real,
    mpa_net text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sitesofspecialscientificinterestscotland OWNER TO sds_admin;

--
-- Name: sitesofspecialscientificinterestwales; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.sitesofspecialscientificinterestwales (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    sssi_id real,
    sssi_name text NOT NULL,
    status text,
    type text,
    sssi_code text,
    first_noti date,
    last_notif date,
    confirmed date,
    last_edite date,
    osmm_date date,
    centre_x real,
    centre_y real,
    registered text,
    cartesian_ real,
    spherical_ real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.sitesofspecialscientificinterestwales OWNER TO sds_admin;

--
-- Name: supplementaldatacoverage; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.supplementaldatacoverage (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    coveragetype text DEFAULT 'Other'::text NOT NULL,
    coveragedataservicetype text,
    coveragedataserviceuri text,
    drawingpriority integer DEFAULT 0,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.supplementaldatacoverage OWNER TO sds_admin;

--
-- Name: telcoaccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telcoaccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telcoaccessobject OWNER TO sds_admin;

--
-- Name: telcocontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telcocontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telcocontainerobject OWNER TO sds_admin;

--
-- Name: telconetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telconetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telconetwork OWNER TO sds_admin;

--
-- Name: telconetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telconetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telconetworkannotation OWNER TO sds_admin;

--
-- Name: telconetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telconetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telconetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: telconetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telconetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telconetworkdimension OWNER TO sds_admin;

--
-- Name: telconetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telconetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telconetworklink OWNER TO sds_admin;

--
-- Name: telconetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telconetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telconetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: telconetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telconetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telconetworknode OWNER TO sds_admin;

--
-- Name: telconetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telconetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telconetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: telcophysicalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telcophysicalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telcophysicalprotectionobject OWNER TO sds_admin;

--
-- Name: telcoservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telcoservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telcoservicearea OWNER TO sds_admin;

--
-- Name: telcosite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telcosite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telcosite OWNER TO sds_admin;

--
-- Name: telcositezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telcositezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telcositezoneofinterest OWNER TO sds_admin;

--
-- Name: telcosupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.telcosupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.telcosupportobject OWNER TO sds_admin;

--
-- Name: thermalaccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalaccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalaccessobject OWNER TO sds_admin;

--
-- Name: thermalcontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalcontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalcontainerobject OWNER TO sds_admin;

--
-- Name: thermalnetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalnetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalnetwork OWNER TO sds_admin;

--
-- Name: thermalnetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalnetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalnetworkannotation OWNER TO sds_admin;

--
-- Name: thermalnetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalnetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalnetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: thermalnetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalnetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalnetworkdimension OWNER TO sds_admin;

--
-- Name: thermalnetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalnetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalnetworklink OWNER TO sds_admin;

--
-- Name: thermalnetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalnetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalnetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: thermalnetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalnetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalnetworknode OWNER TO sds_admin;

--
-- Name: thermalnetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalnetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalnetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: thermalphysicalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalphysicalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalphysicalprotectionobject OWNER TO sds_admin;

--
-- Name: thermalservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalservicearea OWNER TO sds_admin;

--
-- Name: thermalsite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalsite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalsite OWNER TO sds_admin;

--
-- Name: thermalsitezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalsitezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalsitezoneofinterest OWNER TO sds_admin;

--
-- Name: thermalsupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.thermalsupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.thermalsupportobject OWNER TO sds_admin;

--
-- Name: transportsignalaccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalaccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalaccessobject OWNER TO sds_admin;

--
-- Name: transportsignalcontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalcontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalcontainerobject OWNER TO sds_admin;

--
-- Name: transportsignalnetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalnetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalnetwork OWNER TO sds_admin;

--
-- Name: transportsignalnetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalnetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalnetworkannotation OWNER TO sds_admin;

--
-- Name: transportsignalnetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalnetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalnetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: transportsignalnetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalnetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalnetworkdimension OWNER TO sds_admin;

--
-- Name: transportsignalnetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalnetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalnetworklink OWNER TO sds_admin;

--
-- Name: transportsignalnetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalnetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalnetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: transportsignalnetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalnetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalnetworknode OWNER TO sds_admin;

--
-- Name: transportsignalnetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalnetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalnetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: transportsignalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalprotectionobject OWNER TO sds_admin;

--
-- Name: transportsignalservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalservicearea OWNER TO sds_admin;

--
-- Name: transportsignalsite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalsite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalsite OWNER TO sds_admin;

--
-- Name: transportsignalsitezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalsitezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalsitezoneofinterest OWNER TO sds_admin;

--
-- Name: transportsignalsupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.transportsignalsupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.transportsignalsupportobject OWNER TO sds_admin;

--
-- Name: treelocation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.treelocation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    directive text,
    planningareatype text,
    policydocumentation text,
    policyname text,
    species text,
    treepreservationorder boolean DEFAULT true NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.treelocation OWNER TO sds_admin;

--
-- Name: wateraccessobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.wateraccessobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    accesstype text,
    accesssubtype text,
    numberofcovers integer,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.wateraccessobject OWNER TO sds_admin;

--
-- Name: watercontainerobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.watercontainerobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    containertype text,
    containersubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.watercontainerobject OWNER TO sds_admin;

--
-- Name: waternetwork; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waternetwork (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waternetwork OWNER TO sds_admin;

--
-- Name: waternetworkannotation; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waternetworkannotation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    bold boolean DEFAULT false,
    characterspacing real,
    characterwidth real,
    fontleading real,
    geometryvisible boolean DEFAULT false,
    fontname text,
    fontsize real,
    fontstyle text,
    horizontalalignment text,
    italic boolean DEFAULT false,
    underline boolean DEFAULT false,
    verticalalignment text,
    wordspacing real,
    xoffset real DEFAULT 0,
    yoffset real DEFAULT 0,
    flipangle real,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waternetworkannotation OWNER TO sds_admin;

--
-- Name: waternetworkdescriptionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waternetworkdescriptionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waternetworkdescriptionobject OWNER TO sds_admin;

--
-- Name: waternetworkdimension; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waternetworkdimension (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    associatedassets text,
    associatedtext text,
    descriptiontype text,
    isqueryable boolean,
    orientation real,
    orientationmeasurementunits text,
    utilitysubtype text,
    referencescale real,
    utilitytype text,
    dimensionline public.geometry(LineString,27700),
    dimensionvalue_length real,
    dimensionvalue_unitofmeasure text,
    enddimensionlineextension public.geometry(LineString,27700),
    enddimensionpoint public.geometry(Point,27700),
    endextensionline public.geometry(LineString,27700),
    propertyindicator text,
    startdimensionlineextension public.geometry(LineString,27700),
    startextensionline public.geometry(LineString,27700),
    startdimensionpoint public.geometry(Point,27700),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waternetworkdimension OWNER TO sds_admin;

--
-- Name: waternetworklink; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waternetworklink (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waternetworklink OWNER TO sds_admin;

--
-- Name: waternetworklinkzoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waternetworklinkzoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    downstreamdepth_depth real,
    downstreamdepth_unitofmeasure text,
    componenttype text,
    componentsubtype text,
    startnodeid character varying(38),
    endnodeid character varying(38),
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waternetworklinkzoneofinterest OWNER TO sds_admin;

--
-- Name: waternetworknode; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waternetworknode (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waternetworknode OWNER TO sds_admin;

--
-- Name: waternetworknodezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waternetworknodezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    conveyancecategory text,
    conveyancemethod text,
    fillmaterial text,
    operatingconveyancelevel real,
    operatingconveyanceleveltype text,
    operatingconveyancelevelunits text,
    operatingtemperature real,
    operatingtemperaturerange text,
    operatingtemperatureunits text,
    isfilled boolean,
    outermaterial text,
    outermaterialsubtype text,
    componenttype text,
    componentsubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waternetworknodezoneofinterest OWNER TO sds_admin;

--
-- Name: waterphysicalprotectionobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waterphysicalprotectionobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    physicalprotectiontype text,
    physicalprotectionsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waterphysicalprotectionobject OWNER TO sds_admin;

--
-- Name: waterservicearea; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.waterservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    serviceareatype text,
    serviceareasubtype text,
    nationalorregionalcoverage text DEFAULT 'N/A'::text NOT NULL,
    buffered boolean DEFAULT false NOT NULL,
    buffersize_width real,
    buffersize_unitofmeasure text,
    originalserviceareaid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.waterservicearea OWNER TO sds_admin;

--
-- Name: watersite; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.watersite (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.watersite OWNER TO sds_admin;

--
-- Name: watersitezoneofinterest; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.watersitezoneofinterest (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    sitetype text,
    sitesubtype text,
    parentfeatureid text,
    displayparentfeature boolean,
    displayzoneofinterest boolean,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.watersitezoneofinterest OWNER TO sds_admin;

--
-- Name: watersupportobject; Type: TABLE; Schema: nuardata; Owner: sds_admin
--

CREATE TABLE nuardata.watersupportobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isauxiliary boolean,
    iscathodicprotected boolean,
    isencased boolean,
    isnps boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    protectivematerial text,
    protectivematerialsubtype text,
    utilitysubtype text,
    utilitytype text,
    wallthickness_width real,
    wallthickness_unitofmeasure text,
    accessorytype text,
    supporttype text,
    supportsubtype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuardata.watersupportobject OWNER TO sds_admin;

--
-- Name: nuaractivityproximityrule; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuaractivityproximityrule (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    name text NOT NULL,
    description text,
    enhancedmeasures text,
    activitytype text NOT NULL,
    proximity_length real,
    proximity_unitofmeasure text,
    activitytypeid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.nuaractivityproximityrule OWNER TO sds_admin;

--
-- Name: nuaractivityproximityrule_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuaractivityproximityrule_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    name text NOT NULL,
    description text,
    enhancedmeasures text,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    activitytype text NOT NULL,
    proximity_length real,
    proximity_unitofmeasure text,
    submissioneventid_fk character varying(38) NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.nuaractivityproximityrule_history OWNER TO sds_admin;

--
-- Name: nuaractor; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuaractor (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    actortype text,
    name text,
    address_singlelineaddress text,
    address_subbuilding text,
    address_buildingname text,
    address_buildingnumber text,
    address_streetname text,
    address_locality text,
    address_townname text,
    address_postcode text,
    address_uprn text,
    swacode text,
    copyrighttext text,
    corporateemaildomains text,
    organisationtype text,
    disclaimertext text,
    parentorganisationname text,
    displayname text,
    reference text,
    websiteurl text,
    parentorganisationid text,
    standardguidance character varying(255),
    administeredbyparent boolean DEFAULT false,
    shortname text
);


ALTER TABLE nuarorganisations.nuaractor OWNER TO sds_admin;

--
-- Name: nuaractor_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuaractor_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    actortype text,
    name text,
    address_singlelineaddress text,
    address_subbuilding text,
    address_buildingname text,
    address_buildingnumber text,
    address_streetname text,
    address_locality text,
    address_townname text,
    address_postcode text,
    address_uprn text,
    swacode text,
    copyrighttext text,
    corporateemaildomains text,
    organisationtype text,
    disclaimertext text,
    parentorganisationname text,
    displayname text,
    reference text,
    websiteurl text,
    parentorganisationid text,
    standardguidance character varying(255),
    administeredbyparent boolean DEFAULT false,
    shortname text
);


ALTER TABLE nuarorganisations.nuaractor_history OWNER TO sds_admin;

--
-- Name: nuarcontactdetails; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuarcontactdetails (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    organisationname text,
    address_singlelineaddress text,
    address_subbuilding text,
    address_buildingname text,
    address_buildingnumber text,
    address_streetname text,
    address_locality text,
    address_townname text,
    address_postcode text,
    address_uprn text,
    contactdetailstype text,
    departmentname text,
    emailaddress text,
    telephonenumber text,
    webform text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.nuarcontactdetails OWNER TO sds_admin;

--
-- Name: nuarcontactdetails_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuarcontactdetails_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    organisationname text,
    address_singlelineaddress text,
    address_subbuilding text,
    address_buildingname text,
    address_buildingnumber text,
    address_streetname text,
    address_locality text,
    address_townname text,
    address_postcode text,
    address_uprn text,
    contactdetailstype text,
    departmentname text,
    emailaddress text,
    telephonenumber text,
    webform text,
    dataproviderid character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.nuarcontactdetails_history OWNER TO sds_admin;

--
-- Name: nuardda; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuardda (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    link text,
    reference text,
    versiondate timestamp with time zone,
    versionnumber text
);


ALTER TABLE nuarorganisations.nuardda OWNER TO sds_admin;

--
-- Name: nuardda_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuardda_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    link text,
    reference text,
    versiondate timestamp with time zone,
    versionnumber text
);


ALTER TABLE nuarorganisations.nuardda_history OWNER TO sds_admin;

--
-- Name: nuardis; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuardis (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    datasetnames text,
    link text,
    reference text,
    versiondate timestamp with time zone,
    versionnumber text,
    datamodelversion text
);


ALTER TABLE nuarorganisations.nuardis OWNER TO sds_admin;

--
-- Name: nuardis_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.nuardis_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    datasetnames text,
    link text,
    reference text,
    versiondate timestamp with time zone,
    versionnumber text,
    datamodelversion text
);


ALTER TABLE nuarorganisations.nuardis_history OWNER TO sds_admin;

--
-- Name: relationship_actortocontactdetails; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortocontactdetails (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedactorid text NOT NULL,
    linkedcontactdetailsid text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortocontactdetails OWNER TO sds_admin;

--
-- Name: relationship_actortocontactdetails_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortocontactdetails_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    linkedactorid text NOT NULL,
    linkedcontactdetailsid text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortocontactdetails_history OWNER TO sds_admin;

--
-- Name: relationship_actortodda; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortodda (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    dateddasigned timestamp with time zone NOT NULL,
    signatoryorganisationid text,
    nuarddaid text NOT NULL,
    validuntildate timestamp with time zone,
    nuaractorid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortodda OWNER TO sds_admin;

--
-- Name: relationship_actortodda_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortodda_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    dateddasigned timestamp with time zone NOT NULL,
    signatoryorganisationid text,
    nuarddaid text NOT NULL,
    validuntildate timestamp with time zone,
    nuaractorid text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortodda_history OWNER TO sds_admin;

--
-- Name: relationship_actortodis; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortodis (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    nuardisid text NOT NULL,
    nuaractorid text NOT NULL,
    datedisagreed timestamp with time zone,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortodis OWNER TO sds_admin;

--
-- Name: relationship_actortodis_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortodis_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    nuardisid text NOT NULL,
    nuaractorid text NOT NULL,
    datedisagreed timestamp with time zone,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortodis_history OWNER TO sds_admin;

--
-- Name: relationship_actortorule; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortorule (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    actorid text NOT NULL,
    ruletablename text NOT NULL,
    ruleid text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortorule OWNER TO sds_admin;

--
-- Name: relationship_actortorule_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortorule_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    actorid text NOT NULL,
    ruletablename text NOT NULL,
    ruleid text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortorule_history OWNER TO sds_admin;

--
-- Name: relationship_actortoservicearea; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortoservicearea (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    actorid text NOT NULL,
    serviceareaid text NOT NULL,
    serviceareapurpose text NOT NULL,
    serviceareaname text,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortoservicearea OWNER TO sds_admin;

--
-- Name: relationship_actortoservicearea_history; Type: TABLE; Schema: nuarorganisations; Owner: sds_admin
--

CREATE TABLE nuarorganisations.relationship_actortoservicearea_history (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    originalsystemid character varying(38) NOT NULL,
    changeuserid text NOT NULL,
    dateandtimeofchange timestamp with time zone NOT NULL,
    fieldschanged text NOT NULL,
    actorid text NOT NULL,
    serviceareaid text NOT NULL,
    serviceareapurpose text NOT NULL,
    serviceareaname text,
    utilitytype text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarorganisations.relationship_actortoservicearea_history OWNER TO sds_admin;

--
-- Name: nuarsourcedataset; Type: TABLE; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE TABLE nuarsubmissions.nuarsourcedataset (
    systemid character varying(38) NOT NULL,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    sourcefeatureclassvalue text NOT NULL,
    type text,
    externalreference text,
    nuaractorid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarsubmissions.nuarsourcedataset OWNER TO sds_admin;

--
-- Name: nuarsubmissionareareplacement; Type: TABLE; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE TABLE nuarsubmissions.nuarsubmissionareareplacement (
    systemid character varying(38) NOT NULL,
    arearelationshiptablename text NOT NULL,
    areaid text NOT NULL,
    areaidfieldname text NOT NULL,
    objecttablefieldname text NOT NULL,
    objectidfieldname text NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarsubmissions.nuarsubmissionareareplacement OWNER TO sds_admin;

--
-- Name: nuarsubmissiondatasetreplacement; Type: TABLE; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE TABLE nuarsubmissions.nuarsubmissiondatasetreplacement (
    systemid character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL,
    nuarsourcedatasetid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarsubmissions.nuarsubmissiondatasetreplacement OWNER TO sds_admin;

--
-- Name: nuarsubmissionevent; Type: TABLE; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE TABLE nuarsubmissions.nuarsubmissionevent (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    eventname text,
    dateofsubmission timestamp with time zone,
    status text,
    result text,
    dateofcompletion timestamp with time zone,
    datamodelversion text,
    submissionid text,
    replacementscope text DEFAULT 'Organisation'::text NOT NULL,
    nochange boolean DEFAULT false NOT NULL,
    nochangetosubmissionid character varying(38),
    submissiontype text DEFAULT 'Asset Data'::text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarsubmissions.nuarsubmissionevent OWNER TO sds_admin;

--
-- Name: nuarsubmissionfeaturereplacement; Type: TABLE; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE TABLE nuarsubmissions.nuarsubmissionfeaturereplacement (
    systemid character varying(38) NOT NULL,
    featuretablename text NOT NULL,
    featureid text NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarsubmissions.nuarsubmissionfeaturereplacement OWNER TO sds_admin;

--
-- Name: nuarsubmissionsourcedataset; Type: TABLE; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE TABLE nuarsubmissions.nuarsubmissionsourcedataset (
    systemid character varying(38) NOT NULL,
    dateofextract timestamp with time zone,
    name text,
    submissioneventid_fk character varying(38) NOT NULL,
    nuarsourcedatasetid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarsubmissions.nuarsubmissionsourcedataset OWNER TO sds_admin;

--
-- Name: nuarsubmissionsubmissionreplacement; Type: TABLE; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE TABLE nuarsubmissions.nuarsubmissionsubmissionreplacement (
    systemid character varying(38) NOT NULL,
    newsubmissioneventid_fk character varying(38) NOT NULL,
    oldsubmissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarsubmissions.nuarsubmissionsubmissionreplacement OWNER TO sds_admin;

--
-- Name: nuarsubmissiontargettable; Type: TABLE; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE TABLE nuarsubmissions.nuarsubmissiontargettable (
    systemid character varying(38) NOT NULL,
    targettablename text NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarsubmissions.nuarsubmissiontargettable OWNER TO sds_admin;

--
-- Name: observation; Type: TABLE; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE TABLE nuarusercreateddata.observation (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    estimatedbackfilldate date,
    impactonworks text,
    userid text NOT NULL,
    notes text,
    observationcategory text,
    visibilitystatus text NOT NULL,
    scopeofsharing text NOT NULL,
    dateoflastvisibilityscopechange timestamp with time zone,
    potentialsensitivity boolean DEFAULT false NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    onbehalfoforganisationid_fk character varying(38),
    originatingorganisationid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarusercreateddata.observation OWNER TO sds_admin;

--
-- Name: observationfeedback; Type: TABLE; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE TABLE nuarusercreateddata.observationfeedback (
    systemid character varying(38) NOT NULL,
    feedbackuserid text NOT NULL,
    feedbackrating text,
    feedbackpercentage real NOT NULL,
    observationreported boolean DEFAULT false NOT NULL,
    notes character varying(200) NOT NULL,
    observationid_fk character varying(38)
);


ALTER TABLE nuarusercreateddata.observationfeedback OWNER TO sds_admin;

--
-- Name: observationorganisationvisibilityscope; Type: TABLE; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE TABLE nuarusercreateddata.observationorganisationvisibilityscope (
    systemid character varying(38) NOT NULL,
    scopeofsharing text NOT NULL,
    potentialsensitivity boolean DEFAULT false NOT NULL,
    nuaractorid_fk character varying(38) NOT NULL,
    observationid_fk character varying(38)
);


ALTER TABLE nuarusercreateddata.observationorganisationvisibilityscope OWNER TO sds_admin;

--
-- Name: relationship_wronglyrecordedobject; Type: TABLE; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE TABLE nuarusercreateddata.relationship_wronglyrecordedobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    linkedwroid text NOT NULL,
    linkedobjectid text NOT NULL,
    linkedobjecttable text NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarusercreateddata.relationship_wronglyrecordedobject OWNER TO sds_admin;

--
-- Name: unidentifiedburiedobject; Type: TABLE; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE TABLE nuarusercreateddata.unidentifiedburiedobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    azimuth real,
    centroidxyz text,
    azimuthmeasurementunits text,
    colour text,
    depth_depth real,
    depth_unitofmeasure text,
    depthmethod text,
    horizontalaccuracy_length real,
    horizontalaccuracy_unitofmeasure text,
    horizontalmeasurementmethod text,
    installationmethod text,
    installationmethodsubtype text,
    intendedpermanence text,
    materialsubtype text,
    locationtype text,
    material text,
    qualitylevel text,
    undergroundstatus text,
    verticalaccuracy_length real,
    verticalaccuracy_unitofmeasure text,
    container text,
    dateofinstallation date,
    insideheight_height real,
    insideheight_unitofmeasure text,
    insidelength_length real,
    insidelength_unitofmeasure text,
    insidewidth_width real,
    insidewidth_unitofmeasure text,
    isencased boolean,
    outsideheight_height real,
    outsideheight_unitofmeasure text,
    outsidelength_length real,
    outsidelength_unitofmeasure text,
    outsidewidth_width real,
    outsidewidth_unitofmeasure text,
    colourdescription text,
    componenttypedescription text,
    estimateddepth_depth real,
    estimateddepth_unitofmeasure text,
    estimatedutilitytype text,
    materialdescription text,
    dataproviderid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarusercreateddata.unidentifiedburiedobject OWNER TO sds_admin;

--
-- Name: usercreatedfeaturelifecycle_history; Type: TABLE; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE TABLE nuarusercreateddata.usercreatedfeaturelifecycle_history (
    systemid character varying(38) NOT NULL,
    featuresystemid text NOT NULL,
    featuretype text NOT NULL,
    originallifecyclestatus text,
    newlifecyclestatus text NOT NULL,
    originalversion text,
    newversion text,
    dateofchange timestamp with time zone,
    supersededbyid text,
    supersededbyfeaturetype text,
    description text
);


ALTER TABLE nuarusercreateddata.usercreatedfeaturelifecycle_history OWNER TO sds_admin;

--
-- Name: wronglyrecordedobject; Type: TABLE; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE TABLE nuarusercreateddata.wronglyrecordedobject (
    systemid character varying(38) NOT NULL,
    lifecyclestatus text DEFAULT 'Submitted'::text NOT NULL,
    datelastupdated timestamp with time zone NOT NULL,
    dateoflastlifecyclestatuschange timestamp with time zone,
    nuarversion text,
    systemloaddate timestamp with time zone NOT NULL,
    certification text,
    dataproviderassigneduniqueid text,
    dataproviderassigneduniqueidautoassigned boolean DEFAULT true NOT NULL,
    dataowner text,
    dataownerassigneduniqueid text,
    datasensitivitylevel text DEFAULT 'Requires Redaction'::text,
    datedatacollected date,
    dateoflaststatuschange date,
    description text,
    featuretype text,
    horizontalcrs text,
    operationalstatus text,
    originaldatedatacollected date,
    version text,
    enhancedmeasures text,
    enhancedmeasuresproximity_length real,
    enhancedmeasuresproximity_unitofmeasure text,
    expectedrefreshperiod_period real,
    expectedrefreshperiod_unitoftime text,
    verticalcrs text,
    geometry public.geometry(Geometry,27700),
    sourcefeatureclass text,
    localereference text,
    localereferencetype text,
    objectname text,
    objectowner text,
    operator text,
    objectownerassigneduniqueid text,
    operatorassigneduniqueid text,
    additionalinformation text,
    estimatedbackfilldate date,
    impactonworks text,
    userid text NOT NULL,
    notes text,
    observationcategory text,
    visibilitystatus text NOT NULL,
    scopeofsharing text NOT NULL,
    dateoflastvisibilityscopechange timestamp with time zone,
    potentialsensitivity boolean DEFAULT false NOT NULL,
    dataproviderid_fk character varying(38) NOT NULL,
    onbehalfoforganisationid_fk character varying(38),
    originatingorganisationid_fk character varying(38) NOT NULL,
    submissioneventid_fk character varying(38) NOT NULL
);


ALTER TABLE nuarusercreateddata.wronglyrecordedobject OWNER TO sds_admin;

--
-- Name: nuardatamodelchangelog; Type: TABLE; Schema: nuarversion; Owner: sds_admin
--

CREATE TABLE nuarversion.nuardatamodelchangelog (
    systemid character varying(38) NOT NULL,
    versionnumber text NOT NULL,
    proposalreference text NOT NULL,
    changedescription text NOT NULL,
    schemaname text DEFAULT 'nuardata'::text NOT NULL,
    schemaversion text DEFAULT 'versionnumber'::text NOT NULL
);


ALTER TABLE nuarversion.nuardatamodelchangelog OWNER TO sds_admin;

--
-- Name: nuardatamodelmigrationhistory; Type: TABLE; Schema: nuarversion; Owner: sds_admin
--

CREATE TABLE nuarversion.nuardatamodelmigrationhistory (
    systemid character varying(38) NOT NULL,
    dateofmigration date NOT NULL,
    fromversionnumber text NOT NULL,
    toversionnumber text NOT NULL,
    appliedby text
);


ALTER TABLE nuarversion.nuardatamodelmigrationhistory OWNER TO sds_admin;

--
-- Name: nuardatamodelschemaversions; Type: TABLE; Schema: nuarversion; Owner: sds_admin
--

CREATE TABLE nuarversion.nuardatamodelschemaversions (
    systemid character varying(38) NOT NULL,
    datamodelversion text NOT NULL,
    schemaname text NOT NULL,
    schemaversion text NOT NULL
);


ALTER TABLE nuarversion.nuardatamodelschemaversions OWNER TO sds_admin;

--
-- Name: nuardatamodelversion; Type: TABLE; Schema: nuarversion; Owner: sds_admin
--

CREATE TABLE nuarversion.nuardatamodelversion (
    systemid character varying(38) NOT NULL,
    versionnumber text NOT NULL,
    versiondate date NOT NULL
);


ALTER TABLE nuarversion.nuardatamodelversion OWNER TO sds_admin;

--
-- Name: nuarschemaversion; Type: TABLE; Schema: nuarversion; Owner: sds_admin
--

CREATE TABLE nuarversion.nuarschemaversion (
    systemid character varying(38) NOT NULL,
    schemaname text NOT NULL,
    versiondate date NOT NULL,
    versionnumber text NOT NULL
);


ALTER TABLE nuarversion.nuarschemaversion OWNER TO sds_admin;

--
-- Name: datasettypevalue datasettypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.datasettypevalue
    ADD CONSTRAINT datasettypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: lifecyclestatusvalue lifecyclestatusvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.lifecyclestatusvalue
    ADD CONSTRAINT lifecyclestatusvalue_pkey PRIMARY KEY (systemid);


--
-- Name: publicationresultvalue publicationresultvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.publicationresultvalue
    ADD CONSTRAINT publicationresultvalue_pkey PRIMARY KEY (systemid);


--
-- Name: publicationstagestatusvalue publicationstagestatusvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.publicationstagestatusvalue
    ADD CONSTRAINT publicationstagestatusvalue_pkey PRIMARY KEY (systemid);


--
-- Name: publicationstagevalue publicationstagevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.publicationstagevalue
    ADD CONSTRAINT publicationstagevalue_pkey PRIMARY KEY (systemid);


--
-- Name: publicationstatusvalue publicationstatusvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.publicationstatusvalue
    ADD CONSTRAINT publicationstatusvalue_pkey PRIMARY KEY (systemid);


--
-- Name: submissionreplacementscopevalue submissionreplacementscopevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.submissionreplacementscopevalue
    ADD CONSTRAINT submissionreplacementscopevalue_pkey PRIMARY KEY (systemid);


--
-- Name: submissionresultvalue submissionresultvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.submissionresultvalue
    ADD CONSTRAINT submissionresultvalue_pkey PRIMARY KEY (systemid);


--
-- Name: submissionstatusvalue submissionstatusvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.submissionstatusvalue
    ADD CONSTRAINT submissionstatusvalue_pkey PRIMARY KEY (systemid);


--
-- Name: submissiontypevalue submissiontypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_datamanagement; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_datamanagement.submissiontypevalue
    ADD CONSTRAINT submissiontypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: activitytypevalue activitytypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.activitytypevalue
    ADD CONSTRAINT activitytypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: activitytypevalue_translated activitytypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.activitytypevalue_translated
    ADD CONSTRAINT activitytypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: actortypevalue actortypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.actortypevalue
    ADD CONSTRAINT actortypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: actortypevalue_translated actortypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.actortypevalue_translated
    ADD CONSTRAINT actortypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: annotationhorizontalalignmentvalue annotationhorizontalalignmentvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.annotationhorizontalalignmentvalue
    ADD CONSTRAINT annotationhorizontalalignmentvalue_pkey PRIMARY KEY (systemid);


--
-- Name: annotationhorizontalalignmentvalue_translated annotationhorizontalalignmentvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.annotationhorizontalalignmentvalue_translated
    ADD CONSTRAINT annotationhorizontalalignmentvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: annotationverticalalignmentvalue annotationverticalalignmentvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.annotationverticalalignmentvalue
    ADD CONSTRAINT annotationverticalalignmentvalue_pkey PRIMARY KEY (systemid);


--
-- Name: annotationverticalalignmentvalue_translated annotationverticalalignmentvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.annotationverticalalignmentvalue_translated
    ADD CONSTRAINT annotationverticalalignmentvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: coveragetypevalue coveragetypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.coveragetypevalue
    ADD CONSTRAINT coveragetypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: coveragetypevalue_translated coveragetypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.coveragetypevalue_translated
    ADD CONSTRAINT coveragetypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: datasensitivitylevelvalue datasensitivitylevelvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.datasensitivitylevelvalue
    ADD CONSTRAINT datasensitivitylevelvalue_pkey PRIMARY KEY (systemid);


--
-- Name: datasensitivitylevelvalue_translated datasensitivitylevelvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.datasensitivitylevelvalue_translated
    ADD CONSTRAINT datasensitivitylevelvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: dataservicetypevalue dataservicetypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.dataservicetypevalue
    ADD CONSTRAINT dataservicetypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: dataservicetypevalue_translated dataservicetypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.dataservicetypevalue_translated
    ADD CONSTRAINT dataservicetypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: enhancedmeasurestypevalue enhancedmeasurestypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.enhancedmeasurestypevalue
    ADD CONSTRAINT enhancedmeasurestypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: enhancedmeasurestypevalue_translated enhancedmeasurestypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.enhancedmeasurestypevalue_translated
    ADD CONSTRAINT enhancedmeasurestypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: measurementunitsvalue measurementunitsvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.measurementunitsvalue
    ADD CONSTRAINT measurementunitsvalue_pkey PRIMARY KEY (systemid);


--
-- Name: measurementunitsvalue_translated measurementunitsvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.measurementunitsvalue_translated
    ADD CONSTRAINT measurementunitsvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: nationalorregionalcoveragevalue nationalorregionalcoveragevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.nationalorregionalcoveragevalue
    ADD CONSTRAINT nationalorregionalcoveragevalue_pkey PRIMARY KEY (systemid);


--
-- Name: nationalorregionalcoveragevalue_translated nationalorregionalcoveragevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.nationalorregionalcoveragevalue_translated
    ADD CONSTRAINT nationalorregionalcoveragevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: observationcategoryvalue observationcategoryvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationcategoryvalue
    ADD CONSTRAINT observationcategoryvalue_pkey PRIMARY KEY (systemid);


--
-- Name: observationcategoryvalue_translated observationcategoryvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationcategoryvalue_translated
    ADD CONSTRAINT observationcategoryvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: observationfeedbackratingvalue observationfeedbackratingvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationfeedbackratingvalue
    ADD CONSTRAINT observationfeedbackratingvalue_pkey PRIMARY KEY (systemid);


--
-- Name: observationfeedbackratingvalue_translated observationfeedbackratingvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationfeedbackratingvalue_translated
    ADD CONSTRAINT observationfeedbackratingvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: observationimpactvalue observationimpactvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationimpactvalue
    ADD CONSTRAINT observationimpactvalue_pkey PRIMARY KEY (systemid);


--
-- Name: observationimpactvalue_translated observationimpactvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationimpactvalue_translated
    ADD CONSTRAINT observationimpactvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: observationsharingscopeprimaryvalue observationsharingscopeprimaryvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationsharingscopeprimaryvalue
    ADD CONSTRAINT observationsharingscopeprimaryvalue_pkey PRIMARY KEY (systemid);


--
-- Name: observationsharingscopeprimaryvalue_translated observationsharingscopeprimaryvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationsharingscopeprimaryvalue_translated
    ADD CONSTRAINT observationsharingscopeprimaryvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: observationsharingscopesecondaryvalue observationsharingscopesecondaryvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationsharingscopesecondaryvalue
    ADD CONSTRAINT observationsharingscopesecondaryvalue_pkey PRIMARY KEY (systemid);


--
-- Name: observationsharingscopesecondaryvalue_translated observationsharingscopesecondaryvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationsharingscopesecondaryvalue_translated
    ADD CONSTRAINT observationsharingscopesecondaryvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: observationvisibilitystatusvalue observationvisibilitystatusvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationvisibilitystatusvalue
    ADD CONSTRAINT observationvisibilitystatusvalue_pkey PRIMARY KEY (systemid);


--
-- Name: observationvisibilitystatusvalue_translated observationvisibilitystatusvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.observationvisibilitystatusvalue_translated
    ADD CONSTRAINT observationvisibilitystatusvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: operationalstatusvalue operationalstatusvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.operationalstatusvalue
    ADD CONSTRAINT operationalstatusvalue_pkey PRIMARY KEY (systemid);


--
-- Name: operationalstatusvalue_translated operationalstatusvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.operationalstatusvalue_translated
    ADD CONSTRAINT operationalstatusvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: organisationtypevalue organisationtypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.organisationtypevalue
    ADD CONSTRAINT organisationtypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: organisationtypevalue_translated organisationtypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.organisationtypevalue_translated
    ADD CONSTRAINT organisationtypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: qualitylevelvalue qualitylevelvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.qualitylevelvalue
    ADD CONSTRAINT qualitylevelvalue_pkey PRIMARY KEY (systemid);


--
-- Name: qualitylevelvalue_translated qualitylevelvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.qualitylevelvalue_translated
    ADD CONSTRAINT qualitylevelvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: serviceareapurposevalue serviceareapurposevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.serviceareapurposevalue
    ADD CONSTRAINT serviceareapurposevalue_pkey PRIMARY KEY (systemid);


--
-- Name: serviceareapurposevalue_translated serviceareapurposevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.serviceareapurposevalue_translated
    ADD CONSTRAINT serviceareapurposevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: undergroundstatusvalue undergroundstatusvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.undergroundstatusvalue
    ADD CONSTRAINT undergroundstatusvalue_pkey PRIMARY KEY (systemid);


--
-- Name: undergroundstatusvalue_translated undergroundstatusvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.undergroundstatusvalue_translated
    ADD CONSTRAINT undergroundstatusvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: utilitytypevalue utilitytypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.utilitytypevalue
    ADD CONSTRAINT utilitytypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: utilitytypevalue_translated utilitytypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_platform; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_platform.utilitytypevalue_translated
    ADD CONSTRAINT utilitytypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: accesstypevalue accesstypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.accesstypevalue
    ADD CONSTRAINT accesstypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: accesstypevalue_translated accesstypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.accesstypevalue_translated
    ADD CONSTRAINT accesstypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: assettovov_linkedassettablevalue assettovov_linkedassettablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.assettovov_linkedassettablevalue
    ADD CONSTRAINT assettovov_linkedassettablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: assettovov_linkedvovtablevalue assettovov_linkedvovtablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.assettovov_linkedvovtablevalue
    ADD CONSTRAINT assettovov_linkedvovtablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: contactdetailstypevalue contactdetailstypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.contactdetailstypevalue
    ADD CONSTRAINT contactdetailstypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: contactdetailstypevalue_translated contactdetailstypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.contactdetailstypevalue_translated
    ADD CONSTRAINT contactdetailstypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: containertypevalue containertypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.containertypevalue
    ADD CONSTRAINT containertypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: containertypevalue_translated containertypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.containertypevalue_translated
    ADD CONSTRAINT containertypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: conveyancecategoryvalue conveyancecategoryvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.conveyancecategoryvalue
    ADD CONSTRAINT conveyancecategoryvalue_pkey PRIMARY KEY (systemid);


--
-- Name: conveyancecategoryvalue_translated conveyancecategoryvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.conveyancecategoryvalue_translated
    ADD CONSTRAINT conveyancecategoryvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: conveyancemethodvalue conveyancemethodvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.conveyancemethodvalue
    ADD CONSTRAINT conveyancemethodvalue_pkey PRIMARY KEY (systemid);


--
-- Name: conveyancemethodvalue_translated conveyancemethodvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.conveyancemethodvalue_translated
    ADD CONSTRAINT conveyancemethodvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: conveyancetoaccessory_linkedaccessorytablevalue conveyancetoaccessory_linkedaccessorytablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.conveyancetoaccessory_linkedaccessorytablevalue
    ADD CONSTRAINT conveyancetoaccessory_linkedaccessorytablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: conveyancetoaccessory_linkedconveyancetablevalue conveyancetoaccessory_linkedconveyancetablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.conveyancetoaccessory_linkedconveyancetablevalue
    ADD CONSTRAINT conveyancetoaccessory_linkedconveyancetablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: depthmethodvalue depthmethodvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.depthmethodvalue
    ADD CONSTRAINT depthmethodvalue_pkey PRIMARY KEY (systemid);


--
-- Name: depthmethodvalue_translated depthmethodvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.depthmethodvalue_translated
    ADD CONSTRAINT depthmethodvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: designationpurposevalue designationpurposevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.designationpurposevalue
    ADD CONSTRAINT designationpurposevalue_pkey PRIMARY KEY (systemid);


--
-- Name: designationpurposevalue_translated designationpurposevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.designationpurposevalue_translated
    ADD CONSTRAINT designationpurposevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: featuretypevalue featuretypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.featuretypevalue
    ADD CONSTRAINT featuretypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: featuretypevalue_translated featuretypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.featuretypevalue_translated
    ADD CONSTRAINT featuretypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: guidance_linkedobjecttablevalue guidance_linkedobjecttablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.guidance_linkedobjecttablevalue
    ADD CONSTRAINT guidance_linkedobjecttablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: horizontalmeasurementmethodvalue horizontalmeasurementmethodvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.horizontalmeasurementmethodvalue
    ADD CONSTRAINT horizontalmeasurementmethodvalue_pkey PRIMARY KEY (systemid);


--
-- Name: horizontalmeasurementmethodvalue_translated horizontalmeasurementmethodvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.horizontalmeasurementmethodvalue_translated
    ADD CONSTRAINT horizontalmeasurementmethodvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: installationmethodtypevalue installationmethodtypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.installationmethodtypevalue
    ADD CONSTRAINT installationmethodtypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: installationmethodtypevalue_translated installationmethodtypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.installationmethodtypevalue_translated
    ADD CONSTRAINT installationmethodtypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: intendedpermanencevalue intendedpermanencevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.intendedpermanencevalue
    ADD CONSTRAINT intendedpermanencevalue_pkey PRIMARY KEY (systemid);


--
-- Name: intendedpermanencevalue_translated intendedpermanencevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.intendedpermanencevalue_translated
    ADD CONSTRAINT intendedpermanencevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: linkedfile_linkedobjecttablevalue linkedfile_linkedobjecttablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.linkedfile_linkedobjecttablevalue
    ADD CONSTRAINT linkedfile_linkedobjecttablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: linktolinkzoi_linkedlinkedzoneofinteresttablevalue linktolinkzoi_linkedlinkedzoneofinteresttablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.linktolinkzoi_linkedlinkedzoneofinteresttablevalue
    ADD CONSTRAINT linktolinkzoi_linkedlinkedzoneofinteresttablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: linktolinkzoi_linkedlinktablevalue linktolinkzoi_linkedlinktablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.linktolinkzoi_linkedlinktablevalue
    ADD CONSTRAINT linktolinkzoi_linkedlinktablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: localereferencetypevalue localereferencetypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.localereferencetypevalue
    ADD CONSTRAINT localereferencetypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: localereferencetypevalue_translated localereferencetypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.localereferencetypevalue_translated
    ADD CONSTRAINT localereferencetypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: locationtypevalue locationtypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.locationtypevalue
    ADD CONSTRAINT locationtypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: locationtypevalue_translated locationtypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.locationtypevalue_translated
    ADD CONSTRAINT locationtypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: materialgradevalue materialgradevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.materialgradevalue
    ADD CONSTRAINT materialgradevalue_pkey PRIMARY KEY (systemid);


--
-- Name: materialgradevalue_translated materialgradevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.materialgradevalue_translated
    ADD CONSTRAINT materialgradevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: materialvalue materialvalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.materialvalue
    ADD CONSTRAINT materialvalue_pkey PRIMARY KEY (systemid);


--
-- Name: materialvalue_translated materialvalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.materialvalue_translated
    ADD CONSTRAINT materialvalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: networkaccessorytypevalue networkaccessorytypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networkaccessorytypevalue
    ADD CONSTRAINT networkaccessorytypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networkaccessorytypevalue_translated networkaccessorytypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networkaccessorytypevalue_translated
    ADD CONSTRAINT networkaccessorytypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: networkdescriptiontypevalue networkdescriptiontypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networkdescriptiontypevalue
    ADD CONSTRAINT networkdescriptiontypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networkdescriptiontypevalue_translated networkdescriptiontypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networkdescriptiontypevalue_translated
    ADD CONSTRAINT networkdescriptiontypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: networklinkcomponenttypevalue networklinkcomponenttypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networklinkcomponenttypevalue
    ADD CONSTRAINT networklinkcomponenttypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networklinkcomponenttypevalue_translated networklinkcomponenttypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networklinkcomponenttypevalue_translated
    ADD CONSTRAINT networklinkcomponenttypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: networknodecomponenttypevalue networknodecomponenttypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networknodecomponenttypevalue
    ADD CONSTRAINT networknodecomponenttypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networknodecomponenttypevalue_translated networknodecomponenttypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networknodecomponenttypevalue_translated
    ADD CONSTRAINT networknodecomponenttypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: networktoconveyance_linkedconveyancetablevalue networktoconveyance_linkedconveyancetablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktoconveyance_linkedconveyancetablevalue
    ADD CONSTRAINT networktoconveyance_linkedconveyancetablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktoconveyance_linkednetworktablevalue networktoconveyance_linkednetworktablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktoconveyance_linkednetworktablevalue
    ADD CONSTRAINT networktoconveyance_linkednetworktablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktoservicearea_linkednetworktablevalue networktoservicearea_linkednetworktablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktoservicearea_linkednetworktablevalue
    ADD CONSTRAINT networktoservicearea_linkednetworktablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktoservicearea_linkedserviceareatablevalue networktoservicearea_linkedserviceareatablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktoservicearea_linkedserviceareatablevalue
    ADD CONSTRAINT networktoservicearea_linkedserviceareatablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktosite_linkednetworktablevalue networktosite_linkednetworktablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktosite_linkednetworktablevalue
    ADD CONSTRAINT networktosite_linkednetworktablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktosite_linkedsitetablevalue networktosite_linkedsitetablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktosite_linkedsitetablevalue
    ADD CONSTRAINT networktosite_linkedsitetablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktosubnetwork_linkednetworktablevalue networktosubnetwork_linkednetworktablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktosubnetwork_linkednetworktablevalue
    ADD CONSTRAINT networktosubnetwork_linkednetworktablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktosubnetwork_linkedsubnetworktablevalue networktosubnetwork_linkedsubnetworktablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktosubnetwork_linkedsubnetworktablevalue
    ADD CONSTRAINT networktosubnetwork_linkedsubnetworktablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktosubordinatenetwork_linkednetworktablevalue networktosubordinatenetwork_linkednetworktablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktosubordinatenetwork_linkednetworktablevalue
    ADD CONSTRAINT networktosubordinatenetwork_linkednetworktablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: networktosubordinatenetwork_linkedsubordinatenetworktablevalue networktosubordinatenetwork_linkedsubordinatenetworktablev_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.networktosubordinatenetwork_linkedsubordinatenetworktablevalue
    ADD CONSTRAINT networktosubordinatenetwork_linkedsubordinatenetworktablev_pkey PRIMARY KEY (systemid);


--
-- Name: nodetonodezoi_linkednodetablevalue nodetonodezoi_linkednodetablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.nodetonodezoi_linkednodetablevalue
    ADD CONSTRAINT nodetonodezoi_linkednodetablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: nodetonodezoi_linkednodezoneofinteresttablevalue nodetonodezoi_linkednodezoneofinteresttablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.nodetonodezoi_linkednodezoneofinteresttablevalue
    ADD CONSTRAINT nodetonodezoi_linkednodezoneofinteresttablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: nonutilityobjecttypevalue nonutilityobjecttypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.nonutilityobjecttypevalue
    ADD CONSTRAINT nonutilityobjecttypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: nonutilityobjecttypevalue_translated nonutilityobjecttypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.nonutilityobjecttypevalue_translated
    ADD CONSTRAINT nonutilityobjecttypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: operatingconveyanceleveltypevalue operatingconveyanceleveltypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.operatingconveyanceleveltypevalue
    ADD CONSTRAINT operatingconveyanceleveltypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: operatingconveyanceleveltypevalue_translated operatingconveyanceleveltypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.operatingconveyanceleveltypevalue_translated
    ADD CONSTRAINT operatingconveyanceleveltypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: physicalprotectiontypevalue physicalprotectiontypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.physicalprotectiontypevalue
    ADD CONSTRAINT physicalprotectiontypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: physicalprotectiontypevalue_translated physicalprotectiontypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.physicalprotectiontypevalue_translated
    ADD CONSTRAINT physicalprotectiontypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: planningareatypevalue planningareatypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.planningareatypevalue
    ADD CONSTRAINT planningareatypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: planningareatypevalue_translated planningareatypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.planningareatypevalue_translated
    ADD CONSTRAINT planningareatypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: serviceareatypevalue serviceareatypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.serviceareatypevalue
    ADD CONSTRAINT serviceareatypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: serviceareatypevalue_translated serviceareatypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.serviceareatypevalue_translated
    ADD CONSTRAINT serviceareatypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: sewerdepthtypevalue sewerdepthtypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.sewerdepthtypevalue
    ADD CONSTRAINT sewerdepthtypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: sewerdepthtypevalue_translated sewerdepthtypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.sewerdepthtypevalue_translated
    ADD CONSTRAINT sewerdepthtypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: sitetoasset_linkedassettablevalue sitetoasset_linkedassettablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.sitetoasset_linkedassettablevalue
    ADD CONSTRAINT sitetoasset_linkedassettablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: sitetoasset_linkedsitetablevalue sitetoasset_linkedsitetablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.sitetoasset_linkedsitetablevalue
    ADD CONSTRAINT sitetoasset_linkedsitetablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: sitetositezoi_linkedsitetablevalue sitetositezoi_linkedsitetablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.sitetositezoi_linkedsitetablevalue
    ADD CONSTRAINT sitetositezoi_linkedsitetablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: sitetositezoi_linkedsitezoitablevalue sitetositezoi_linkedsitezoitablevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.sitetositezoi_linkedsitezoitablevalue
    ADD CONSTRAINT sitetositezoi_linkedsitezoitablevalue_pkey PRIMARY KEY (systemid);


--
-- Name: sitetypevalue sitetypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.sitetypevalue
    ADD CONSTRAINT sitetypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: sitetypevalue_translated sitetypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.sitetypevalue_translated
    ADD CONSTRAINT sitetypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: supporttypevalue supporttypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.supporttypevalue
    ADD CONSTRAINT supporttypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: supporttypevalue_translated supporttypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.supporttypevalue_translated
    ADD CONSTRAINT supporttypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: temperaturerangevalue temperaturerangevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.temperaturerangevalue
    ADD CONSTRAINT temperaturerangevalue_pkey PRIMARY KEY (systemid);


--
-- Name: temperaturerangevalue_translated temperaturerangevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.temperaturerangevalue_translated
    ADD CONSTRAINT temperaturerangevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: unitoftimevalue unitoftimevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.unitoftimevalue
    ADD CONSTRAINT unitoftimevalue_pkey PRIMARY KEY (systemid);


--
-- Name: unitoftimevalue_translated unitoftimevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.unitoftimevalue_translated
    ADD CONSTRAINT unitoftimevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: utilitysubtypevalue utilitysubtypevalue_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.utilitysubtypevalue
    ADD CONSTRAINT utilitysubtypevalue_pkey PRIMARY KEY (systemid);


--
-- Name: utilitysubtypevalue_translated utilitysubtypevalue_translated_pkey; Type: CONSTRAINT; Schema: nuarcodelists_transformation; Owner: sds_admin
--

ALTER TABLE ONLY nuarcodelists_transformation.utilitysubtypevalue_translated
    ADD CONSTRAINT utilitysubtypevalue_translated_pkey PRIMARY KEY (systemid);


--
-- Name: backdropfeaturelifecycle_history backdropfeaturelifecycle_history_pkey; Type: CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.backdropfeaturelifecycle_history
    ADD CONSTRAINT backdropfeaturelifecycle_history_pkey PRIMARY KEY (systemid);


--
-- Name: nuarbackdroparea nuarbackdroparea_pkey; Type: CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroparea
    ADD CONSTRAINT nuarbackdroparea_pkey PRIMARY KEY (systemid);


--
-- Name: nuarbackdropline nuarbackdropline_pkey; Type: CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdropline
    ADD CONSTRAINT nuarbackdropline_pkey PRIMARY KEY (systemid);


--
-- Name: nuarbackdroppoint nuarbackdroppoint_pkey; Type: CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroppoint
    ADD CONSTRAINT nuarbackdroppoint_pkey PRIMARY KEY (systemid);


--
-- Name: nuarbackdropraster nuarbackdropraster_pkey; Type: CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdropraster
    ADD CONSTRAINT nuarbackdropraster_pkey PRIMARY KEY (systemid);


--
-- Name: nuarbackdroptext nuarbackdroptext_pkey; Type: CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroptext
    ADD CONSTRAINT nuarbackdroptext_pkey PRIMARY KEY (systemid);


--
-- Name: archaeologicalsite archaeologicalsite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.archaeologicalsite
    ADD CONSTRAINT archaeologicalsite_pkey PRIMARY KEY (systemid);


--
-- Name: areasofspecialscientificinterestnorthernireland areasofspecialscientificinterestnorthernireland_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.areasofspecialscientificinterestnorthernireland
    ADD CONSTRAINT areasofspecialscientificinterestnorthernireland_pkey PRIMARY KEY (systemid);


--
-- Name: conservationarea conservationarea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.conservationarea
    ADD CONSTRAINT conservationarea_pkey PRIMARY KEY (systemid);


--
-- Name: denotation denotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.denotation
    ADD CONSTRAINT denotation_pkey PRIMARY KEY (systemid);


--
-- Name: depth depth_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.depth
    ADD CONSTRAINT depth_pkey PRIMARY KEY (systemid);


--
-- Name: drainageaccessobject drainageaccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainageaccessobject
    ADD CONSTRAINT drainageaccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: drainagecontainerobject drainagecontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagecontainerobject
    ADD CONSTRAINT drainagecontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: drainagenetwork drainagenetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetwork
    ADD CONSTRAINT drainagenetwork_pkey PRIMARY KEY (systemid);


--
-- Name: drainagenetworkannotation drainagenetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkannotation
    ADD CONSTRAINT drainagenetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: drainagenetworkdescriptionobject drainagenetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkdescriptionobject
    ADD CONSTRAINT drainagenetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: drainagenetworkdimension drainagenetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkdimension
    ADD CONSTRAINT drainagenetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: drainagenetworklink drainagenetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworklink
    ADD CONSTRAINT drainagenetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: drainagenetworklinkzoneofinterest drainagenetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworklinkzoneofinterest
    ADD CONSTRAINT drainagenetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: drainagenetworknode drainagenetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworknode
    ADD CONSTRAINT drainagenetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: drainagenetworknodezoneofinterest drainagenetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworknodezoneofinterest
    ADD CONSTRAINT drainagenetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: drainagephysicalprotectionobject drainagephysicalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagephysicalprotectionobject
    ADD CONSTRAINT drainagephysicalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: drainageservicearea drainageservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainageservicearea
    ADD CONSTRAINT drainageservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: drainagesite drainagesite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesite
    ADD CONSTRAINT drainagesite_pkey PRIMARY KEY (systemid);


--
-- Name: drainagesitezoneofinterest drainagesitezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesitezoneofinterest
    ADD CONSTRAINT drainagesitezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: drainagesupportobject drainagesupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesupportobject
    ADD CONSTRAINT drainagesupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: electricityaccessobject electricityaccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityaccessobject
    ADD CONSTRAINT electricityaccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: electricitycontainerobject electricitycontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitycontainerobject
    ADD CONSTRAINT electricitycontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: electricitynetwork electricitynetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetwork
    ADD CONSTRAINT electricitynetwork_pkey PRIMARY KEY (systemid);


--
-- Name: electricitynetworkannotation electricitynetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkannotation
    ADD CONSTRAINT electricitynetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: electricitynetworkdescriptionobject electricitynetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkdescriptionobject
    ADD CONSTRAINT electricitynetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: electricitynetworkdimension electricitynetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkdimension
    ADD CONSTRAINT electricitynetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: electricitynetworklink electricitynetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworklink
    ADD CONSTRAINT electricitynetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: electricitynetworklinkzoneofinterest electricitynetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworklinkzoneofinterest
    ADD CONSTRAINT electricitynetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: electricitynetworknode electricitynetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworknode
    ADD CONSTRAINT electricitynetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: electricitynetworknodezoneofinterest electricitynetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworknodezoneofinterest
    ADD CONSTRAINT electricitynetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: electricityphysicalprotectionobject electricityphysicalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityphysicalprotectionobject
    ADD CONSTRAINT electricityphysicalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: electricityservicearea electricityservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityservicearea
    ADD CONSTRAINT electricityservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: electricitysite electricitysite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysite
    ADD CONSTRAINT electricitysite_pkey PRIMARY KEY (systemid);


--
-- Name: electricitysitezoneofinterest electricitysitezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysitezoneofinterest
    ADD CONSTRAINT electricitysitezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: electricitysupportobject electricitysupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysupportobject
    ADD CONSTRAINT electricitysupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsaccessobject fuelandchemicalsaccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsaccessobject
    ADD CONSTRAINT fuelandchemicalsaccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalscontainerobject fuelandchemicalscontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalscontainerobject
    ADD CONSTRAINT fuelandchemicalscontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsnetwork fuelandchemicalsnetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetwork
    ADD CONSTRAINT fuelandchemicalsnetwork_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsnetworkannotation fuelandchemicalsnetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkannotation
    ADD CONSTRAINT fuelandchemicalsnetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsnetworkdescriptionobject fuelandchemicalsnetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkdescriptionobject
    ADD CONSTRAINT fuelandchemicalsnetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsnetworkdimension fuelandchemicalsnetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkdimension
    ADD CONSTRAINT fuelandchemicalsnetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsnetworklink fuelandchemicalsnetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworklink
    ADD CONSTRAINT fuelandchemicalsnetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsnetworklinkzoneofinterest fuelandchemicalsnetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworklinkzoneofinterest
    ADD CONSTRAINT fuelandchemicalsnetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsnetworknode fuelandchemicalsnetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworknode
    ADD CONSTRAINT fuelandchemicalsnetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsnetworknodezoneofinterest fuelandchemicalsnetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworknodezoneofinterest
    ADD CONSTRAINT fuelandchemicalsnetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsphysicalprotectionobject fuelandchemicalsphysicalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsphysicalprotectionobject
    ADD CONSTRAINT fuelandchemicalsphysicalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalsservicearea fuelandchemicalsservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsservicearea
    ADD CONSTRAINT fuelandchemicalsservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalssite fuelandchemicalssite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssite
    ADD CONSTRAINT fuelandchemicalssite_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalssitezoneofinterest fuelandchemicalssitezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssitezoneofinterest
    ADD CONSTRAINT fuelandchemicalssitezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: fuelandchemicalssupportobject fuelandchemicalssupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssupportobject
    ADD CONSTRAINT fuelandchemicalssupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: gasaccessobject gasaccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasaccessobject
    ADD CONSTRAINT gasaccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: gascontainerobject gascontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gascontainerobject
    ADD CONSTRAINT gascontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: gasnetwork gasnetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetwork
    ADD CONSTRAINT gasnetwork_pkey PRIMARY KEY (systemid);


--
-- Name: gasnetworkannotation gasnetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkannotation
    ADD CONSTRAINT gasnetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: gasnetworkdescriptionobject gasnetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkdescriptionobject
    ADD CONSTRAINT gasnetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: gasnetworkdimension gasnetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkdimension
    ADD CONSTRAINT gasnetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: gasnetworklink gasnetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworklink
    ADD CONSTRAINT gasnetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: gasnetworklinkzoneofinterest gasnetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworklinkzoneofinterest
    ADD CONSTRAINT gasnetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: gasnetworknode gasnetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworknode
    ADD CONSTRAINT gasnetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: gasnetworknodezoneofinterest gasnetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworknodezoneofinterest
    ADD CONSTRAINT gasnetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: gasphysicalprotectionobject gasphysicalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasphysicalprotectionobject
    ADD CONSTRAINT gasphysicalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: gasservicearea gasservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasservicearea
    ADD CONSTRAINT gasservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: gassite gassite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassite
    ADD CONSTRAINT gassite_pkey PRIMARY KEY (systemid);


--
-- Name: gassitezoneofinterest gassitezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassitezoneofinterest
    ADD CONSTRAINT gassitezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: gassupportobject gassupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassupportobject
    ADD CONSTRAINT gassupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: generalplanningarea generalplanningarea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.generalplanningarea
    ADD CONSTRAINT generalplanningarea_pkey PRIMARY KEY (systemid);


--
-- Name: horizontalmeasurementmethod horizontalmeasurementmethod_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.horizontalmeasurementmethod
    ADD CONSTRAINT horizontalmeasurementmethod_pkey PRIMARY KEY (systemid);


--
-- Name: muddienvironmentalunit muddienvironmentalunit_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.muddienvironmentalunit
    ADD CONSTRAINT muddienvironmentalunit_pkey PRIMARY KEY (systemid);


--
-- Name: nonutilityobject nonutilityobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nonutilityobject
    ADD CONSTRAINT nonutilityobject_pkey PRIMARY KEY (systemid);


--
-- Name: nuardatafeaturelifecycle_history nuardatafeaturelifecycle_history_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nuardatafeaturelifecycle_history
    ADD CONSTRAINT nuardatafeaturelifecycle_history_pkey PRIMARY KEY (systemid);


--
-- Name: nuarguidance nuarguidance_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nuarguidance
    ADD CONSTRAINT nuarguidance_pkey PRIMARY KEY (systemid);


--
-- Name: nuarlinkedfile nuarlinkedfile_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nuarlinkedfile
    ADD CONSTRAINT nuarlinkedfile_pkey PRIMARY KEY (systemid);


--
-- Name: qualitylevel qualitylevel_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.qualitylevel
    ADD CONSTRAINT qualitylevel_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_coveragetobackdropobject relationship_coveragetobackdropobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_coveragetobackdropobject
    ADD CONSTRAINT relationship_coveragetobackdropobject_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_guidance relationship_guidance_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_guidance
    ADD CONSTRAINT relationship_guidance_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_linkedfile relationship_linkedfile_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_linkedfile
    ADD CONSTRAINT relationship_linkedfile_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_linktolinkzoneofinterest relationship_linktolinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_linktolinkzoneofinterest
    ADD CONSTRAINT relationship_linktolinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_networkconveyancetonetworkaccessory relationship_networkconveyancetonetworkaccessory_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networkconveyancetonetworkaccessory
    ADD CONSTRAINT relationship_networkconveyancetonetworkaccessory_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_networktonetworkconveyance relationship_networktonetworkconveyance_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktonetworkconveyance
    ADD CONSTRAINT relationship_networktonetworkconveyance_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_networktoservicearea relationship_networktoservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktoservicearea
    ADD CONSTRAINT relationship_networktoservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_networktosite relationship_networktosite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosite
    ADD CONSTRAINT relationship_networktosite_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_networktosubnetwork relationship_networktosubnetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosubnetwork
    ADD CONSTRAINT relationship_networktosubnetwork_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_networktosubordinatenetwork relationship_networktosubordinatenetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosubordinatenetwork
    ADD CONSTRAINT relationship_networktosubordinatenetwork_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_nodetonodezoneofinterest relationship_nodetonodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_nodetonodezoneofinterest
    ADD CONSTRAINT relationship_nodetonodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_objecttocontactdetails relationship_objecttocontactdetails_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_objecttocontactdetails
    ADD CONSTRAINT relationship_objecttocontactdetails_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_sitetoasset relationship_sitetoasset_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_sitetoasset
    ADD CONSTRAINT relationship_sitetoasset_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_sitetositezoneofinterest relationship_sitetositezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_sitetositezoneofinterest
    ADD CONSTRAINT relationship_sitetositezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_subordinatenetworktorule relationship_subordinatenetworktorule_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_subordinatenetworktorule
    ADD CONSTRAINT relationship_subordinatenetworktorule_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_supplementaldatacoveragetoobject relationship_supplementaldatacoveragetoobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_supplementaldatacoveragetoobject
    ADD CONSTRAINT relationship_supplementaldatacoveragetoobject_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_variableobjectvaluetoasset relationship_variableobjectvaluetoasset_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_variableobjectvaluetoasset
    ADD CONSTRAINT relationship_variableobjectvaluetoasset_pkey PRIMARY KEY (systemid);


--
-- Name: restrictedplanningarea restrictedplanningarea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.restrictedplanningarea
    ADD CONSTRAINT restrictedplanningarea_pkey PRIMARY KEY (systemid);


--
-- Name: servicearea servicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.servicearea
    ADD CONSTRAINT servicearea_pkey PRIMARY KEY (systemid);


--
-- Name: seweraccessobject seweraccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.seweraccessobject
    ADD CONSTRAINT seweraccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: sewercontainerobject sewercontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewercontainerobject
    ADD CONSTRAINT sewercontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: sewernetwork sewernetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetwork
    ADD CONSTRAINT sewernetwork_pkey PRIMARY KEY (systemid);


--
-- Name: sewernetworkannotation sewernetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkannotation
    ADD CONSTRAINT sewernetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: sewernetworkdescriptionobject sewernetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkdescriptionobject
    ADD CONSTRAINT sewernetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: sewernetworkdimension sewernetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkdimension
    ADD CONSTRAINT sewernetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: sewernetworklink sewernetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworklink
    ADD CONSTRAINT sewernetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: sewernetworklinkzoneofinterest sewernetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworklinkzoneofinterest
    ADD CONSTRAINT sewernetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: sewernetworknode sewernetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworknode
    ADD CONSTRAINT sewernetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: sewernetworknodezoneofinterest sewernetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworknodezoneofinterest
    ADD CONSTRAINT sewernetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: sewerphysicalprotectionobject sewerphysicalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewerphysicalprotectionobject
    ADD CONSTRAINT sewerphysicalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: sewerservicearea sewerservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewerservicearea
    ADD CONSTRAINT sewerservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: sewersite sewersite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersite
    ADD CONSTRAINT sewersite_pkey PRIMARY KEY (systemid);


--
-- Name: sewersitezoneofinterest sewersitezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersitezoneofinterest
    ADD CONSTRAINT sewersitezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: sewersupportobject sewersupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersupportobject
    ADD CONSTRAINT sewersupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: siteofpreviousindustrialuse siteofpreviousindustrialuse_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.siteofpreviousindustrialuse
    ADD CONSTRAINT siteofpreviousindustrialuse_pkey PRIMARY KEY (systemid);


--
-- Name: sitesofspecialscientificinterestengland sitesofspecialscientificinterestengland_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestengland
    ADD CONSTRAINT sitesofspecialscientificinterestengland_pkey PRIMARY KEY (systemid);


--
-- Name: sitesofspecialscientificinterestscotland sitesofspecialscientificinterestscotland_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestscotland
    ADD CONSTRAINT sitesofspecialscientificinterestscotland_pkey PRIMARY KEY (systemid);


--
-- Name: sitesofspecialscientificinterestwales sitesofspecialscientificinterestwales_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestwales
    ADD CONSTRAINT sitesofspecialscientificinterestwales_pkey PRIMARY KEY (systemid);


--
-- Name: supplementaldatacoverage supplementaldatacoverage_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.supplementaldatacoverage
    ADD CONSTRAINT supplementaldatacoverage_pkey PRIMARY KEY (systemid);


--
-- Name: telcoaccessobject telcoaccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcoaccessobject
    ADD CONSTRAINT telcoaccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: telcocontainerobject telcocontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcocontainerobject
    ADD CONSTRAINT telcocontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: telconetwork telconetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetwork
    ADD CONSTRAINT telconetwork_pkey PRIMARY KEY (systemid);


--
-- Name: telconetworkannotation telconetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkannotation
    ADD CONSTRAINT telconetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: telconetworkdescriptionobject telconetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkdescriptionobject
    ADD CONSTRAINT telconetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: telconetworkdimension telconetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkdimension
    ADD CONSTRAINT telconetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: telconetworklink telconetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworklink
    ADD CONSTRAINT telconetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: telconetworklinkzoneofinterest telconetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworklinkzoneofinterest
    ADD CONSTRAINT telconetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: telconetworknode telconetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworknode
    ADD CONSTRAINT telconetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: telconetworknodezoneofinterest telconetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworknodezoneofinterest
    ADD CONSTRAINT telconetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: telcophysicalprotectionobject telcophysicalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcophysicalprotectionobject
    ADD CONSTRAINT telcophysicalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: telcoservicearea telcoservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcoservicearea
    ADD CONSTRAINT telcoservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: telcosite telcosite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcosite
    ADD CONSTRAINT telcosite_pkey PRIMARY KEY (systemid);


--
-- Name: telcositezoneofinterest telcositezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcositezoneofinterest
    ADD CONSTRAINT telcositezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: telcosupportobject telcosupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcosupportobject
    ADD CONSTRAINT telcosupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: thermalaccessobject thermalaccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalaccessobject
    ADD CONSTRAINT thermalaccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: thermalcontainerobject thermalcontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalcontainerobject
    ADD CONSTRAINT thermalcontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: thermalnetwork thermalnetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetwork
    ADD CONSTRAINT thermalnetwork_pkey PRIMARY KEY (systemid);


--
-- Name: thermalnetworkannotation thermalnetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkannotation
    ADD CONSTRAINT thermalnetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: thermalnetworkdescriptionobject thermalnetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkdescriptionobject
    ADD CONSTRAINT thermalnetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: thermalnetworkdimension thermalnetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkdimension
    ADD CONSTRAINT thermalnetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: thermalnetworklink thermalnetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworklink
    ADD CONSTRAINT thermalnetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: thermalnetworklinkzoneofinterest thermalnetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworklinkzoneofinterest
    ADD CONSTRAINT thermalnetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: thermalnetworknode thermalnetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworknode
    ADD CONSTRAINT thermalnetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: thermalnetworknodezoneofinterest thermalnetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworknodezoneofinterest
    ADD CONSTRAINT thermalnetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: thermalphysicalprotectionobject thermalphysicalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalphysicalprotectionobject
    ADD CONSTRAINT thermalphysicalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: thermalservicearea thermalservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalservicearea
    ADD CONSTRAINT thermalservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: thermalsite thermalsite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsite
    ADD CONSTRAINT thermalsite_pkey PRIMARY KEY (systemid);


--
-- Name: thermalsitezoneofinterest thermalsitezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsitezoneofinterest
    ADD CONSTRAINT thermalsitezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: thermalsupportobject thermalsupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsupportobject
    ADD CONSTRAINT thermalsupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalaccessobject transportsignalaccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalaccessobject
    ADD CONSTRAINT transportsignalaccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalcontainerobject transportsignalcontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalcontainerobject
    ADD CONSTRAINT transportsignalcontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalnetwork transportsignalnetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetwork
    ADD CONSTRAINT transportsignalnetwork_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalnetworkannotation transportsignalnetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkannotation
    ADD CONSTRAINT transportsignalnetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalnetworkdescriptionobject transportsignalnetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkdescriptionobject
    ADD CONSTRAINT transportsignalnetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalnetworkdimension transportsignalnetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkdimension
    ADD CONSTRAINT transportsignalnetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalnetworklink transportsignalnetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworklink
    ADD CONSTRAINT transportsignalnetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalnetworklinkzoneofinterest transportsignalnetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworklinkzoneofinterest
    ADD CONSTRAINT transportsignalnetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalnetworknode transportsignalnetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworknode
    ADD CONSTRAINT transportsignalnetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalnetworknodezoneofinterest transportsignalnetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworknodezoneofinterest
    ADD CONSTRAINT transportsignalnetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalprotectionobject transportsignalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalprotectionobject
    ADD CONSTRAINT transportsignalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalservicearea transportsignalservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalservicearea
    ADD CONSTRAINT transportsignalservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalsite transportsignalsite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsite
    ADD CONSTRAINT transportsignalsite_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalsitezoneofinterest transportsignalsitezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsitezoneofinterest
    ADD CONSTRAINT transportsignalsitezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: transportsignalsupportobject transportsignalsupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsupportobject
    ADD CONSTRAINT transportsignalsupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: treelocation treelocation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.treelocation
    ADD CONSTRAINT treelocation_pkey PRIMARY KEY (systemid);


--
-- Name: wateraccessobject wateraccessobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.wateraccessobject
    ADD CONSTRAINT wateraccessobject_pkey PRIMARY KEY (systemid);


--
-- Name: watercontainerobject watercontainerobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watercontainerobject
    ADD CONSTRAINT watercontainerobject_pkey PRIMARY KEY (systemid);


--
-- Name: waternetwork waternetwork_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetwork
    ADD CONSTRAINT waternetwork_pkey PRIMARY KEY (systemid);


--
-- Name: waternetworkannotation waternetworkannotation_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkannotation
    ADD CONSTRAINT waternetworkannotation_pkey PRIMARY KEY (systemid);


--
-- Name: waternetworkdescriptionobject waternetworkdescriptionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkdescriptionobject
    ADD CONSTRAINT waternetworkdescriptionobject_pkey PRIMARY KEY (systemid);


--
-- Name: waternetworkdimension waternetworkdimension_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkdimension
    ADD CONSTRAINT waternetworkdimension_pkey PRIMARY KEY (systemid);


--
-- Name: waternetworklink waternetworklink_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworklink
    ADD CONSTRAINT waternetworklink_pkey PRIMARY KEY (systemid);


--
-- Name: waternetworklinkzoneofinterest waternetworklinkzoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworklinkzoneofinterest
    ADD CONSTRAINT waternetworklinkzoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: waternetworknode waternetworknode_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworknode
    ADD CONSTRAINT waternetworknode_pkey PRIMARY KEY (systemid);


--
-- Name: waternetworknodezoneofinterest waternetworknodezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworknodezoneofinterest
    ADD CONSTRAINT waternetworknodezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: waterphysicalprotectionobject waterphysicalprotectionobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waterphysicalprotectionobject
    ADD CONSTRAINT waterphysicalprotectionobject_pkey PRIMARY KEY (systemid);


--
-- Name: waterservicearea waterservicearea_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waterservicearea
    ADD CONSTRAINT waterservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: watersite watersite_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersite
    ADD CONSTRAINT watersite_pkey PRIMARY KEY (systemid);


--
-- Name: watersitezoneofinterest watersitezoneofinterest_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersitezoneofinterest
    ADD CONSTRAINT watersitezoneofinterest_pkey PRIMARY KEY (systemid);


--
-- Name: watersupportobject watersupportobject_pkey; Type: CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersupportobject
    ADD CONSTRAINT watersupportobject_pkey PRIMARY KEY (systemid);


--
-- Name: nuaractivityproximityrule_history nuaractivityproximityrule_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractivityproximityrule_history
    ADD CONSTRAINT nuaractivityproximityrule_history_pkey PRIMARY KEY (systemid);


--
-- Name: nuaractivityproximityrule nuaractivityproximityrule_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractivityproximityrule
    ADD CONSTRAINT nuaractivityproximityrule_pkey PRIMARY KEY (systemid);


--
-- Name: nuaractor_history nuaractor_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractor_history
    ADD CONSTRAINT nuaractor_history_pkey PRIMARY KEY (systemid);


--
-- Name: nuaractor nuaractor_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractor
    ADD CONSTRAINT nuaractor_pkey PRIMARY KEY (systemid);


--
-- Name: nuarcontactdetails_history nuarcontactdetails_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuarcontactdetails_history
    ADD CONSTRAINT nuarcontactdetails_history_pkey PRIMARY KEY (systemid);


--
-- Name: nuarcontactdetails nuarcontactdetails_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuarcontactdetails
    ADD CONSTRAINT nuarcontactdetails_pkey PRIMARY KEY (systemid);


--
-- Name: nuardda_history nuardda_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuardda_history
    ADD CONSTRAINT nuardda_history_pkey PRIMARY KEY (systemid);


--
-- Name: nuardda nuardda_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuardda
    ADD CONSTRAINT nuardda_pkey PRIMARY KEY (systemid);


--
-- Name: nuardis_history nuardis_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuardis_history
    ADD CONSTRAINT nuardis_history_pkey PRIMARY KEY (systemid);


--
-- Name: nuardis nuardis_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuardis
    ADD CONSTRAINT nuardis_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortocontactdetails_history relationship_actortocontactdetails_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortocontactdetails_history
    ADD CONSTRAINT relationship_actortocontactdetails_history_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortocontactdetails relationship_actortocontactdetails_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortocontactdetails
    ADD CONSTRAINT relationship_actortocontactdetails_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortodda_history relationship_actortodda_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodda_history
    ADD CONSTRAINT relationship_actortodda_history_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortodda relationship_actortodda_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodda
    ADD CONSTRAINT relationship_actortodda_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortodis_history relationship_actortodis_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodis_history
    ADD CONSTRAINT relationship_actortodis_history_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortodis relationship_actortodis_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodis
    ADD CONSTRAINT relationship_actortodis_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortorule_history relationship_actortorule_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortorule_history
    ADD CONSTRAINT relationship_actortorule_history_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortorule relationship_actortorule_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortorule
    ADD CONSTRAINT relationship_actortorule_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortoservicearea_history relationship_actortoservicearea_history_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortoservicearea_history
    ADD CONSTRAINT relationship_actortoservicearea_history_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_actortoservicearea relationship_actortoservicearea_pkey; Type: CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortoservicearea
    ADD CONSTRAINT relationship_actortoservicearea_pkey PRIMARY KEY (systemid);


--
-- Name: nuarsourcedataset nuarsourcedataset_pkey; Type: CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsourcedataset
    ADD CONSTRAINT nuarsourcedataset_pkey PRIMARY KEY (systemid);


--
-- Name: nuarsubmissionareareplacement nuarsubmissionareareplacement_pkey; Type: CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionareareplacement
    ADD CONSTRAINT nuarsubmissionareareplacement_pkey PRIMARY KEY (systemid);


--
-- Name: nuarsubmissiondatasetreplacement nuarsubmissiondatasetreplacement_pkey; Type: CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissiondatasetreplacement
    ADD CONSTRAINT nuarsubmissiondatasetreplacement_pkey PRIMARY KEY (systemid);


--
-- Name: nuarsubmissionevent nuarsubmissionevent_pkey; Type: CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionevent
    ADD CONSTRAINT nuarsubmissionevent_pkey PRIMARY KEY (systemid);


--
-- Name: nuarsubmissionfeaturereplacement nuarsubmissionfeaturereplacement_pkey; Type: CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionfeaturereplacement
    ADD CONSTRAINT nuarsubmissionfeaturereplacement_pkey PRIMARY KEY (systemid);


--
-- Name: nuarsubmissionsourcedataset nuarsubmissionsourcedataset_pkey; Type: CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionsourcedataset
    ADD CONSTRAINT nuarsubmissionsourcedataset_pkey PRIMARY KEY (systemid);


--
-- Name: nuarsubmissionsubmissionreplacement nuarsubmissionsubmissionreplacement_pkey; Type: CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionsubmissionreplacement
    ADD CONSTRAINT nuarsubmissionsubmissionreplacement_pkey PRIMARY KEY (systemid);


--
-- Name: nuarsubmissiontargettable nuarsubmissiontargettable_pkey; Type: CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissiontargettable
    ADD CONSTRAINT nuarsubmissiontargettable_pkey PRIMARY KEY (systemid);


--
-- Name: observation observation_pkey; Type: CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observation
    ADD CONSTRAINT observation_pkey PRIMARY KEY (systemid);


--
-- Name: observationfeedback observationfeedback_pkey; Type: CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observationfeedback
    ADD CONSTRAINT observationfeedback_pkey PRIMARY KEY (systemid);


--
-- Name: observationorganisationvisibilityscope observationorganisationvisibilityscope_pkey; Type: CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observationorganisationvisibilityscope
    ADD CONSTRAINT observationorganisationvisibilityscope_pkey PRIMARY KEY (systemid);


--
-- Name: relationship_wronglyrecordedobject relationship_wronglyrecordedobject_pkey; Type: CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.relationship_wronglyrecordedobject
    ADD CONSTRAINT relationship_wronglyrecordedobject_pkey PRIMARY KEY (systemid);


--
-- Name: unidentifiedburiedobject unidentifiedburiedobject_pkey; Type: CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.unidentifiedburiedobject
    ADD CONSTRAINT unidentifiedburiedobject_pkey PRIMARY KEY (systemid);


--
-- Name: usercreatedfeaturelifecycle_history usercreatedfeaturelifecycle_history_pkey; Type: CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.usercreatedfeaturelifecycle_history
    ADD CONSTRAINT usercreatedfeaturelifecycle_history_pkey PRIMARY KEY (systemid);


--
-- Name: wronglyrecordedobject wronglyrecordedobject_pkey; Type: CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.wronglyrecordedobject
    ADD CONSTRAINT wronglyrecordedobject_pkey PRIMARY KEY (systemid);


--
-- Name: nuardatamodelchangelog nuardatamodelchangelog_pkey; Type: CONSTRAINT; Schema: nuarversion; Owner: sds_admin
--

ALTER TABLE ONLY nuarversion.nuardatamodelchangelog
    ADD CONSTRAINT nuardatamodelchangelog_pkey PRIMARY KEY (systemid);


--
-- Name: nuardatamodelmigrationhistory nuardatamodelmigrationhistory_pkey; Type: CONSTRAINT; Schema: nuarversion; Owner: sds_admin
--

ALTER TABLE ONLY nuarversion.nuardatamodelmigrationhistory
    ADD CONSTRAINT nuardatamodelmigrationhistory_pkey PRIMARY KEY (systemid);


--
-- Name: nuardatamodelschemaversions nuardatamodelschemaversions_pkey; Type: CONSTRAINT; Schema: nuarversion; Owner: sds_admin
--

ALTER TABLE ONLY nuarversion.nuardatamodelschemaversions
    ADD CONSTRAINT nuardatamodelschemaversions_pkey PRIMARY KEY (systemid);


--
-- Name: nuardatamodelversion nuardatamodelversion_pkey; Type: CONSTRAINT; Schema: nuarversion; Owner: sds_admin
--

ALTER TABLE ONLY nuarversion.nuardatamodelversion
    ADD CONSTRAINT nuardatamodelversion_pkey PRIMARY KEY (systemid);


--
-- Name: nuarschemaversion nuarschemaversion_pkey; Type: CONSTRAINT; Schema: nuarversion; Owner: sds_admin
--

ALTER TABLE ONLY nuarversion.nuarschemaversion
    ADD CONSTRAINT nuarschemaversion_pkey PRIMARY KEY (systemid);


--
-- Name: idx_nuarcustombackdrop_nuarbackdroparea_geometry; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX idx_nuarcustombackdrop_nuarbackdroparea_geometry ON nuarcustombackdrop.nuarbackdroparea USING gist (geometry);


--
-- Name: idx_nuarcustombackdrop_nuarbackdropline_geometry; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX idx_nuarcustombackdrop_nuarbackdropline_geometry ON nuarcustombackdrop.nuarbackdropline USING gist (geometry);


--
-- Name: idx_nuarcustombackdrop_nuarbackdroppoint_geometry; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX idx_nuarcustombackdrop_nuarbackdroppoint_geometry ON nuarcustombackdrop.nuarbackdroppoint USING gist (geometry);


--
-- Name: idx_nuarcustombackdrop_nuarbackdropraster_extent; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX idx_nuarcustombackdrop_nuarbackdropraster_extent ON nuarcustombackdrop.nuarbackdropraster USING gist (extent);


--
-- Name: idx_nuarcustombackdrop_nuarbackdroptext_geometry; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX idx_nuarcustombackdrop_nuarbackdroptext_geometry ON nuarcustombackdrop.nuarbackdroptext USING gist (geometry);


--
-- Name: nuarbackdroparea_dataproviderid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdroparea_dataproviderid_fk_idx ON nuarcustombackdrop.nuarbackdroparea USING btree (dataproviderid_fk);


--
-- Name: nuarbackdroparea_submissioneventid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdroparea_submissioneventid_fk_idx ON nuarcustombackdrop.nuarbackdroparea USING btree (submissioneventid_fk);


--
-- Name: nuarbackdropline_dataproviderid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdropline_dataproviderid_fk_idx ON nuarcustombackdrop.nuarbackdropline USING btree (dataproviderid_fk);


--
-- Name: nuarbackdropline_submissioneventid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdropline_submissioneventid_fk_idx ON nuarcustombackdrop.nuarbackdropline USING btree (submissioneventid_fk);


--
-- Name: nuarbackdroppoint_dataproviderid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdroppoint_dataproviderid_fk_idx ON nuarcustombackdrop.nuarbackdroppoint USING btree (dataproviderid_fk);


--
-- Name: nuarbackdroppoint_submissioneventid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdroppoint_submissioneventid_fk_idx ON nuarcustombackdrop.nuarbackdroppoint USING btree (submissioneventid_fk);


--
-- Name: nuarbackdropraster_dataproviderid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdropraster_dataproviderid_fk_idx ON nuarcustombackdrop.nuarbackdropraster USING btree (dataproviderid_fk);


--
-- Name: nuarbackdropraster_submissioneventid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdropraster_submissioneventid_fk_idx ON nuarcustombackdrop.nuarbackdropraster USING btree (submissioneventid_fk);


--
-- Name: nuarbackdroptext_dataproviderid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdroptext_dataproviderid_fk_idx ON nuarcustombackdrop.nuarbackdroptext USING btree (dataproviderid_fk);


--
-- Name: nuarbackdroptext_submissioneventid_fk_idx; Type: INDEX; Schema: nuarcustombackdrop; Owner: sds_admin
--

CREATE INDEX nuarbackdroptext_submissioneventid_fk_idx ON nuarcustombackdrop.nuarbackdroptext USING btree (submissioneventid_fk);


--
-- Name: archaeologicalsite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX archaeologicalsite_dataproviderassigneduniqueid_idx ON nuardata.archaeologicalsite USING btree (dataproviderassigneduniqueid);


--
-- Name: archaeologicalsite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX archaeologicalsite_dataproviderid_fk_idx ON nuardata.archaeologicalsite USING btree (dataproviderid_fk);


--
-- Name: archaeologicalsite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX archaeologicalsite_submissioneventid_fk_idx ON nuardata.archaeologicalsite USING btree (submissioneventid_fk);


--
-- Name: areasofspecialscientificintere_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX areasofspecialscientificintere_dataproviderassigneduniqueid_idx ON nuardata.areasofspecialscientificinterestnorthernireland USING btree (dataproviderassigneduniqueid);


--
-- Name: areasofspecialscientificinterestnorthe_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX areasofspecialscientificinterestnorthe_submissioneventid_fk_idx ON nuardata.areasofspecialscientificinterestnorthernireland USING btree (submissioneventid_fk);


--
-- Name: areasofspecialscientificinterestnortherni_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX areasofspecialscientificinterestnortherni_dataproviderid_fk_idx ON nuardata.areasofspecialscientificinterestnorthernireland USING btree (dataproviderid_fk);


--
-- Name: conservationarea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX conservationarea_dataproviderassigneduniqueid_idx ON nuardata.conservationarea USING btree (dataproviderassigneduniqueid);


--
-- Name: conservationarea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX conservationarea_dataproviderid_fk_idx ON nuardata.conservationarea USING btree (dataproviderid_fk);


--
-- Name: conservationarea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX conservationarea_submissioneventid_fk_idx ON nuardata.conservationarea USING btree (submissioneventid_fk);


--
-- Name: denotation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX denotation_dataproviderassigneduniqueid_idx ON nuardata.denotation USING btree (dataproviderassigneduniqueid);


--
-- Name: denotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX denotation_dataproviderid_fk_idx ON nuardata.denotation USING btree (dataproviderid_fk);


--
-- Name: denotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX denotation_submissioneventid_fk_idx ON nuardata.denotation USING btree (submissioneventid_fk);


--
-- Name: depth_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX depth_dataproviderassigneduniqueid_idx ON nuardata.depth USING btree (dataproviderassigneduniqueid);


--
-- Name: depth_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX depth_dataproviderid_fk_idx ON nuardata.depth USING btree (dataproviderid_fk);


--
-- Name: depth_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX depth_submissioneventid_fk_idx ON nuardata.depth USING btree (submissioneventid_fk);


--
-- Name: drainageaccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainageaccessobject_dataproviderassigneduniqueid_idx ON nuardata.drainageaccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: drainageaccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainageaccessobject_dataproviderid_fk_idx ON nuardata.drainageaccessobject USING btree (dataproviderid_fk);


--
-- Name: drainageaccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainageaccessobject_submissioneventid_fk_idx ON nuardata.drainageaccessobject USING btree (submissioneventid_fk);


--
-- Name: drainagecontainerobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagecontainerobject_dataproviderassigneduniqueid_idx ON nuardata.drainagecontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagecontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagecontainerobject_dataproviderid_fk_idx ON nuardata.drainagecontainerobject USING btree (dataproviderid_fk);


--
-- Name: drainagecontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagecontainerobject_submissioneventid_fk_idx ON nuardata.drainagecontainerobject USING btree (submissioneventid_fk);


--
-- Name: drainagenetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetwork_dataproviderassigneduniqueid_idx ON nuardata.drainagenetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagenetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetwork_dataproviderid_fk_idx ON nuardata.drainagenetwork USING btree (dataproviderid_fk);


--
-- Name: drainagenetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetwork_submissioneventid_fk_idx ON nuardata.drainagenetwork USING btree (submissioneventid_fk);


--
-- Name: drainagenetworkannotation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkannotation_dataproviderassigneduniqueid_idx ON nuardata.drainagenetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagenetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkannotation_dataproviderid_fk_idx ON nuardata.drainagenetworkannotation USING btree (dataproviderid_fk);


--
-- Name: drainagenetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkannotation_submissioneventid_fk_idx ON nuardata.drainagenetworkannotation USING btree (submissioneventid_fk);


--
-- Name: drainagenetworkdescriptionobje_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkdescriptionobje_dataproviderassigneduniqueid_idx ON nuardata.drainagenetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagenetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.drainagenetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: drainagenetworkdescriptionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkdescriptionobject_submissioneventid_fk_idx ON nuardata.drainagenetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: drainagenetworkdimension_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkdimension_dataproviderassigneduniqueid_idx ON nuardata.drainagenetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagenetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkdimension_dataproviderid_fk_idx ON nuardata.drainagenetworkdimension USING btree (dataproviderid_fk);


--
-- Name: drainagenetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworkdimension_submissioneventid_fk_idx ON nuardata.drainagenetworkdimension USING btree (submissioneventid_fk);


--
-- Name: drainagenetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworklink_dataproviderassigneduniqueid_idx ON nuardata.drainagenetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagenetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworklink_dataproviderid_fk_idx ON nuardata.drainagenetworklink USING btree (dataproviderid_fk);


--
-- Name: drainagenetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworklink_submissioneventid_fk_idx ON nuardata.drainagenetworklink USING btree (submissioneventid_fk);


--
-- Name: drainagenetworklinkzoneofinter_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworklinkzoneofinter_dataproviderassigneduniqueid_idx ON nuardata.drainagenetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagenetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.drainagenetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: drainagenetworklinkzoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworklinkzoneofinterest_submissioneventid_fk_idx ON nuardata.drainagenetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: drainagenetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworknode_dataproviderassigneduniqueid_idx ON nuardata.drainagenetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagenetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworknode_dataproviderid_fk_idx ON nuardata.drainagenetworknode USING btree (dataproviderid_fk);


--
-- Name: drainagenetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworknode_submissioneventid_fk_idx ON nuardata.drainagenetworknode USING btree (submissioneventid_fk);


--
-- Name: drainagenetworknodezoneofinter_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworknodezoneofinter_dataproviderassigneduniqueid_idx ON nuardata.drainagenetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagenetworknodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworknodezoneofinterest_dataproviderid_fk_idx ON nuardata.drainagenetworknodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: drainagenetworknodezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagenetworknodezoneofinterest_submissioneventid_fk_idx ON nuardata.drainagenetworknodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: drainagephysicalprotectionobje_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagephysicalprotectionobje_dataproviderassigneduniqueid_idx ON nuardata.drainagephysicalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagephysicalprotectionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagephysicalprotectionobject_dataproviderid_fk_idx ON nuardata.drainagephysicalprotectionobject USING btree (dataproviderid_fk);


--
-- Name: drainagephysicalprotectionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagephysicalprotectionobject_submissioneventid_fk_idx ON nuardata.drainagephysicalprotectionobject USING btree (submissioneventid_fk);


--
-- Name: drainageservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainageservicearea_dataproviderassigneduniqueid_idx ON nuardata.drainageservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: drainageservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainageservicearea_dataproviderid_fk_idx ON nuardata.drainageservicearea USING btree (dataproviderid_fk);


--
-- Name: drainageservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainageservicearea_submissioneventid_fk_idx ON nuardata.drainageservicearea USING btree (submissioneventid_fk);


--
-- Name: drainagesite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesite_dataproviderassigneduniqueid_idx ON nuardata.drainagesite USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagesite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesite_dataproviderid_fk_idx ON nuardata.drainagesite USING btree (dataproviderid_fk);


--
-- Name: drainagesite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesite_submissioneventid_fk_idx ON nuardata.drainagesite USING btree (submissioneventid_fk);


--
-- Name: drainagesitezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesitezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.drainagesitezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagesitezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesitezoneofinterest_dataproviderid_fk_idx ON nuardata.drainagesitezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: drainagesitezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesitezoneofinterest_submissioneventid_fk_idx ON nuardata.drainagesitezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: drainagesupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesupportobject_dataproviderassigneduniqueid_idx ON nuardata.drainagesupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: drainagesupportobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesupportobject_dataproviderid_fk_idx ON nuardata.drainagesupportobject USING btree (dataproviderid_fk);


--
-- Name: drainagesupportobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX drainagesupportobject_submissioneventid_fk_idx ON nuardata.drainagesupportobject USING btree (submissioneventid_fk);


--
-- Name: electricityaccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityaccessobject_dataproviderassigneduniqueid_idx ON nuardata.electricityaccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: electricityaccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityaccessobject_dataproviderid_fk_idx ON nuardata.electricityaccessobject USING btree (dataproviderid_fk);


--
-- Name: electricityaccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityaccessobject_submissioneventid_fk_idx ON nuardata.electricityaccessobject USING btree (submissioneventid_fk);


--
-- Name: electricitycontainerobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitycontainerobject_dataproviderassigneduniqueid_idx ON nuardata.electricitycontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitycontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitycontainerobject_dataproviderid_fk_idx ON nuardata.electricitycontainerobject USING btree (dataproviderid_fk);


--
-- Name: electricitycontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitycontainerobject_submissioneventid_fk_idx ON nuardata.electricitycontainerobject USING btree (submissioneventid_fk);


--
-- Name: electricitynetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetwork_dataproviderassigneduniqueid_idx ON nuardata.electricitynetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitynetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetwork_dataproviderid_fk_idx ON nuardata.electricitynetwork USING btree (dataproviderid_fk);


--
-- Name: electricitynetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetwork_submissioneventid_fk_idx ON nuardata.electricitynetwork USING btree (submissioneventid_fk);


--
-- Name: electricitynetworkannotation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkannotation_dataproviderassigneduniqueid_idx ON nuardata.electricitynetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitynetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkannotation_dataproviderid_fk_idx ON nuardata.electricitynetworkannotation USING btree (dataproviderid_fk);


--
-- Name: electricitynetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkannotation_submissioneventid_fk_idx ON nuardata.electricitynetworkannotation USING btree (submissioneventid_fk);


--
-- Name: electricitynetworkdescriptiono_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkdescriptiono_dataproviderassigneduniqueid_idx ON nuardata.electricitynetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitynetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.electricitynetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: electricitynetworkdescriptionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkdescriptionobject_submissioneventid_fk_idx ON nuardata.electricitynetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: electricitynetworkdimension_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkdimension_dataproviderassigneduniqueid_idx ON nuardata.electricitynetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitynetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkdimension_dataproviderid_fk_idx ON nuardata.electricitynetworkdimension USING btree (dataproviderid_fk);


--
-- Name: electricitynetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworkdimension_submissioneventid_fk_idx ON nuardata.electricitynetworkdimension USING btree (submissioneventid_fk);


--
-- Name: electricitynetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworklink_dataproviderassigneduniqueid_idx ON nuardata.electricitynetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitynetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworklink_dataproviderid_fk_idx ON nuardata.electricitynetworklink USING btree (dataproviderid_fk);


--
-- Name: electricitynetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworklink_submissioneventid_fk_idx ON nuardata.electricitynetworklink USING btree (submissioneventid_fk);


--
-- Name: electricitynetworklinkzoneofin_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworklinkzoneofin_dataproviderassigneduniqueid_idx ON nuardata.electricitynetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitynetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.electricitynetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: electricitynetworklinkzoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworklinkzoneofinterest_submissioneventid_fk_idx ON nuardata.electricitynetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: electricitynetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworknode_dataproviderassigneduniqueid_idx ON nuardata.electricitynetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitynetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworknode_dataproviderid_fk_idx ON nuardata.electricitynetworknode USING btree (dataproviderid_fk);


--
-- Name: electricitynetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworknode_submissioneventid_fk_idx ON nuardata.electricitynetworknode USING btree (submissioneventid_fk);


--
-- Name: electricitynetworknodezoneofin_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworknodezoneofin_dataproviderassigneduniqueid_idx ON nuardata.electricitynetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitynetworknodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworknodezoneofinterest_dataproviderid_fk_idx ON nuardata.electricitynetworknodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: electricitynetworknodezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitynetworknodezoneofinterest_submissioneventid_fk_idx ON nuardata.electricitynetworknodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: electricityphysicalprotectiono_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityphysicalprotectiono_dataproviderassigneduniqueid_idx ON nuardata.electricityphysicalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: electricityphysicalprotectionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityphysicalprotectionobject_dataproviderid_fk_idx ON nuardata.electricityphysicalprotectionobject USING btree (dataproviderid_fk);


--
-- Name: electricityphysicalprotectionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityphysicalprotectionobject_submissioneventid_fk_idx ON nuardata.electricityphysicalprotectionobject USING btree (submissioneventid_fk);


--
-- Name: electricityservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityservicearea_dataproviderassigneduniqueid_idx ON nuardata.electricityservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: electricityservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityservicearea_dataproviderid_fk_idx ON nuardata.electricityservicearea USING btree (dataproviderid_fk);


--
-- Name: electricityservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricityservicearea_submissioneventid_fk_idx ON nuardata.electricityservicearea USING btree (submissioneventid_fk);


--
-- Name: electricitysite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysite_dataproviderassigneduniqueid_idx ON nuardata.electricitysite USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitysite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysite_dataproviderid_fk_idx ON nuardata.electricitysite USING btree (dataproviderid_fk);


--
-- Name: electricitysite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysite_submissioneventid_fk_idx ON nuardata.electricitysite USING btree (submissioneventid_fk);


--
-- Name: electricitysitezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysitezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.electricitysitezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitysitezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysitezoneofinterest_dataproviderid_fk_idx ON nuardata.electricitysitezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: electricitysitezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysitezoneofinterest_submissioneventid_fk_idx ON nuardata.electricitysitezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: electricitysupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysupportobject_dataproviderassigneduniqueid_idx ON nuardata.electricitysupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: electricitysupportobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysupportobject_dataproviderid_fk_idx ON nuardata.electricitysupportobject USING btree (dataproviderid_fk);


--
-- Name: electricitysupportobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX electricitysupportobject_submissioneventid_fk_idx ON nuardata.electricitysupportobject USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsaccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsaccessobject_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsaccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsaccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsaccessobject_dataproviderid_fk_idx ON nuardata.fuelandchemicalsaccessobject USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsaccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsaccessobject_submissioneventid_fk_idx ON nuardata.fuelandchemicalsaccessobject USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalscontainerobjec_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalscontainerobjec_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalscontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalscontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalscontainerobject_dataproviderid_fk_idx ON nuardata.fuelandchemicalscontainerobject USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalscontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalscontainerobject_submissioneventid_fk_idx ON nuardata.fuelandchemicalscontainerobject USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetwork_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsnetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsnetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetwork_dataproviderid_fk_idx ON nuardata.fuelandchemicalsnetwork USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsnetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetwork_submissioneventid_fk_idx ON nuardata.fuelandchemicalsnetwork USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetworkannotat_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkannotat_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsnetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsnetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkannotation_dataproviderid_fk_idx ON nuardata.fuelandchemicalsnetworkannotation USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsnetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkannotation_submissioneventid_fk_idx ON nuardata.fuelandchemicalsnetworkannotation USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetworkdescrip_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkdescrip_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsnetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsnetworkdescriptionobje_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkdescriptionobje_submissioneventid_fk_idx ON nuardata.fuelandchemicalsnetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.fuelandchemicalsnetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsnetworkdimensi_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkdimensi_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsnetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsnetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkdimension_dataproviderid_fk_idx ON nuardata.fuelandchemicalsnetworkdimension USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsnetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworkdimension_submissioneventid_fk_idx ON nuardata.fuelandchemicalsnetworkdimension USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworklink_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsnetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsnetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworklink_dataproviderid_fk_idx ON nuardata.fuelandchemicalsnetworklink USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsnetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworklink_submissioneventid_fk_idx ON nuardata.fuelandchemicalsnetworklink USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetworklinkzon_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworklinkzon_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsnetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsnetworklinkzoneofinter_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworklinkzoneofinter_submissioneventid_fk_idx ON nuardata.fuelandchemicalsnetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.fuelandchemicalsnetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsnetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworknode_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsnetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsnetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworknode_dataproviderid_fk_idx ON nuardata.fuelandchemicalsnetworknode USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsnetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworknode_submissioneventid_fk_idx ON nuardata.fuelandchemicalsnetworknode USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetworknodezon_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworknodezon_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsnetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsnetworknodezoneofinter_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworknodezoneofinter_submissioneventid_fk_idx ON nuardata.fuelandchemicalsnetworknodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsnetworknodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsnetworknodezoneofinterest_dataproviderid_fk_idx ON nuardata.fuelandchemicalsnetworknodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsphysicalprotec_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsphysicalprotec_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsphysicalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsphysicalprotectionobje_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsphysicalprotectionobje_submissioneventid_fk_idx ON nuardata.fuelandchemicalsphysicalprotectionobject USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalsphysicalprotectionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsphysicalprotectionobject_dataproviderid_fk_idx ON nuardata.fuelandchemicalsphysicalprotectionobject USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsservicearea_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalsservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalsservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsservicearea_dataproviderid_fk_idx ON nuardata.fuelandchemicalsservicearea USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalsservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalsservicearea_submissioneventid_fk_idx ON nuardata.fuelandchemicalsservicearea USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalssite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssite_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalssite USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalssite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssite_dataproviderid_fk_idx ON nuardata.fuelandchemicalssite USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalssite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssite_submissioneventid_fk_idx ON nuardata.fuelandchemicalssite USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalssitezoneofinte_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssitezoneofinte_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalssitezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalssitezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssitezoneofinterest_dataproviderid_fk_idx ON nuardata.fuelandchemicalssitezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalssitezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssitezoneofinterest_submissioneventid_fk_idx ON nuardata.fuelandchemicalssitezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: fuelandchemicalssupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssupportobject_dataproviderassigneduniqueid_idx ON nuardata.fuelandchemicalssupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: fuelandchemicalssupportobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssupportobject_dataproviderid_fk_idx ON nuardata.fuelandchemicalssupportobject USING btree (dataproviderid_fk);


--
-- Name: fuelandchemicalssupportobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX fuelandchemicalssupportobject_submissioneventid_fk_idx ON nuardata.fuelandchemicalssupportobject USING btree (submissioneventid_fk);


--
-- Name: gasaccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasaccessobject_dataproviderassigneduniqueid_idx ON nuardata.gasaccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: gasaccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasaccessobject_dataproviderid_fk_idx ON nuardata.gasaccessobject USING btree (dataproviderid_fk);


--
-- Name: gasaccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasaccessobject_submissioneventid_fk_idx ON nuardata.gasaccessobject USING btree (submissioneventid_fk);


--
-- Name: gascontainerobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gascontainerobject_dataproviderassigneduniqueid_idx ON nuardata.gascontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: gascontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gascontainerobject_dataproviderid_fk_idx ON nuardata.gascontainerobject USING btree (dataproviderid_fk);


--
-- Name: gascontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gascontainerobject_submissioneventid_fk_idx ON nuardata.gascontainerobject USING btree (submissioneventid_fk);


--
-- Name: gasnetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetwork_dataproviderassigneduniqueid_idx ON nuardata.gasnetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: gasnetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetwork_dataproviderid_fk_idx ON nuardata.gasnetwork USING btree (dataproviderid_fk);


--
-- Name: gasnetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetwork_submissioneventid_fk_idx ON nuardata.gasnetwork USING btree (submissioneventid_fk);


--
-- Name: gasnetworkannotation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkannotation_dataproviderassigneduniqueid_idx ON nuardata.gasnetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: gasnetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkannotation_dataproviderid_fk_idx ON nuardata.gasnetworkannotation USING btree (dataproviderid_fk);


--
-- Name: gasnetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkannotation_submissioneventid_fk_idx ON nuardata.gasnetworkannotation USING btree (submissioneventid_fk);


--
-- Name: gasnetworkdescriptionobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkdescriptionobject_dataproviderassigneduniqueid_idx ON nuardata.gasnetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: gasnetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.gasnetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: gasnetworkdescriptionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkdescriptionobject_submissioneventid_fk_idx ON nuardata.gasnetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: gasnetworkdimension_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkdimension_dataproviderassigneduniqueid_idx ON nuardata.gasnetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: gasnetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkdimension_dataproviderid_fk_idx ON nuardata.gasnetworkdimension USING btree (dataproviderid_fk);


--
-- Name: gasnetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworkdimension_submissioneventid_fk_idx ON nuardata.gasnetworkdimension USING btree (submissioneventid_fk);


--
-- Name: gasnetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworklink_dataproviderassigneduniqueid_idx ON nuardata.gasnetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: gasnetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworklink_dataproviderid_fk_idx ON nuardata.gasnetworklink USING btree (dataproviderid_fk);


--
-- Name: gasnetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworklink_submissioneventid_fk_idx ON nuardata.gasnetworklink USING btree (submissioneventid_fk);


--
-- Name: gasnetworklinkzoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworklinkzoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.gasnetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: gasnetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.gasnetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: gasnetworklinkzoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworklinkzoneofinterest_submissioneventid_fk_idx ON nuardata.gasnetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: gasnetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworknode_dataproviderassigneduniqueid_idx ON nuardata.gasnetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: gasnetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworknode_dataproviderid_fk_idx ON nuardata.gasnetworknode USING btree (dataproviderid_fk);


--
-- Name: gasnetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworknode_submissioneventid_fk_idx ON nuardata.gasnetworknode USING btree (submissioneventid_fk);


--
-- Name: gasnetworknodezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworknodezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.gasnetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: gasnetworknodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworknodezoneofinterest_dataproviderid_fk_idx ON nuardata.gasnetworknodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: gasnetworknodezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasnetworknodezoneofinterest_submissioneventid_fk_idx ON nuardata.gasnetworknodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: gasphysicalprotectionobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasphysicalprotectionobject_dataproviderassigneduniqueid_idx ON nuardata.gasphysicalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: gasphysicalprotectionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasphysicalprotectionobject_dataproviderid_fk_idx ON nuardata.gasphysicalprotectionobject USING btree (dataproviderid_fk);


--
-- Name: gasphysicalprotectionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasphysicalprotectionobject_submissioneventid_fk_idx ON nuardata.gasphysicalprotectionobject USING btree (submissioneventid_fk);


--
-- Name: gasservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasservicearea_dataproviderassigneduniqueid_idx ON nuardata.gasservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: gasservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasservicearea_dataproviderid_fk_idx ON nuardata.gasservicearea USING btree (dataproviderid_fk);


--
-- Name: gasservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gasservicearea_submissioneventid_fk_idx ON nuardata.gasservicearea USING btree (submissioneventid_fk);


--
-- Name: gassite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassite_dataproviderassigneduniqueid_idx ON nuardata.gassite USING btree (dataproviderassigneduniqueid);


--
-- Name: gassite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassite_dataproviderid_fk_idx ON nuardata.gassite USING btree (dataproviderid_fk);


--
-- Name: gassite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassite_submissioneventid_fk_idx ON nuardata.gassite USING btree (submissioneventid_fk);


--
-- Name: gassitezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassitezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.gassitezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: gassitezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassitezoneofinterest_dataproviderid_fk_idx ON nuardata.gassitezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: gassitezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassitezoneofinterest_submissioneventid_fk_idx ON nuardata.gassitezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: gassupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassupportobject_dataproviderassigneduniqueid_idx ON nuardata.gassupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: gassupportobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassupportobject_dataproviderid_fk_idx ON nuardata.gassupportobject USING btree (dataproviderid_fk);


--
-- Name: gassupportobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX gassupportobject_submissioneventid_fk_idx ON nuardata.gassupportobject USING btree (submissioneventid_fk);


--
-- Name: generalplanningarea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX generalplanningarea_dataproviderassigneduniqueid_idx ON nuardata.generalplanningarea USING btree (dataproviderassigneduniqueid);


--
-- Name: generalplanningarea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX generalplanningarea_dataproviderid_fk_idx ON nuardata.generalplanningarea USING btree (dataproviderid_fk);


--
-- Name: generalplanningarea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX generalplanningarea_submissioneventid_fk_idx ON nuardata.generalplanningarea USING btree (submissioneventid_fk);


--
-- Name: horizontalmeasurementmethod_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX horizontalmeasurementmethod_dataproviderassigneduniqueid_idx ON nuardata.horizontalmeasurementmethod USING btree (dataproviderassigneduniqueid);


--
-- Name: horizontalmeasurementmethod_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX horizontalmeasurementmethod_dataproviderid_fk_idx ON nuardata.horizontalmeasurementmethod USING btree (dataproviderid_fk);


--
-- Name: horizontalmeasurementmethod_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX horizontalmeasurementmethod_submissioneventid_fk_idx ON nuardata.horizontalmeasurementmethod USING btree (submissioneventid_fk);


--
-- Name: idx_nuardata_archaeologicalsite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_archaeologicalsite_geometry ON nuardata.archaeologicalsite USING gist (geometry);


--
-- Name: idx_nuardata_areasofspecialscientificinterestnorthernireland_ge; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_areasofspecialscientificinterestnorthernireland_ge ON nuardata.areasofspecialscientificinterestnorthernireland USING gist (geometry);


--
-- Name: idx_nuardata_conservationarea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_conservationarea_geometry ON nuardata.conservationarea USING gist (geometry);


--
-- Name: idx_nuardata_denotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_denotation_geometry ON nuardata.denotation USING gist (geometry);


--
-- Name: idx_nuardata_depth_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_depth_geometry ON nuardata.depth USING gist (geometry);


--
-- Name: idx_nuardata_drainageaccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainageaccessobject_geometry ON nuardata.drainageaccessobject USING gist (geometry);


--
-- Name: idx_nuardata_drainagecontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagecontainerobject_geometry ON nuardata.drainagecontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_drainagenetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetwork_geometry ON nuardata.drainagenetwork USING gist (geometry);


--
-- Name: idx_nuardata_drainagenetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkannotation_geometry ON nuardata.drainagenetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_drainagenetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdescriptionobject_geometry ON nuardata.drainagenetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_drainagenetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdimension_dimensionline ON nuardata.drainagenetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_drainagenetworkdimension_enddimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdimension_enddimensionlineextension ON nuardata.drainagenetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_drainagenetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdimension_enddimensionpoint ON nuardata.drainagenetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_drainagenetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdimension_endextensionline ON nuardata.drainagenetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_drainagenetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdimension_geometry ON nuardata.drainagenetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_drainagenetworkdimension_startdimensionlineextensi; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdimension_startdimensionlineextensi ON nuardata.drainagenetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_drainagenetworkdimension_startdimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdimension_startdimensionpoint ON nuardata.drainagenetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_drainagenetworkdimension_startextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworkdimension_startextensionline ON nuardata.drainagenetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_drainagenetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworklink_geometry ON nuardata.drainagenetworklink USING gist (geometry);


--
-- Name: idx_nuardata_drainagenetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworklinkzoneofinterest_geometry ON nuardata.drainagenetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_drainagenetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworknode_geometry ON nuardata.drainagenetworknode USING gist (geometry);


--
-- Name: idx_nuardata_drainagenetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagenetworknodezoneofinterest_geometry ON nuardata.drainagenetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_drainagephysicalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagephysicalprotectionobject_geometry ON nuardata.drainagephysicalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_drainageservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainageservicearea_geometry ON nuardata.drainageservicearea USING gist (geometry);


--
-- Name: idx_nuardata_drainagesite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagesite_geometry ON nuardata.drainagesite USING gist (geometry);


--
-- Name: idx_nuardata_drainagesitezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagesitezoneofinterest_geometry ON nuardata.drainagesitezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_drainagesupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_drainagesupportobject_geometry ON nuardata.drainagesupportobject USING gist (geometry);


--
-- Name: idx_nuardata_electricityaccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricityaccessobject_geometry ON nuardata.electricityaccessobject USING gist (geometry);


--
-- Name: idx_nuardata_electricitycontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitycontainerobject_geometry ON nuardata.electricitycontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_electricitynetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetwork_geometry ON nuardata.electricitynetwork USING gist (geometry);


--
-- Name: idx_nuardata_electricitynetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkannotation_geometry ON nuardata.electricitynetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_electricitynetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdescriptionobject_geometry ON nuardata.electricitynetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_electricitynetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdimension_dimensionline ON nuardata.electricitynetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_electricitynetworkdimension_enddimensionlineextens; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdimension_enddimensionlineextens ON nuardata.electricitynetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_electricitynetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdimension_enddimensionpoint ON nuardata.electricitynetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_electricitynetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdimension_endextensionline ON nuardata.electricitynetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_electricitynetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdimension_geometry ON nuardata.electricitynetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_electricitynetworkdimension_startdimensionlineexte; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdimension_startdimensionlineexte ON nuardata.electricitynetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_electricitynetworkdimension_startdimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdimension_startdimensionpoint ON nuardata.electricitynetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_electricitynetworkdimension_startextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworkdimension_startextensionline ON nuardata.electricitynetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_electricitynetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworklink_geometry ON nuardata.electricitynetworklink USING gist (geometry);


--
-- Name: idx_nuardata_electricitynetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworklinkzoneofinterest_geometry ON nuardata.electricitynetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_electricitynetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworknode_geometry ON nuardata.electricitynetworknode USING gist (geometry);


--
-- Name: idx_nuardata_electricitynetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitynetworknodezoneofinterest_geometry ON nuardata.electricitynetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_electricityphysicalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricityphysicalprotectionobject_geometry ON nuardata.electricityphysicalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_electricityservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricityservicearea_geometry ON nuardata.electricityservicearea USING gist (geometry);


--
-- Name: idx_nuardata_electricitysite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitysite_geometry ON nuardata.electricitysite USING gist (geometry);


--
-- Name: idx_nuardata_electricitysitezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitysitezoneofinterest_geometry ON nuardata.electricitysitezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_electricitysupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_electricitysupportobject_geometry ON nuardata.electricitysupportobject USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsaccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsaccessobject_geometry ON nuardata.fuelandchemicalsaccessobject USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalscontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalscontainerobject_geometry ON nuardata.fuelandchemicalscontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsnetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetwork_geometry ON nuardata.fuelandchemicalsnetwork USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkannotation_geometry ON nuardata.fuelandchemicalsnetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdescriptionobject_geometry ON nuardata.fuelandchemicalsnetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdimension_dimensionline ON nuardata.fuelandchemicalsnetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdimension_enddimensionlinee; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdimension_enddimensionlinee ON nuardata.fuelandchemicalsnetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdimension_enddimensionpoint ON nuardata.fuelandchemicalsnetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdimension_endextensionline ON nuardata.fuelandchemicalsnetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdimension_geometry ON nuardata.fuelandchemicalsnetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdimension_startdimensionlin; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdimension_startdimensionlin ON nuardata.fuelandchemicalsnetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdimension_startdimensionpoi; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdimension_startdimensionpoi ON nuardata.fuelandchemicalsnetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_fuelandchemicalsnetworkdimension_startextensionlin; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworkdimension_startextensionlin ON nuardata.fuelandchemicalsnetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_fuelandchemicalsnetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworklink_geometry ON nuardata.fuelandchemicalsnetworklink USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsnetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworklinkzoneofinterest_geometry ON nuardata.fuelandchemicalsnetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsnetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworknode_geometry ON nuardata.fuelandchemicalsnetworknode USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsnetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsnetworknodezoneofinterest_geometry ON nuardata.fuelandchemicalsnetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsphysicalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsphysicalprotectionobject_geometry ON nuardata.fuelandchemicalsphysicalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalsservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalsservicearea_geometry ON nuardata.fuelandchemicalsservicearea USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalssite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalssite_geometry ON nuardata.fuelandchemicalssite USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalssitezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalssitezoneofinterest_geometry ON nuardata.fuelandchemicalssitezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_fuelandchemicalssupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_fuelandchemicalssupportobject_geometry ON nuardata.fuelandchemicalssupportobject USING gist (geometry);


--
-- Name: idx_nuardata_gasaccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasaccessobject_geometry ON nuardata.gasaccessobject USING gist (geometry);


--
-- Name: idx_nuardata_gascontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gascontainerobject_geometry ON nuardata.gascontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_gasnetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetwork_geometry ON nuardata.gasnetwork USING gist (geometry);


--
-- Name: idx_nuardata_gasnetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkannotation_geometry ON nuardata.gasnetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_gasnetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdescriptionobject_geometry ON nuardata.gasnetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_gasnetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdimension_dimensionline ON nuardata.gasnetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_gasnetworkdimension_enddimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdimension_enddimensionlineextension ON nuardata.gasnetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_gasnetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdimension_enddimensionpoint ON nuardata.gasnetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_gasnetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdimension_endextensionline ON nuardata.gasnetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_gasnetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdimension_geometry ON nuardata.gasnetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_gasnetworkdimension_startdimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdimension_startdimensionlineextension ON nuardata.gasnetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_gasnetworkdimension_startdimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdimension_startdimensionpoint ON nuardata.gasnetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_gasnetworkdimension_startextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworkdimension_startextensionline ON nuardata.gasnetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_gasnetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworklink_geometry ON nuardata.gasnetworklink USING gist (geometry);


--
-- Name: idx_nuardata_gasnetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworklinkzoneofinterest_geometry ON nuardata.gasnetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_gasnetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworknode_geometry ON nuardata.gasnetworknode USING gist (geometry);


--
-- Name: idx_nuardata_gasnetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasnetworknodezoneofinterest_geometry ON nuardata.gasnetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_gasphysicalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasphysicalprotectionobject_geometry ON nuardata.gasphysicalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_gasservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gasservicearea_geometry ON nuardata.gasservicearea USING gist (geometry);


--
-- Name: idx_nuardata_gassite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gassite_geometry ON nuardata.gassite USING gist (geometry);


--
-- Name: idx_nuardata_gassitezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gassitezoneofinterest_geometry ON nuardata.gassitezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_gassupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_gassupportobject_geometry ON nuardata.gassupportobject USING gist (geometry);


--
-- Name: idx_nuardata_generalplanningarea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_generalplanningarea_geometry ON nuardata.generalplanningarea USING gist (geometry);


--
-- Name: idx_nuardata_horizontalmeasurementmethod_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_horizontalmeasurementmethod_geometry ON nuardata.horizontalmeasurementmethod USING gist (geometry);


--
-- Name: idx_nuardata_muddienvironmentalunit_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_muddienvironmentalunit_geometry ON nuardata.muddienvironmentalunit USING gist (geometry);


--
-- Name: idx_nuardata_nonutilityobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_nonutilityobject_geometry ON nuardata.nonutilityobject USING gist (geometry);


--
-- Name: idx_nuardata_nuarguidance_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_nuarguidance_geometry ON nuardata.nuarguidance USING gist (geometry);


--
-- Name: idx_nuardata_nuarlinkedfile_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_nuarlinkedfile_geometry ON nuardata.nuarlinkedfile USING gist (geometry);


--
-- Name: idx_nuardata_qualitylevel_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_qualitylevel_geometry ON nuardata.qualitylevel USING gist (geometry);


--
-- Name: idx_nuardata_restrictedplanningarea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_restrictedplanningarea_geometry ON nuardata.restrictedplanningarea USING gist (geometry);


--
-- Name: idx_nuardata_servicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_servicearea_geometry ON nuardata.servicearea USING gist (geometry);


--
-- Name: idx_nuardata_seweraccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_seweraccessobject_geometry ON nuardata.seweraccessobject USING gist (geometry);


--
-- Name: idx_nuardata_sewercontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewercontainerobject_geometry ON nuardata.sewercontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_sewernetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetwork_geometry ON nuardata.sewernetwork USING gist (geometry);


--
-- Name: idx_nuardata_sewernetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkannotation_geometry ON nuardata.sewernetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_sewernetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdescriptionobject_geometry ON nuardata.sewernetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_sewernetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdimension_dimensionline ON nuardata.sewernetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_sewernetworkdimension_enddimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdimension_enddimensionlineextension ON nuardata.sewernetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_sewernetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdimension_enddimensionpoint ON nuardata.sewernetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_sewernetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdimension_endextensionline ON nuardata.sewernetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_sewernetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdimension_geometry ON nuardata.sewernetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_sewernetworkdimension_startdimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdimension_startdimensionlineextension ON nuardata.sewernetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_sewernetworkdimension_startdimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdimension_startdimensionpoint ON nuardata.sewernetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_sewernetworkdimension_startextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworkdimension_startextensionline ON nuardata.sewernetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_sewernetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworklink_geometry ON nuardata.sewernetworklink USING gist (geometry);


--
-- Name: idx_nuardata_sewernetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworklinkzoneofinterest_geometry ON nuardata.sewernetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_sewernetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworknode_geometry ON nuardata.sewernetworknode USING gist (geometry);


--
-- Name: idx_nuardata_sewernetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewernetworknodezoneofinterest_geometry ON nuardata.sewernetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_sewerphysicalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewerphysicalprotectionobject_geometry ON nuardata.sewerphysicalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_sewerservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewerservicearea_geometry ON nuardata.sewerservicearea USING gist (geometry);


--
-- Name: idx_nuardata_sewersite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewersite_geometry ON nuardata.sewersite USING gist (geometry);


--
-- Name: idx_nuardata_sewersitezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewersitezoneofinterest_geometry ON nuardata.sewersitezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_sewersupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sewersupportobject_geometry ON nuardata.sewersupportobject USING gist (geometry);


--
-- Name: idx_nuardata_siteofpreviousindustrialuse_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_siteofpreviousindustrialuse_geometry ON nuardata.siteofpreviousindustrialuse USING gist (geometry);


--
-- Name: idx_nuardata_sitesofspecialscientificinterestengland_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sitesofspecialscientificinterestengland_geometry ON nuardata.sitesofspecialscientificinterestengland USING gist (geometry);


--
-- Name: idx_nuardata_sitesofspecialscientificinterestscotland_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sitesofspecialscientificinterestscotland_geometry ON nuardata.sitesofspecialscientificinterestscotland USING gist (geometry);


--
-- Name: idx_nuardata_sitesofspecialscientificinterestwales_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_sitesofspecialscientificinterestwales_geometry ON nuardata.sitesofspecialscientificinterestwales USING gist (geometry);


--
-- Name: idx_nuardata_supplementaldatacoverage_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_supplementaldatacoverage_geometry ON nuardata.supplementaldatacoverage USING gist (geometry);


--
-- Name: idx_nuardata_telcoaccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telcoaccessobject_geometry ON nuardata.telcoaccessobject USING gist (geometry);


--
-- Name: idx_nuardata_telcocontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telcocontainerobject_geometry ON nuardata.telcocontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_telconetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetwork_geometry ON nuardata.telconetwork USING gist (geometry);


--
-- Name: idx_nuardata_telconetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkannotation_geometry ON nuardata.telconetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_telconetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdescriptionobject_geometry ON nuardata.telconetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_telconetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdimension_dimensionline ON nuardata.telconetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_telconetworkdimension_enddimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdimension_enddimensionlineextension ON nuardata.telconetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_telconetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdimension_enddimensionpoint ON nuardata.telconetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_telconetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdimension_endextensionline ON nuardata.telconetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_telconetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdimension_geometry ON nuardata.telconetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_telconetworkdimension_startdimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdimension_startdimensionlineextension ON nuardata.telconetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_telconetworkdimension_startdimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdimension_startdimensionpoint ON nuardata.telconetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_telconetworkdimension_startextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworkdimension_startextensionline ON nuardata.telconetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_telconetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworklink_geometry ON nuardata.telconetworklink USING gist (geometry);


--
-- Name: idx_nuardata_telconetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworklinkzoneofinterest_geometry ON nuardata.telconetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_telconetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworknode_geometry ON nuardata.telconetworknode USING gist (geometry);


--
-- Name: idx_nuardata_telconetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telconetworknodezoneofinterest_geometry ON nuardata.telconetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_telcophysicalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telcophysicalprotectionobject_geometry ON nuardata.telcophysicalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_telcoservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telcoservicearea_geometry ON nuardata.telcoservicearea USING gist (geometry);


--
-- Name: idx_nuardata_telcosite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telcosite_geometry ON nuardata.telcosite USING gist (geometry);


--
-- Name: idx_nuardata_telcositezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telcositezoneofinterest_geometry ON nuardata.telcositezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_telcosupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_telcosupportobject_geometry ON nuardata.telcosupportobject USING gist (geometry);


--
-- Name: idx_nuardata_thermalaccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalaccessobject_geometry ON nuardata.thermalaccessobject USING gist (geometry);


--
-- Name: idx_nuardata_thermalcontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalcontainerobject_geometry ON nuardata.thermalcontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_thermalnetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetwork_geometry ON nuardata.thermalnetwork USING gist (geometry);


--
-- Name: idx_nuardata_thermalnetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkannotation_geometry ON nuardata.thermalnetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_thermalnetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdescriptionobject_geometry ON nuardata.thermalnetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_thermalnetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdimension_dimensionline ON nuardata.thermalnetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_thermalnetworkdimension_enddimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdimension_enddimensionlineextension ON nuardata.thermalnetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_thermalnetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdimension_enddimensionpoint ON nuardata.thermalnetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_thermalnetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdimension_endextensionline ON nuardata.thermalnetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_thermalnetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdimension_geometry ON nuardata.thermalnetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_thermalnetworkdimension_startdimensionlineextensio; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdimension_startdimensionlineextensio ON nuardata.thermalnetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_thermalnetworkdimension_startdimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdimension_startdimensionpoint ON nuardata.thermalnetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_thermalnetworkdimension_startextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworkdimension_startextensionline ON nuardata.thermalnetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_thermalnetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworklink_geometry ON nuardata.thermalnetworklink USING gist (geometry);


--
-- Name: idx_nuardata_thermalnetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworklinkzoneofinterest_geometry ON nuardata.thermalnetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_thermalnetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworknode_geometry ON nuardata.thermalnetworknode USING gist (geometry);


--
-- Name: idx_nuardata_thermalnetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalnetworknodezoneofinterest_geometry ON nuardata.thermalnetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_thermalphysicalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalphysicalprotectionobject_geometry ON nuardata.thermalphysicalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_thermalservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalservicearea_geometry ON nuardata.thermalservicearea USING gist (geometry);


--
-- Name: idx_nuardata_thermalsite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalsite_geometry ON nuardata.thermalsite USING gist (geometry);


--
-- Name: idx_nuardata_thermalsitezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalsitezoneofinterest_geometry ON nuardata.thermalsitezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_thermalsupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_thermalsupportobject_geometry ON nuardata.thermalsupportobject USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalaccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalaccessobject_geometry ON nuardata.transportsignalaccessobject USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalcontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalcontainerobject_geometry ON nuardata.transportsignalcontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalnetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetwork_geometry ON nuardata.transportsignalnetwork USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalnetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkannotation_geometry ON nuardata.transportsignalnetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalnetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdescriptionobject_geometry ON nuardata.transportsignalnetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalnetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdimension_dimensionline ON nuardata.transportsignalnetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_transportsignalnetworkdimension_enddimensionlineex; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdimension_enddimensionlineex ON nuardata.transportsignalnetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_transportsignalnetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdimension_enddimensionpoint ON nuardata.transportsignalnetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_transportsignalnetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdimension_endextensionline ON nuardata.transportsignalnetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_transportsignalnetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdimension_geometry ON nuardata.transportsignalnetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalnetworkdimension_startdimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdimension_startdimensionline ON nuardata.transportsignalnetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_transportsignalnetworkdimension_startdimensionpoin; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdimension_startdimensionpoin ON nuardata.transportsignalnetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_transportsignalnetworkdimension_startextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworkdimension_startextensionline ON nuardata.transportsignalnetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_transportsignalnetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworklink_geometry ON nuardata.transportsignalnetworklink USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalnetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworklinkzoneofinterest_geometry ON nuardata.transportsignalnetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalnetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworknode_geometry ON nuardata.transportsignalnetworknode USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalnetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalnetworknodezoneofinterest_geometry ON nuardata.transportsignalnetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalprotectionobject_geometry ON nuardata.transportsignalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalservicearea_geometry ON nuardata.transportsignalservicearea USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalsite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalsite_geometry ON nuardata.transportsignalsite USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalsitezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalsitezoneofinterest_geometry ON nuardata.transportsignalsitezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_transportsignalsupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_transportsignalsupportobject_geometry ON nuardata.transportsignalsupportobject USING gist (geometry);


--
-- Name: idx_nuardata_treelocation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_treelocation_geometry ON nuardata.treelocation USING gist (geometry);


--
-- Name: idx_nuardata_wateraccessobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_wateraccessobject_geometry ON nuardata.wateraccessobject USING gist (geometry);


--
-- Name: idx_nuardata_watercontainerobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_watercontainerobject_geometry ON nuardata.watercontainerobject USING gist (geometry);


--
-- Name: idx_nuardata_waternetwork_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetwork_geometry ON nuardata.waternetwork USING gist (geometry);


--
-- Name: idx_nuardata_waternetworkannotation_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkannotation_geometry ON nuardata.waternetworkannotation USING gist (geometry);


--
-- Name: idx_nuardata_waternetworkdescriptionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdescriptionobject_geometry ON nuardata.waternetworkdescriptionobject USING gist (geometry);


--
-- Name: idx_nuardata_waternetworkdimension_dimensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdimension_dimensionline ON nuardata.waternetworkdimension USING gist (dimensionline);


--
-- Name: idx_nuardata_waternetworkdimension_enddimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdimension_enddimensionlineextension ON nuardata.waternetworkdimension USING gist (enddimensionlineextension);


--
-- Name: idx_nuardata_waternetworkdimension_enddimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdimension_enddimensionpoint ON nuardata.waternetworkdimension USING gist (enddimensionpoint);


--
-- Name: idx_nuardata_waternetworkdimension_endextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdimension_endextensionline ON nuardata.waternetworkdimension USING gist (endextensionline);


--
-- Name: idx_nuardata_waternetworkdimension_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdimension_geometry ON nuardata.waternetworkdimension USING gist (geometry);


--
-- Name: idx_nuardata_waternetworkdimension_startdimensionlineextension; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdimension_startdimensionlineextension ON nuardata.waternetworkdimension USING gist (startdimensionlineextension);


--
-- Name: idx_nuardata_waternetworkdimension_startdimensionpoint; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdimension_startdimensionpoint ON nuardata.waternetworkdimension USING gist (startdimensionpoint);


--
-- Name: idx_nuardata_waternetworkdimension_startextensionline; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworkdimension_startextensionline ON nuardata.waternetworkdimension USING gist (startextensionline);


--
-- Name: idx_nuardata_waternetworklink_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworklink_geometry ON nuardata.waternetworklink USING gist (geometry);


--
-- Name: idx_nuardata_waternetworklinkzoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworklinkzoneofinterest_geometry ON nuardata.waternetworklinkzoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_waternetworknode_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworknode_geometry ON nuardata.waternetworknode USING gist (geometry);


--
-- Name: idx_nuardata_waternetworknodezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waternetworknodezoneofinterest_geometry ON nuardata.waternetworknodezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_waterphysicalprotectionobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waterphysicalprotectionobject_geometry ON nuardata.waterphysicalprotectionobject USING gist (geometry);


--
-- Name: idx_nuardata_waterservicearea_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_waterservicearea_geometry ON nuardata.waterservicearea USING gist (geometry);


--
-- Name: idx_nuardata_watersite_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_watersite_geometry ON nuardata.watersite USING gist (geometry);


--
-- Name: idx_nuardata_watersitezoneofinterest_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_watersitezoneofinterest_geometry ON nuardata.watersitezoneofinterest USING gist (geometry);


--
-- Name: idx_nuardata_watersupportobject_geometry; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX idx_nuardata_watersupportobject_geometry ON nuardata.watersupportobject USING gist (geometry);


--
-- Name: muddienvironmentalunit_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX muddienvironmentalunit_dataproviderassigneduniqueid_idx ON nuardata.muddienvironmentalunit USING btree (dataproviderassigneduniqueid);


--
-- Name: muddienvironmentalunit_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX muddienvironmentalunit_dataproviderid_fk_idx ON nuardata.muddienvironmentalunit USING btree (dataproviderid_fk);


--
-- Name: muddienvironmentalunit_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX muddienvironmentalunit_submissioneventid_fk_idx ON nuardata.muddienvironmentalunit USING btree (submissioneventid_fk);


--
-- Name: nonutilityobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nonutilityobject_dataproviderassigneduniqueid_idx ON nuardata.nonutilityobject USING btree (dataproviderassigneduniqueid);


--
-- Name: nonutilityobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nonutilityobject_dataproviderid_fk_idx ON nuardata.nonutilityobject USING btree (dataproviderid_fk);


--
-- Name: nonutilityobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nonutilityobject_submissioneventid_fk_idx ON nuardata.nonutilityobject USING btree (submissioneventid_fk);


--
-- Name: nuarguidance_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nuarguidance_dataproviderassigneduniqueid_idx ON nuardata.nuarguidance USING btree (dataproviderassigneduniqueid);


--
-- Name: nuarguidance_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nuarguidance_dataproviderid_fk_idx ON nuardata.nuarguidance USING btree (dataproviderid_fk);


--
-- Name: nuarguidance_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nuarguidance_submissioneventid_fk_idx ON nuardata.nuarguidance USING btree (submissioneventid_fk);


--
-- Name: nuarlinkedfile_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nuarlinkedfile_dataproviderassigneduniqueid_idx ON nuardata.nuarlinkedfile USING btree (dataproviderassigneduniqueid);


--
-- Name: nuarlinkedfile_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nuarlinkedfile_dataproviderid_fk_idx ON nuardata.nuarlinkedfile USING btree (dataproviderid_fk);


--
-- Name: nuarlinkedfile_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX nuarlinkedfile_submissioneventid_fk_idx ON nuardata.nuarlinkedfile USING btree (submissioneventid_fk);


--
-- Name: qualitylevel_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX qualitylevel_dataproviderassigneduniqueid_idx ON nuardata.qualitylevel USING btree (dataproviderassigneduniqueid);


--
-- Name: qualitylevel_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX qualitylevel_dataproviderid_fk_idx ON nuardata.qualitylevel USING btree (dataproviderid_fk);


--
-- Name: qualitylevel_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX qualitylevel_submissioneventid_fk_idx ON nuardata.qualitylevel USING btree (submissioneventid_fk);


--
-- Name: relationship_coveragetobackdropobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_coveragetobackdropobject_dataproviderid_fk_idx ON nuardata.relationship_coveragetobackdropobject USING btree (dataproviderid_fk);


--
-- Name: relationship_coveragetobackdropobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_coveragetobackdropobject_submissioneventid_fk_idx ON nuardata.relationship_coveragetobackdropobject USING btree (submissioneventid_fk);


--
-- Name: relationship_guidance_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_guidance_dataproviderid_fk_idx ON nuardata.relationship_guidance USING btree (dataproviderid_fk);


--
-- Name: relationship_guidance_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_guidance_submissioneventid_fk_idx ON nuardata.relationship_guidance USING btree (submissioneventid_fk);


--
-- Name: relationship_linkedfile_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_linkedfile_dataproviderid_fk_idx ON nuardata.relationship_linkedfile USING btree (dataproviderid_fk);


--
-- Name: relationship_linkedfile_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_linkedfile_submissioneventid_fk_idx ON nuardata.relationship_linkedfile USING btree (submissioneventid_fk);


--
-- Name: relationship_linktolinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_linktolinkzoneofinterest_dataproviderid_fk_idx ON nuardata.relationship_linktolinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: relationship_linktolinkzoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_linktolinkzoneofinterest_submissioneventid_fk_idx ON nuardata.relationship_linktolinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: relationship_networkconveyancetonetwor_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networkconveyancetonetwor_submissioneventid_fk_idx ON nuardata.relationship_networkconveyancetonetworkaccessory USING btree (submissioneventid_fk);


--
-- Name: relationship_networkconveyancetonetworkac_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networkconveyancetonetworkac_dataproviderid_fk_idx ON nuardata.relationship_networkconveyancetonetworkaccessory USING btree (dataproviderid_fk);


--
-- Name: relationship_networktonetworkconveyanc_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktonetworkconveyanc_submissioneventid_fk_idx ON nuardata.relationship_networktonetworkconveyance USING btree (submissioneventid_fk);


--
-- Name: relationship_networktonetworkconveyance_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktonetworkconveyance_dataproviderid_fk_idx ON nuardata.relationship_networktonetworkconveyance USING btree (dataproviderid_fk);


--
-- Name: relationship_networktonetworkconveyance_linkedconveyanceid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktonetworkconveyance_linkedconveyanceid_idx ON nuardata.relationship_networktonetworkconveyance USING btree (linkedconveyanceid);


--
-- Name: relationship_networktonetworkconveyance_linkednetworkid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktonetworkconveyance_linkednetworkid_idx ON nuardata.relationship_networktonetworkconveyance USING btree (linkednetworkid);


--
-- Name: relationship_networktoservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktoservicearea_dataproviderid_fk_idx ON nuardata.relationship_networktoservicearea USING btree (dataproviderid_fk);


--
-- Name: relationship_networktoservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktoservicearea_submissioneventid_fk_idx ON nuardata.relationship_networktoservicearea USING btree (submissioneventid_fk);


--
-- Name: relationship_networktosite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktosite_dataproviderid_fk_idx ON nuardata.relationship_networktosite USING btree (dataproviderid_fk);


--
-- Name: relationship_networktosite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktosite_submissioneventid_fk_idx ON nuardata.relationship_networktosite USING btree (submissioneventid_fk);


--
-- Name: relationship_networktosubnetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktosubnetwork_dataproviderid_fk_idx ON nuardata.relationship_networktosubnetwork USING btree (dataproviderid_fk);


--
-- Name: relationship_networktosubnetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktosubnetwork_submissioneventid_fk_idx ON nuardata.relationship_networktosubnetwork USING btree (submissioneventid_fk);


--
-- Name: relationship_networktosubordinatenetwo_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktosubordinatenetwo_submissioneventid_fk_idx ON nuardata.relationship_networktosubordinatenetwork USING btree (submissioneventid_fk);


--
-- Name: relationship_networktosubordinatenetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_networktosubordinatenetwork_dataproviderid_fk_idx ON nuardata.relationship_networktosubordinatenetwork USING btree (dataproviderid_fk);


--
-- Name: relationship_nodetonodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_nodetonodezoneofinterest_dataproviderid_fk_idx ON nuardata.relationship_nodetonodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: relationship_nodetonodezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_nodetonodezoneofinterest_submissioneventid_fk_idx ON nuardata.relationship_nodetonodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: relationship_objecttocontactdetails_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_objecttocontactdetails_dataproviderid_fk_idx ON nuardata.relationship_objecttocontactdetails USING btree (dataproviderid_fk);


--
-- Name: relationship_objecttocontactdetails_linkedcontactdetailsid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_objecttocontactdetails_linkedcontactdetailsid_idx ON nuardata.relationship_objecttocontactdetails USING btree (linkedcontactdetailsid);


--
-- Name: relationship_objecttocontactdetails_linkedobjectid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_objecttocontactdetails_linkedobjectid_idx ON nuardata.relationship_objecttocontactdetails USING btree (linkedobjectid);


--
-- Name: relationship_objecttocontactdetails_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_objecttocontactdetails_submissioneventid_fk_idx ON nuardata.relationship_objecttocontactdetails USING btree (submissioneventid_fk);


--
-- Name: relationship_sitetoasset_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_sitetoasset_dataproviderid_fk_idx ON nuardata.relationship_sitetoasset USING btree (dataproviderid_fk);


--
-- Name: relationship_sitetoasset_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_sitetoasset_submissioneventid_fk_idx ON nuardata.relationship_sitetoasset USING btree (submissioneventid_fk);


--
-- Name: relationship_sitetositezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_sitetositezoneofinterest_dataproviderid_fk_idx ON nuardata.relationship_sitetositezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: relationship_sitetositezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_sitetositezoneofinterest_submissioneventid_fk_idx ON nuardata.relationship_sitetositezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: relationship_subordinatenetworktorule_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_subordinatenetworktorule_dataproviderid_fk_idx ON nuardata.relationship_subordinatenetworktorule USING btree (dataproviderid_fk);


--
-- Name: relationship_subordinatenetworktorule_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_subordinatenetworktorule_submissioneventid_fk_idx ON nuardata.relationship_subordinatenetworktorule USING btree (submissioneventid_fk);


--
-- Name: relationship_supplementaldatacoveraget_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_supplementaldatacoveraget_submissioneventid_fk_idx ON nuardata.relationship_supplementaldatacoveragetoobject USING btree (submissioneventid_fk);


--
-- Name: relationship_supplementaldatacoveragetoob_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_supplementaldatacoveragetoob_dataproviderid_fk_idx ON nuardata.relationship_supplementaldatacoveragetoobject USING btree (dataproviderid_fk);


--
-- Name: relationship_variableobjectvaluetoasse_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_variableobjectvaluetoasse_submissioneventid_fk_idx ON nuardata.relationship_variableobjectvaluetoasset USING btree (submissioneventid_fk);


--
-- Name: relationship_variableobjectvaluetoasset_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX relationship_variableobjectvaluetoasset_dataproviderid_fk_idx ON nuardata.relationship_variableobjectvaluetoasset USING btree (dataproviderid_fk);


--
-- Name: restrictedplanningarea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX restrictedplanningarea_dataproviderassigneduniqueid_idx ON nuardata.restrictedplanningarea USING btree (dataproviderassigneduniqueid);


--
-- Name: restrictedplanningarea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX restrictedplanningarea_dataproviderid_fk_idx ON nuardata.restrictedplanningarea USING btree (dataproviderid_fk);


--
-- Name: restrictedplanningarea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX restrictedplanningarea_submissioneventid_fk_idx ON nuardata.restrictedplanningarea USING btree (submissioneventid_fk);


--
-- Name: servicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX servicearea_dataproviderassigneduniqueid_idx ON nuardata.servicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: servicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX servicearea_dataproviderid_fk_idx ON nuardata.servicearea USING btree (dataproviderid_fk);


--
-- Name: servicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX servicearea_submissioneventid_fk_idx ON nuardata.servicearea USING btree (submissioneventid_fk);


--
-- Name: seweraccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX seweraccessobject_dataproviderassigneduniqueid_idx ON nuardata.seweraccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: seweraccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX seweraccessobject_dataproviderid_fk_idx ON nuardata.seweraccessobject USING btree (dataproviderid_fk);


--
-- Name: seweraccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX seweraccessobject_submissioneventid_fk_idx ON nuardata.seweraccessobject USING btree (submissioneventid_fk);


--
-- Name: sewercontainerobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewercontainerobject_dataproviderassigneduniqueid_idx ON nuardata.sewercontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: sewercontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewercontainerobject_dataproviderid_fk_idx ON nuardata.sewercontainerobject USING btree (dataproviderid_fk);


--
-- Name: sewercontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewercontainerobject_submissioneventid_fk_idx ON nuardata.sewercontainerobject USING btree (submissioneventid_fk);


--
-- Name: sewernetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetwork_dataproviderassigneduniqueid_idx ON nuardata.sewernetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: sewernetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetwork_dataproviderid_fk_idx ON nuardata.sewernetwork USING btree (dataproviderid_fk);


--
-- Name: sewernetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetwork_submissioneventid_fk_idx ON nuardata.sewernetwork USING btree (submissioneventid_fk);


--
-- Name: sewernetworkannotation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkannotation_dataproviderassigneduniqueid_idx ON nuardata.sewernetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: sewernetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkannotation_dataproviderid_fk_idx ON nuardata.sewernetworkannotation USING btree (dataproviderid_fk);


--
-- Name: sewernetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkannotation_submissioneventid_fk_idx ON nuardata.sewernetworkannotation USING btree (submissioneventid_fk);


--
-- Name: sewernetworkdescriptionobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkdescriptionobject_dataproviderassigneduniqueid_idx ON nuardata.sewernetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: sewernetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.sewernetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: sewernetworkdescriptionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkdescriptionobject_submissioneventid_fk_idx ON nuardata.sewernetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: sewernetworkdimension_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkdimension_dataproviderassigneduniqueid_idx ON nuardata.sewernetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: sewernetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkdimension_dataproviderid_fk_idx ON nuardata.sewernetworkdimension USING btree (dataproviderid_fk);


--
-- Name: sewernetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworkdimension_submissioneventid_fk_idx ON nuardata.sewernetworkdimension USING btree (submissioneventid_fk);


--
-- Name: sewernetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworklink_dataproviderassigneduniqueid_idx ON nuardata.sewernetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: sewernetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworklink_dataproviderid_fk_idx ON nuardata.sewernetworklink USING btree (dataproviderid_fk);


--
-- Name: sewernetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworklink_submissioneventid_fk_idx ON nuardata.sewernetworklink USING btree (submissioneventid_fk);


--
-- Name: sewernetworklinkzoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworklinkzoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.sewernetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: sewernetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.sewernetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: sewernetworklinkzoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworklinkzoneofinterest_submissioneventid_fk_idx ON nuardata.sewernetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: sewernetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworknode_dataproviderassigneduniqueid_idx ON nuardata.sewernetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: sewernetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworknode_dataproviderid_fk_idx ON nuardata.sewernetworknode USING btree (dataproviderid_fk);


--
-- Name: sewernetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworknode_submissioneventid_fk_idx ON nuardata.sewernetworknode USING btree (submissioneventid_fk);


--
-- Name: sewernetworknodezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewernetworknodezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.sewernetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: sewerphysicalprotectionobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewerphysicalprotectionobject_dataproviderassigneduniqueid_idx ON nuardata.sewerphysicalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: sewerservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewerservicearea_dataproviderassigneduniqueid_idx ON nuardata.sewerservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: sewersite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewersite_dataproviderassigneduniqueid_idx ON nuardata.sewersite USING btree (dataproviderassigneduniqueid);


--
-- Name: sewersitezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewersitezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.sewersitezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: sewersupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sewersupportobject_dataproviderassigneduniqueid_idx ON nuardata.sewersupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: siteofpreviousindustrialuse_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX siteofpreviousindustrialuse_dataproviderassigneduniqueid_idx ON nuardata.siteofpreviousindustrialuse USING btree (dataproviderassigneduniqueid);


--
-- Name: siteofpreviousindustrialuse_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX siteofpreviousindustrialuse_dataproviderid_fk_idx ON nuardata.siteofpreviousindustrialuse USING btree (dataproviderid_fk);


--
-- Name: siteofpreviousindustrialuse_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX siteofpreviousindustrialuse_submissioneventid_fk_idx ON nuardata.siteofpreviousindustrialuse USING btree (submissioneventid_fk);


--
-- Name: sitesofspecialscientificinter_dataproviderassigneduniqueid_idx1; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificinter_dataproviderassigneduniqueid_idx1 ON nuardata.sitesofspecialscientificinterestscotland USING btree (dataproviderassigneduniqueid);


--
-- Name: sitesofspecialscientificinter_dataproviderassigneduniqueid_idx2; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificinter_dataproviderassigneduniqueid_idx2 ON nuardata.sitesofspecialscientificinterestwales USING btree (dataproviderassigneduniqueid);


--
-- Name: sitesofspecialscientificintere_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificintere_dataproviderassigneduniqueid_idx ON nuardata.sitesofspecialscientificinterestengland USING btree (dataproviderassigneduniqueid);


--
-- Name: sitesofspecialscientificinterestenglan_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificinterestenglan_submissioneventid_fk_idx ON nuardata.sitesofspecialscientificinterestengland USING btree (submissioneventid_fk);


--
-- Name: sitesofspecialscientificinterestengland_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificinterestengland_dataproviderid_fk_idx ON nuardata.sitesofspecialscientificinterestengland USING btree (dataproviderid_fk);


--
-- Name: sitesofspecialscientificinterestscotla_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificinterestscotla_submissioneventid_fk_idx ON nuardata.sitesofspecialscientificinterestscotland USING btree (submissioneventid_fk);


--
-- Name: sitesofspecialscientificinterestscotland_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificinterestscotland_dataproviderid_fk_idx ON nuardata.sitesofspecialscientificinterestscotland USING btree (dataproviderid_fk);


--
-- Name: sitesofspecialscientificinterestwales_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificinterestwales_dataproviderid_fk_idx ON nuardata.sitesofspecialscientificinterestwales USING btree (dataproviderid_fk);


--
-- Name: sitesofspecialscientificinterestwales_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX sitesofspecialscientificinterestwales_submissioneventid_fk_idx ON nuardata.sitesofspecialscientificinterestwales USING btree (submissioneventid_fk);


--
-- Name: supplementaldatacoverage_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX supplementaldatacoverage_dataproviderassigneduniqueid_idx ON nuardata.supplementaldatacoverage USING btree (dataproviderassigneduniqueid);


--
-- Name: supplementaldatacoverage_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX supplementaldatacoverage_dataproviderid_fk_idx ON nuardata.supplementaldatacoverage USING btree (dataproviderid_fk);


--
-- Name: supplementaldatacoverage_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX supplementaldatacoverage_submissioneventid_fk_idx ON nuardata.supplementaldatacoverage USING btree (submissioneventid_fk);


--
-- Name: telcoaccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcoaccessobject_dataproviderassigneduniqueid_idx ON nuardata.telcoaccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: telcoaccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcoaccessobject_dataproviderid_fk_idx ON nuardata.telcoaccessobject USING btree (dataproviderid_fk);


--
-- Name: telcoaccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcoaccessobject_submissioneventid_fk_idx ON nuardata.telcoaccessobject USING btree (submissioneventid_fk);


--
-- Name: telcocontainerobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcocontainerobject_dataproviderassigneduniqueid_idx ON nuardata.telcocontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: telcocontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcocontainerobject_dataproviderid_fk_idx ON nuardata.telcocontainerobject USING btree (dataproviderid_fk);


--
-- Name: telcocontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcocontainerobject_submissioneventid_fk_idx ON nuardata.telcocontainerobject USING btree (submissioneventid_fk);


--
-- Name: telconetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetwork_dataproviderassigneduniqueid_idx ON nuardata.telconetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: telconetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetwork_dataproviderid_fk_idx ON nuardata.telconetwork USING btree (dataproviderid_fk);


--
-- Name: telconetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetwork_submissioneventid_fk_idx ON nuardata.telconetwork USING btree (submissioneventid_fk);


--
-- Name: telconetworkannotation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkannotation_dataproviderassigneduniqueid_idx ON nuardata.telconetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: telconetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkannotation_dataproviderid_fk_idx ON nuardata.telconetworkannotation USING btree (dataproviderid_fk);


--
-- Name: telconetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkannotation_submissioneventid_fk_idx ON nuardata.telconetworkannotation USING btree (submissioneventid_fk);


--
-- Name: telconetworkdescriptionobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkdescriptionobject_dataproviderassigneduniqueid_idx ON nuardata.telconetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: telconetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.telconetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: telconetworkdescriptionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkdescriptionobject_submissioneventid_fk_idx ON nuardata.telconetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: telconetworkdimension_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkdimension_dataproviderassigneduniqueid_idx ON nuardata.telconetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: telconetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkdimension_dataproviderid_fk_idx ON nuardata.telconetworkdimension USING btree (dataproviderid_fk);


--
-- Name: telconetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworkdimension_submissioneventid_fk_idx ON nuardata.telconetworkdimension USING btree (submissioneventid_fk);


--
-- Name: telconetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworklink_dataproviderassigneduniqueid_idx ON nuardata.telconetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: telconetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworklink_dataproviderid_fk_idx ON nuardata.telconetworklink USING btree (dataproviderid_fk);


--
-- Name: telconetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworklink_submissioneventid_fk_idx ON nuardata.telconetworklink USING btree (submissioneventid_fk);


--
-- Name: telconetworklinkzoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworklinkzoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.telconetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: telconetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.telconetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: telconetworklinkzoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworklinkzoneofinterest_submissioneventid_fk_idx ON nuardata.telconetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: telconetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworknode_dataproviderassigneduniqueid_idx ON nuardata.telconetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: telconetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworknode_dataproviderid_fk_idx ON nuardata.telconetworknode USING btree (dataproviderid_fk);


--
-- Name: telconetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworknode_submissioneventid_fk_idx ON nuardata.telconetworknode USING btree (submissioneventid_fk);


--
-- Name: telconetworknodezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworknodezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.telconetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: telconetworknodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworknodezoneofinterest_dataproviderid_fk_idx ON nuardata.telconetworknodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: telconetworknodezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telconetworknodezoneofinterest_submissioneventid_fk_idx ON nuardata.telconetworknodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: telcophysicalprotectionobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcophysicalprotectionobject_dataproviderassigneduniqueid_idx ON nuardata.telcophysicalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: telcophysicalprotectionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcophysicalprotectionobject_dataproviderid_fk_idx ON nuardata.telcophysicalprotectionobject USING btree (dataproviderid_fk);


--
-- Name: telcophysicalprotectionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcophysicalprotectionobject_submissioneventid_fk_idx ON nuardata.telcophysicalprotectionobject USING btree (submissioneventid_fk);


--
-- Name: telcoservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcoservicearea_dataproviderassigneduniqueid_idx ON nuardata.telcoservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: telcoservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcoservicearea_dataproviderid_fk_idx ON nuardata.telcoservicearea USING btree (dataproviderid_fk);


--
-- Name: telcoservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcoservicearea_submissioneventid_fk_idx ON nuardata.telcoservicearea USING btree (submissioneventid_fk);


--
-- Name: telcosite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcosite_dataproviderassigneduniqueid_idx ON nuardata.telcosite USING btree (dataproviderassigneduniqueid);


--
-- Name: telcosite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcosite_dataproviderid_fk_idx ON nuardata.telcosite USING btree (dataproviderid_fk);


--
-- Name: telcosite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcosite_submissioneventid_fk_idx ON nuardata.telcosite USING btree (submissioneventid_fk);


--
-- Name: telcositezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcositezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.telcositezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: telcositezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcositezoneofinterest_dataproviderid_fk_idx ON nuardata.telcositezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: telcositezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcositezoneofinterest_submissioneventid_fk_idx ON nuardata.telcositezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: telcosupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcosupportobject_dataproviderassigneduniqueid_idx ON nuardata.telcosupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: telcosupportobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcosupportobject_dataproviderid_fk_idx ON nuardata.telcosupportobject USING btree (dataproviderid_fk);


--
-- Name: telcosupportobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX telcosupportobject_submissioneventid_fk_idx ON nuardata.telcosupportobject USING btree (submissioneventid_fk);


--
-- Name: thermalaccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalaccessobject_dataproviderassigneduniqueid_idx ON nuardata.thermalaccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalaccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalaccessobject_dataproviderid_fk_idx ON nuardata.thermalaccessobject USING btree (dataproviderid_fk);


--
-- Name: thermalaccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalaccessobject_submissioneventid_fk_idx ON nuardata.thermalaccessobject USING btree (submissioneventid_fk);


--
-- Name: thermalcontainerobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalcontainerobject_dataproviderassigneduniqueid_idx ON nuardata.thermalcontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalcontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalcontainerobject_dataproviderid_fk_idx ON nuardata.thermalcontainerobject USING btree (dataproviderid_fk);


--
-- Name: thermalcontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalcontainerobject_submissioneventid_fk_idx ON nuardata.thermalcontainerobject USING btree (submissioneventid_fk);


--
-- Name: thermalnetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetwork_dataproviderassigneduniqueid_idx ON nuardata.thermalnetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalnetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetwork_dataproviderid_fk_idx ON nuardata.thermalnetwork USING btree (dataproviderid_fk);


--
-- Name: thermalnetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetwork_submissioneventid_fk_idx ON nuardata.thermalnetwork USING btree (submissioneventid_fk);


--
-- Name: thermalnetworkannotation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkannotation_dataproviderassigneduniqueid_idx ON nuardata.thermalnetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalnetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkannotation_dataproviderid_fk_idx ON nuardata.thermalnetworkannotation USING btree (dataproviderid_fk);


--
-- Name: thermalnetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkannotation_submissioneventid_fk_idx ON nuardata.thermalnetworkannotation USING btree (submissioneventid_fk);


--
-- Name: thermalnetworkdescriptionobjec_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkdescriptionobjec_dataproviderassigneduniqueid_idx ON nuardata.thermalnetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalnetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.thermalnetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: thermalnetworkdescriptionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkdescriptionobject_submissioneventid_fk_idx ON nuardata.thermalnetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: thermalnetworkdimension_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkdimension_dataproviderassigneduniqueid_idx ON nuardata.thermalnetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalnetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkdimension_dataproviderid_fk_idx ON nuardata.thermalnetworkdimension USING btree (dataproviderid_fk);


--
-- Name: thermalnetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworkdimension_submissioneventid_fk_idx ON nuardata.thermalnetworkdimension USING btree (submissioneventid_fk);


--
-- Name: thermalnetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworklink_dataproviderassigneduniqueid_idx ON nuardata.thermalnetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalnetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworklink_dataproviderid_fk_idx ON nuardata.thermalnetworklink USING btree (dataproviderid_fk);


--
-- Name: thermalnetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworklink_submissioneventid_fk_idx ON nuardata.thermalnetworklink USING btree (submissioneventid_fk);


--
-- Name: thermalnetworklinkzoneofintere_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworklinkzoneofintere_dataproviderassigneduniqueid_idx ON nuardata.thermalnetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalnetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.thermalnetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: thermalnetworklinkzoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworklinkzoneofinterest_submissioneventid_fk_idx ON nuardata.thermalnetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: thermalnetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworknode_dataproviderassigneduniqueid_idx ON nuardata.thermalnetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalnetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworknode_dataproviderid_fk_idx ON nuardata.thermalnetworknode USING btree (dataproviderid_fk);


--
-- Name: thermalnetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworknode_submissioneventid_fk_idx ON nuardata.thermalnetworknode USING btree (submissioneventid_fk);


--
-- Name: thermalnetworknodezoneofintere_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworknodezoneofintere_dataproviderassigneduniqueid_idx ON nuardata.thermalnetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalnetworknodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworknodezoneofinterest_dataproviderid_fk_idx ON nuardata.thermalnetworknodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: thermalnetworknodezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalnetworknodezoneofinterest_submissioneventid_fk_idx ON nuardata.thermalnetworknodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: thermalphysicalprotectionobjec_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalphysicalprotectionobjec_dataproviderassigneduniqueid_idx ON nuardata.thermalphysicalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalphysicalprotectionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalphysicalprotectionobject_dataproviderid_fk_idx ON nuardata.thermalphysicalprotectionobject USING btree (dataproviderid_fk);


--
-- Name: thermalphysicalprotectionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalphysicalprotectionobject_submissioneventid_fk_idx ON nuardata.thermalphysicalprotectionobject USING btree (submissioneventid_fk);


--
-- Name: thermalservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalservicearea_dataproviderassigneduniqueid_idx ON nuardata.thermalservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalservicearea_dataproviderid_fk_idx ON nuardata.thermalservicearea USING btree (dataproviderid_fk);


--
-- Name: thermalservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalservicearea_submissioneventid_fk_idx ON nuardata.thermalservicearea USING btree (submissioneventid_fk);


--
-- Name: thermalsite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsite_dataproviderassigneduniqueid_idx ON nuardata.thermalsite USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalsite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsite_dataproviderid_fk_idx ON nuardata.thermalsite USING btree (dataproviderid_fk);


--
-- Name: thermalsite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsite_submissioneventid_fk_idx ON nuardata.thermalsite USING btree (submissioneventid_fk);


--
-- Name: thermalsitezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsitezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.thermalsitezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalsitezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsitezoneofinterest_dataproviderid_fk_idx ON nuardata.thermalsitezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: thermalsitezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsitezoneofinterest_submissioneventid_fk_idx ON nuardata.thermalsitezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: thermalsupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsupportobject_dataproviderassigneduniqueid_idx ON nuardata.thermalsupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: thermalsupportobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsupportobject_dataproviderid_fk_idx ON nuardata.thermalsupportobject USING btree (dataproviderid_fk);


--
-- Name: thermalsupportobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX thermalsupportobject_submissioneventid_fk_idx ON nuardata.thermalsupportobject USING btree (submissioneventid_fk);


--
-- Name: transportsignalaccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalaccessobject_dataproviderassigneduniqueid_idx ON nuardata.transportsignalaccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalaccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalaccessobject_dataproviderid_fk_idx ON nuardata.transportsignalaccessobject USING btree (dataproviderid_fk);


--
-- Name: transportsignalaccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalaccessobject_submissioneventid_fk_idx ON nuardata.transportsignalaccessobject USING btree (submissioneventid_fk);


--
-- Name: transportsignalcontainerobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalcontainerobject_dataproviderassigneduniqueid_idx ON nuardata.transportsignalcontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalcontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalcontainerobject_dataproviderid_fk_idx ON nuardata.transportsignalcontainerobject USING btree (dataproviderid_fk);


--
-- Name: transportsignalcontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalcontainerobject_submissioneventid_fk_idx ON nuardata.transportsignalcontainerobject USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetwork_dataproviderassigneduniqueid_idx ON nuardata.transportsignalnetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalnetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetwork_dataproviderid_fk_idx ON nuardata.transportsignalnetwork USING btree (dataproviderid_fk);


--
-- Name: transportsignalnetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetwork_submissioneventid_fk_idx ON nuardata.transportsignalnetwork USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetworkannotati_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkannotati_dataproviderassigneduniqueid_idx ON nuardata.transportsignalnetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalnetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkannotation_dataproviderid_fk_idx ON nuardata.transportsignalnetworkannotation USING btree (dataproviderid_fk);


--
-- Name: transportsignalnetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkannotation_submissioneventid_fk_idx ON nuardata.transportsignalnetworkannotation USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetworkdescript_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkdescript_dataproviderassigneduniqueid_idx ON nuardata.transportsignalnetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalnetworkdescriptionobjec_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkdescriptionobjec_submissioneventid_fk_idx ON nuardata.transportsignalnetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.transportsignalnetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: transportsignalnetworkdimensio_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkdimensio_dataproviderassigneduniqueid_idx ON nuardata.transportsignalnetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalnetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkdimension_dataproviderid_fk_idx ON nuardata.transportsignalnetworkdimension USING btree (dataproviderid_fk);


--
-- Name: transportsignalnetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworkdimension_submissioneventid_fk_idx ON nuardata.transportsignalnetworkdimension USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworklink_dataproviderassigneduniqueid_idx ON nuardata.transportsignalnetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalnetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworklink_dataproviderid_fk_idx ON nuardata.transportsignalnetworklink USING btree (dataproviderid_fk);


--
-- Name: transportsignalnetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworklink_submissioneventid_fk_idx ON nuardata.transportsignalnetworklink USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetworklinkzone_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworklinkzone_dataproviderassigneduniqueid_idx ON nuardata.transportsignalnetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalnetworklinkzoneofintere_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworklinkzoneofintere_submissioneventid_fk_idx ON nuardata.transportsignalnetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.transportsignalnetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: transportsignalnetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworknode_dataproviderassigneduniqueid_idx ON nuardata.transportsignalnetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalnetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworknode_dataproviderid_fk_idx ON nuardata.transportsignalnetworknode USING btree (dataproviderid_fk);


--
-- Name: transportsignalnetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworknode_submissioneventid_fk_idx ON nuardata.transportsignalnetworknode USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetworknodezone_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworknodezone_dataproviderassigneduniqueid_idx ON nuardata.transportsignalnetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalnetworknodezoneofintere_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworknodezoneofintere_submissioneventid_fk_idx ON nuardata.transportsignalnetworknodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: transportsignalnetworknodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalnetworknodezoneofinterest_dataproviderid_fk_idx ON nuardata.transportsignalnetworknodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: transportsignalprotectionobjec_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalprotectionobjec_dataproviderassigneduniqueid_idx ON nuardata.transportsignalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalprotectionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalprotectionobject_dataproviderid_fk_idx ON nuardata.transportsignalprotectionobject USING btree (dataproviderid_fk);


--
-- Name: transportsignalprotectionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalprotectionobject_submissioneventid_fk_idx ON nuardata.transportsignalprotectionobject USING btree (submissioneventid_fk);


--
-- Name: transportsignalservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalservicearea_dataproviderassigneduniqueid_idx ON nuardata.transportsignalservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalservicearea_dataproviderid_fk_idx ON nuardata.transportsignalservicearea USING btree (dataproviderid_fk);


--
-- Name: transportsignalservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalservicearea_submissioneventid_fk_idx ON nuardata.transportsignalservicearea USING btree (submissioneventid_fk);


--
-- Name: transportsignalsite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsite_dataproviderassigneduniqueid_idx ON nuardata.transportsignalsite USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalsite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsite_dataproviderid_fk_idx ON nuardata.transportsignalsite USING btree (dataproviderid_fk);


--
-- Name: transportsignalsite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsite_submissioneventid_fk_idx ON nuardata.transportsignalsite USING btree (submissioneventid_fk);


--
-- Name: transportsignalsitezoneofinter_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsitezoneofinter_dataproviderassigneduniqueid_idx ON nuardata.transportsignalsitezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalsitezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsitezoneofinterest_dataproviderid_fk_idx ON nuardata.transportsignalsitezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: transportsignalsitezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsitezoneofinterest_submissioneventid_fk_idx ON nuardata.transportsignalsitezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: transportsignalsupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsupportobject_dataproviderassigneduniqueid_idx ON nuardata.transportsignalsupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: transportsignalsupportobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsupportobject_dataproviderid_fk_idx ON nuardata.transportsignalsupportobject USING btree (dataproviderid_fk);


--
-- Name: transportsignalsupportobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX transportsignalsupportobject_submissioneventid_fk_idx ON nuardata.transportsignalsupportobject USING btree (submissioneventid_fk);


--
-- Name: treelocation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX treelocation_dataproviderassigneduniqueid_idx ON nuardata.treelocation USING btree (dataproviderassigneduniqueid);


--
-- Name: treelocation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX treelocation_dataproviderid_fk_idx ON nuardata.treelocation USING btree (dataproviderid_fk);


--
-- Name: treelocation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX treelocation_submissioneventid_fk_idx ON nuardata.treelocation USING btree (submissioneventid_fk);


--
-- Name: wateraccessobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX wateraccessobject_dataproviderassigneduniqueid_idx ON nuardata.wateraccessobject USING btree (dataproviderassigneduniqueid);


--
-- Name: wateraccessobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX wateraccessobject_dataproviderid_fk_idx ON nuardata.wateraccessobject USING btree (dataproviderid_fk);


--
-- Name: wateraccessobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX wateraccessobject_submissioneventid_fk_idx ON nuardata.wateraccessobject USING btree (submissioneventid_fk);


--
-- Name: watercontainerobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watercontainerobject_dataproviderassigneduniqueid_idx ON nuardata.watercontainerobject USING btree (dataproviderassigneduniqueid);


--
-- Name: watercontainerobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watercontainerobject_dataproviderid_fk_idx ON nuardata.watercontainerobject USING btree (dataproviderid_fk);


--
-- Name: watercontainerobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watercontainerobject_submissioneventid_fk_idx ON nuardata.watercontainerobject USING btree (submissioneventid_fk);


--
-- Name: waternetwork_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetwork_dataproviderassigneduniqueid_idx ON nuardata.waternetwork USING btree (dataproviderassigneduniqueid);


--
-- Name: waternetwork_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetwork_dataproviderid_fk_idx ON nuardata.waternetwork USING btree (dataproviderid_fk);


--
-- Name: waternetwork_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetwork_submissioneventid_fk_idx ON nuardata.waternetwork USING btree (submissioneventid_fk);


--
-- Name: waternetworkannotation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkannotation_dataproviderassigneduniqueid_idx ON nuardata.waternetworkannotation USING btree (dataproviderassigneduniqueid);


--
-- Name: waternetworkannotation_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkannotation_dataproviderid_fk_idx ON nuardata.waternetworkannotation USING btree (dataproviderid_fk);


--
-- Name: waternetworkannotation_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkannotation_submissioneventid_fk_idx ON nuardata.waternetworkannotation USING btree (submissioneventid_fk);


--
-- Name: waternetworkdescriptionobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkdescriptionobject_dataproviderassigneduniqueid_idx ON nuardata.waternetworkdescriptionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: waternetworkdescriptionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkdescriptionobject_dataproviderid_fk_idx ON nuardata.waternetworkdescriptionobject USING btree (dataproviderid_fk);


--
-- Name: waternetworkdescriptionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkdescriptionobject_submissioneventid_fk_idx ON nuardata.waternetworkdescriptionobject USING btree (submissioneventid_fk);


--
-- Name: waternetworkdimension_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkdimension_dataproviderassigneduniqueid_idx ON nuardata.waternetworkdimension USING btree (dataproviderassigneduniqueid);


--
-- Name: waternetworkdimension_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkdimension_dataproviderid_fk_idx ON nuardata.waternetworkdimension USING btree (dataproviderid_fk);


--
-- Name: waternetworkdimension_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworkdimension_submissioneventid_fk_idx ON nuardata.waternetworkdimension USING btree (submissioneventid_fk);


--
-- Name: waternetworklink_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworklink_dataproviderassigneduniqueid_idx ON nuardata.waternetworklink USING btree (dataproviderassigneduniqueid);


--
-- Name: waternetworklink_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworklink_dataproviderid_fk_idx ON nuardata.waternetworklink USING btree (dataproviderid_fk);


--
-- Name: waternetworklink_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworklink_submissioneventid_fk_idx ON nuardata.waternetworklink USING btree (submissioneventid_fk);


--
-- Name: waternetworklinkzoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworklinkzoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.waternetworklinkzoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: waternetworklinkzoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworklinkzoneofinterest_dataproviderid_fk_idx ON nuardata.waternetworklinkzoneofinterest USING btree (dataproviderid_fk);


--
-- Name: waternetworklinkzoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworklinkzoneofinterest_submissioneventid_fk_idx ON nuardata.waternetworklinkzoneofinterest USING btree (submissioneventid_fk);


--
-- Name: waternetworknode_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworknode_dataproviderassigneduniqueid_idx ON nuardata.waternetworknode USING btree (dataproviderassigneduniqueid);


--
-- Name: waternetworknode_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworknode_dataproviderid_fk_idx ON nuardata.waternetworknode USING btree (dataproviderid_fk);


--
-- Name: waternetworknode_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworknode_submissioneventid_fk_idx ON nuardata.waternetworknode USING btree (submissioneventid_fk);


--
-- Name: waternetworknodezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworknodezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.waternetworknodezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: waternetworknodezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworknodezoneofinterest_dataproviderid_fk_idx ON nuardata.waternetworknodezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: waternetworknodezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waternetworknodezoneofinterest_submissioneventid_fk_idx ON nuardata.waternetworknodezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: waterphysicalprotectionobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waterphysicalprotectionobject_dataproviderassigneduniqueid_idx ON nuardata.waterphysicalprotectionobject USING btree (dataproviderassigneduniqueid);


--
-- Name: waterphysicalprotectionobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waterphysicalprotectionobject_dataproviderid_fk_idx ON nuardata.waterphysicalprotectionobject USING btree (dataproviderid_fk);


--
-- Name: waterphysicalprotectionobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waterphysicalprotectionobject_submissioneventid_fk_idx ON nuardata.waterphysicalprotectionobject USING btree (submissioneventid_fk);


--
-- Name: waterservicearea_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waterservicearea_dataproviderassigneduniqueid_idx ON nuardata.waterservicearea USING btree (dataproviderassigneduniqueid);


--
-- Name: waterservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waterservicearea_dataproviderid_fk_idx ON nuardata.waterservicearea USING btree (dataproviderid_fk);


--
-- Name: waterservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX waterservicearea_submissioneventid_fk_idx ON nuardata.waterservicearea USING btree (submissioneventid_fk);


--
-- Name: watersite_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersite_dataproviderassigneduniqueid_idx ON nuardata.watersite USING btree (dataproviderassigneduniqueid);


--
-- Name: watersite_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersite_dataproviderid_fk_idx ON nuardata.watersite USING btree (dataproviderid_fk);


--
-- Name: watersite_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersite_submissioneventid_fk_idx ON nuardata.watersite USING btree (submissioneventid_fk);


--
-- Name: watersitezoneofinterest_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersitezoneofinterest_dataproviderassigneduniqueid_idx ON nuardata.watersitezoneofinterest USING btree (dataproviderassigneduniqueid);


--
-- Name: watersitezoneofinterest_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersitezoneofinterest_dataproviderid_fk_idx ON nuardata.watersitezoneofinterest USING btree (dataproviderid_fk);


--
-- Name: watersitezoneofinterest_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersitezoneofinterest_submissioneventid_fk_idx ON nuardata.watersitezoneofinterest USING btree (submissioneventid_fk);


--
-- Name: watersupportobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersupportobject_dataproviderassigneduniqueid_idx ON nuardata.watersupportobject USING btree (dataproviderassigneduniqueid);


--
-- Name: watersupportobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersupportobject_dataproviderid_fk_idx ON nuardata.watersupportobject USING btree (dataproviderid_fk);


--
-- Name: watersupportobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuardata; Owner: sds_admin
--

CREATE INDEX watersupportobject_submissioneventid_fk_idx ON nuardata.watersupportobject USING btree (submissioneventid_fk);


--
-- Name: nuaractivityproximityrule_dataproviderid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX nuaractivityproximityrule_dataproviderid_fk_idx ON nuarorganisations.nuaractivityproximityrule USING btree (dataproviderid_fk);


--
-- Name: nuaractivityproximityrule_submissioneventid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX nuaractivityproximityrule_submissioneventid_fk_idx ON nuarorganisations.nuaractivityproximityrule USING btree (submissioneventid_fk);


--
-- Name: nuarcontactdetails_dataproviderid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX nuarcontactdetails_dataproviderid_fk_idx ON nuarorganisations.nuarcontactdetails USING btree (dataproviderid_fk);


--
-- Name: nuarcontactdetails_submissioneventid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX nuarcontactdetails_submissioneventid_fk_idx ON nuarorganisations.nuarcontactdetails USING btree (submissioneventid_fk);


--
-- Name: relationship_actortocontactdetails_dataproviderid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortocontactdetails_dataproviderid_fk_idx ON nuarorganisations.relationship_actortocontactdetails USING btree (dataproviderid_fk);


--
-- Name: relationship_actortocontactdetails_linkedactorid_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortocontactdetails_linkedactorid_idx ON nuarorganisations.relationship_actortocontactdetails USING btree (linkedactorid);


--
-- Name: relationship_actortocontactdetails_linkedcontactdetailsid_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortocontactdetails_linkedcontactdetailsid_idx ON nuarorganisations.relationship_actortocontactdetails USING btree (linkedcontactdetailsid);


--
-- Name: relationship_actortocontactdetails_submissioneventid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortocontactdetails_submissioneventid_fk_idx ON nuarorganisations.relationship_actortocontactdetails USING btree (submissioneventid_fk);


--
-- Name: relationship_actortodda_dataproviderid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortodda_dataproviderid_fk_idx ON nuarorganisations.relationship_actortodda USING btree (dataproviderid_fk);


--
-- Name: relationship_actortodda_submissioneventid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortodda_submissioneventid_fk_idx ON nuarorganisations.relationship_actortodda USING btree (submissioneventid_fk);


--
-- Name: relationship_actortodis_dataproviderid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortodis_dataproviderid_fk_idx ON nuarorganisations.relationship_actortodis USING btree (dataproviderid_fk);


--
-- Name: relationship_actortodis_submissioneventid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortodis_submissioneventid_fk_idx ON nuarorganisations.relationship_actortodis USING btree (submissioneventid_fk);


--
-- Name: relationship_actortorule_dataproviderid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortorule_dataproviderid_fk_idx ON nuarorganisations.relationship_actortorule USING btree (dataproviderid_fk);


--
-- Name: relationship_actortorule_submissioneventid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortorule_submissioneventid_fk_idx ON nuarorganisations.relationship_actortorule USING btree (submissioneventid_fk);


--
-- Name: relationship_actortoservicearea_dataproviderid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortoservicearea_dataproviderid_fk_idx ON nuarorganisations.relationship_actortoservicearea USING btree (dataproviderid_fk);


--
-- Name: relationship_actortoservicearea_submissioneventid_fk_idx; Type: INDEX; Schema: nuarorganisations; Owner: sds_admin
--

CREATE INDEX relationship_actortoservicearea_submissioneventid_fk_idx ON nuarorganisations.relationship_actortoservicearea USING btree (submissioneventid_fk);


--
-- Name: nuarsubmissionevent_dataproviderid_fk_idx; Type: INDEX; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE INDEX nuarsubmissionevent_dataproviderid_fk_idx ON nuarsubmissions.nuarsubmissionevent USING btree (dataproviderid_fk);


--
-- Name: nuarsubmissionsourcedataset_submissioneventid_fk_idx; Type: INDEX; Schema: nuarsubmissions; Owner: sds_admin
--

CREATE INDEX nuarsubmissionsourcedataset_submissioneventid_fk_idx ON nuarsubmissions.nuarsubmissionsourcedataset USING btree (submissioneventid_fk);


--
-- Name: idx_nuarusercreateddata_observation_geometry; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX idx_nuarusercreateddata_observation_geometry ON nuarusercreateddata.observation USING gist (geometry);


--
-- Name: idx_nuarusercreateddata_unidentifiedburiedobject_geometry; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX idx_nuarusercreateddata_unidentifiedburiedobject_geometry ON nuarusercreateddata.unidentifiedburiedobject USING gist (geometry);


--
-- Name: idx_nuarusercreateddata_wronglyrecordedobject_geometry; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX idx_nuarusercreateddata_wronglyrecordedobject_geometry ON nuarusercreateddata.wronglyrecordedobject USING gist (geometry);


--
-- Name: observation_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX observation_dataproviderassigneduniqueid_idx ON nuarusercreateddata.observation USING btree (dataproviderassigneduniqueid);


--
-- Name: observation_dataproviderid_fk_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX observation_dataproviderid_fk_idx ON nuarusercreateddata.observation USING btree (dataproviderid_fk);


--
-- Name: observation_submissioneventid_fk_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX observation_submissioneventid_fk_idx ON nuarusercreateddata.observation USING btree (submissioneventid_fk);


--
-- Name: relationship_wronglyrecordedobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX relationship_wronglyrecordedobject_dataproviderid_fk_idx ON nuarusercreateddata.relationship_wronglyrecordedobject USING btree (dataproviderid_fk);


--
-- Name: relationship_wronglyrecordedobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX relationship_wronglyrecordedobject_submissioneventid_fk_idx ON nuarusercreateddata.relationship_wronglyrecordedobject USING btree (submissioneventid_fk);


--
-- Name: unidentifiedburiedobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX unidentifiedburiedobject_dataproviderassigneduniqueid_idx ON nuarusercreateddata.unidentifiedburiedobject USING btree (dataproviderassigneduniqueid);


--
-- Name: unidentifiedburiedobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX unidentifiedburiedobject_dataproviderid_fk_idx ON nuarusercreateddata.unidentifiedburiedobject USING btree (dataproviderid_fk);


--
-- Name: unidentifiedburiedobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX unidentifiedburiedobject_submissioneventid_fk_idx ON nuarusercreateddata.unidentifiedburiedobject USING btree (submissioneventid_fk);


--
-- Name: wronglyrecordedobject_dataproviderassigneduniqueid_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX wronglyrecordedobject_dataproviderassigneduniqueid_idx ON nuarusercreateddata.wronglyrecordedobject USING btree (dataproviderassigneduniqueid);


--
-- Name: wronglyrecordedobject_dataproviderid_fk_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX wronglyrecordedobject_dataproviderid_fk_idx ON nuarusercreateddata.wronglyrecordedobject USING btree (dataproviderid_fk);


--
-- Name: wronglyrecordedobject_submissioneventid_fk_idx; Type: INDEX; Schema: nuarusercreateddata; Owner: sds_admin
--

CREATE INDEX wronglyrecordedobject_submissioneventid_fk_idx ON nuarusercreateddata.wronglyrecordedobject USING btree (submissioneventid_fk);


--
-- Name: nuarbackdroparea fk_nuarcustombackdrop_nuarbackdroparea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroparea
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdroparea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarbackdroparea fk_nuarcustombackdrop_nuarbackdroparea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroparea
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdroparea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarbackdropline fk_nuarcustombackdrop_nuarbackdropline_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdropline
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdropline_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarbackdropline fk_nuarcustombackdrop_nuarbackdropline_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdropline
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdropline_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarbackdroppoint fk_nuarcustombackdrop_nuarbackdroppoint_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroppoint
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdroppoint_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarbackdroppoint fk_nuarcustombackdrop_nuarbackdroppoint_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroppoint
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdroppoint_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarbackdropraster fk_nuarcustombackdrop_nuarbackdropraster_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdropraster
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdropraster_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarbackdropraster fk_nuarcustombackdrop_nuarbackdropraster_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdropraster
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdropraster_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarbackdroptext fk_nuarcustombackdrop_nuarbackdroptext_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroptext
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdroptext_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarbackdroptext fk_nuarcustombackdrop_nuarbackdroptext_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuarcustombackdrop; Owner: sds_admin
--

ALTER TABLE ONLY nuarcustombackdrop.nuarbackdroptext
    ADD CONSTRAINT fk_nuarcustombackdrop_nuarbackdroptext_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: archaeologicalsite fk_nuardata_archaeologicalsite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.archaeologicalsite
    ADD CONSTRAINT fk_nuardata_archaeologicalsite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: archaeologicalsite fk_nuardata_archaeologicalsite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.archaeologicalsite
    ADD CONSTRAINT fk_nuardata_archaeologicalsite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: areasofspecialscientificinterestnorthernireland fk_nuardata_areasofspecialscientificinterestnorthernireland_dat; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.areasofspecialscientificinterestnorthernireland
    ADD CONSTRAINT fk_nuardata_areasofspecialscientificinterestnorthernireland_dat FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: areasofspecialscientificinterestnorthernireland fk_nuardata_areasofspecialscientificinterestnorthernireland_sub; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.areasofspecialscientificinterestnorthernireland
    ADD CONSTRAINT fk_nuardata_areasofspecialscientificinterestnorthernireland_sub FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: conservationarea fk_nuardata_conservationarea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.conservationarea
    ADD CONSTRAINT fk_nuardata_conservationarea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: conservationarea fk_nuardata_conservationarea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.conservationarea
    ADD CONSTRAINT fk_nuardata_conservationarea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: denotation fk_nuardata_denotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.denotation
    ADD CONSTRAINT fk_nuardata_denotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: denotation fk_nuardata_denotation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.denotation
    ADD CONSTRAINT fk_nuardata_denotation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: depth fk_nuardata_depth_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.depth
    ADD CONSTRAINT fk_nuardata_depth_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: depth fk_nuardata_depth_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.depth
    ADD CONSTRAINT fk_nuardata_depth_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainageaccessobject fk_nuardata_drainageaccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainageaccessobject
    ADD CONSTRAINT fk_nuardata_drainageaccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainageaccessobject fk_nuardata_drainageaccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainageaccessobject
    ADD CONSTRAINT fk_nuardata_drainageaccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagecontainerobject fk_nuardata_drainagecontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagecontainerobject
    ADD CONSTRAINT fk_nuardata_drainagecontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagecontainerobject fk_nuardata_drainagecontainerobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagecontainerobject
    ADD CONSTRAINT fk_nuardata_drainagecontainerobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagenetwork fk_nuardata_drainagenetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetwork
    ADD CONSTRAINT fk_nuardata_drainagenetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagenetwork fk_nuardata_drainagenetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetwork
    ADD CONSTRAINT fk_nuardata_drainagenetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagenetworkannotation fk_nuardata_drainagenetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkannotation
    ADD CONSTRAINT fk_nuardata_drainagenetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagenetworkannotation fk_nuardata_drainagenetworkannotation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkannotation
    ADD CONSTRAINT fk_nuardata_drainagenetworkannotation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagenetworkdescriptionobject fk_nuardata_drainagenetworkdescriptionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_drainagenetworkdescriptionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagenetworkdescriptionobject fk_nuardata_drainagenetworkdescriptionobject_submissioneventid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_drainagenetworkdescriptionobject_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagenetworkdimension fk_nuardata_drainagenetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkdimension
    ADD CONSTRAINT fk_nuardata_drainagenetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagenetworkdimension fk_nuardata_drainagenetworkdimension_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworkdimension
    ADD CONSTRAINT fk_nuardata_drainagenetworkdimension_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagenetworklink fk_nuardata_drainagenetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworklink
    ADD CONSTRAINT fk_nuardata_drainagenetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagenetworklink fk_nuardata_drainagenetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworklink
    ADD CONSTRAINT fk_nuardata_drainagenetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagenetworklinkzoneofinterest fk_nuardata_drainagenetworklinkzoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_drainagenetworklinkzoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagenetworklinkzoneofinterest fk_nuardata_drainagenetworklinkzoneofinterest_submissioneventid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_drainagenetworklinkzoneofinterest_submissioneventid FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagenetworknode fk_nuardata_drainagenetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworknode
    ADD CONSTRAINT fk_nuardata_drainagenetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagenetworknode fk_nuardata_drainagenetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworknode
    ADD CONSTRAINT fk_nuardata_drainagenetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagenetworknodezoneofinterest fk_nuardata_drainagenetworknodezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_drainagenetworknodezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagenetworknodezoneofinterest fk_nuardata_drainagenetworknodezoneofinterest_submissioneventid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagenetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_drainagenetworknodezoneofinterest_submissioneventid FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagephysicalprotectionobject fk_nuardata_drainagephysicalprotectionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagephysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_drainagephysicalprotectionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagephysicalprotectionobject fk_nuardata_drainagephysicalprotectionobject_submissioneventid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagephysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_drainagephysicalprotectionobject_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainageservicearea fk_nuardata_drainageservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainageservicearea
    ADD CONSTRAINT fk_nuardata_drainageservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainageservicearea fk_nuardata_drainageservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainageservicearea
    ADD CONSTRAINT fk_nuardata_drainageservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagesite fk_nuardata_drainagesite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesite
    ADD CONSTRAINT fk_nuardata_drainagesite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagesite fk_nuardata_drainagesite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesite
    ADD CONSTRAINT fk_nuardata_drainagesite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagesitezoneofinterest fk_nuardata_drainagesitezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesitezoneofinterest
    ADD CONSTRAINT fk_nuardata_drainagesitezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagesitezoneofinterest fk_nuardata_drainagesitezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesitezoneofinterest
    ADD CONSTRAINT fk_nuardata_drainagesitezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: drainagesupportobject fk_nuardata_drainagesupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesupportobject
    ADD CONSTRAINT fk_nuardata_drainagesupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: drainagesupportobject fk_nuardata_drainagesupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.drainagesupportobject
    ADD CONSTRAINT fk_nuardata_drainagesupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricityaccessobject fk_nuardata_electricityaccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityaccessobject
    ADD CONSTRAINT fk_nuardata_electricityaccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricityaccessobject fk_nuardata_electricityaccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityaccessobject
    ADD CONSTRAINT fk_nuardata_electricityaccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitycontainerobject fk_nuardata_electricitycontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitycontainerobject
    ADD CONSTRAINT fk_nuardata_electricitycontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitycontainerobject fk_nuardata_electricitycontainerobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitycontainerobject
    ADD CONSTRAINT fk_nuardata_electricitycontainerobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitynetwork fk_nuardata_electricitynetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetwork
    ADD CONSTRAINT fk_nuardata_electricitynetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitynetwork fk_nuardata_electricitynetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetwork
    ADD CONSTRAINT fk_nuardata_electricitynetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitynetworkannotation fk_nuardata_electricitynetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkannotation
    ADD CONSTRAINT fk_nuardata_electricitynetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitynetworkannotation fk_nuardata_electricitynetworkannotation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkannotation
    ADD CONSTRAINT fk_nuardata_electricitynetworkannotation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitynetworkdescriptionobject fk_nuardata_electricitynetworkdescriptionobject_dataproviderid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_electricitynetworkdescriptionobject_dataproviderid_ FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitynetworkdescriptionobject fk_nuardata_electricitynetworkdescriptionobject_submissionevent; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_electricitynetworkdescriptionobject_submissionevent FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitynetworkdimension fk_nuardata_electricitynetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkdimension
    ADD CONSTRAINT fk_nuardata_electricitynetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitynetworkdimension fk_nuardata_electricitynetworkdimension_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworkdimension
    ADD CONSTRAINT fk_nuardata_electricitynetworkdimension_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitynetworklink fk_nuardata_electricitynetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworklink
    ADD CONSTRAINT fk_nuardata_electricitynetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitynetworklink fk_nuardata_electricitynetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworklink
    ADD CONSTRAINT fk_nuardata_electricitynetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitynetworklinkzoneofinterest fk_nuardata_electricitynetworklinkzoneofinterest_dataproviderid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_electricitynetworklinkzoneofinterest_dataproviderid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitynetworklinkzoneofinterest fk_nuardata_electricitynetworklinkzoneofinterest_submissioneven; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_electricitynetworklinkzoneofinterest_submissioneven FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitynetworknode fk_nuardata_electricitynetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworknode
    ADD CONSTRAINT fk_nuardata_electricitynetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitynetworknode fk_nuardata_electricitynetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworknode
    ADD CONSTRAINT fk_nuardata_electricitynetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitynetworknodezoneofinterest fk_nuardata_electricitynetworknodezoneofinterest_dataproviderid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_electricitynetworknodezoneofinterest_dataproviderid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitynetworknodezoneofinterest fk_nuardata_electricitynetworknodezoneofinterest_submissioneven; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitynetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_electricitynetworknodezoneofinterest_submissioneven FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricityphysicalprotectionobject fk_nuardata_electricityphysicalprotectionobject_dataproviderid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_electricityphysicalprotectionobject_dataproviderid_ FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricityphysicalprotectionobject fk_nuardata_electricityphysicalprotectionobject_submissionevent; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_electricityphysicalprotectionobject_submissionevent FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricityservicearea fk_nuardata_electricityservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityservicearea
    ADD CONSTRAINT fk_nuardata_electricityservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricityservicearea fk_nuardata_electricityservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricityservicearea
    ADD CONSTRAINT fk_nuardata_electricityservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitysite fk_nuardata_electricitysite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysite
    ADD CONSTRAINT fk_nuardata_electricitysite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitysite fk_nuardata_electricitysite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysite
    ADD CONSTRAINT fk_nuardata_electricitysite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitysitezoneofinterest fk_nuardata_electricitysitezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysitezoneofinterest
    ADD CONSTRAINT fk_nuardata_electricitysitezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitysitezoneofinterest fk_nuardata_electricitysitezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysitezoneofinterest
    ADD CONSTRAINT fk_nuardata_electricitysitezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: electricitysupportobject fk_nuardata_electricitysupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysupportobject
    ADD CONSTRAINT fk_nuardata_electricitysupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: electricitysupportobject fk_nuardata_electricitysupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.electricitysupportobject
    ADD CONSTRAINT fk_nuardata_electricitysupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsaccessobject fk_nuardata_fuelandchemicalsaccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsaccessobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsaccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsaccessobject fk_nuardata_fuelandchemicalsaccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsaccessobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsaccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalscontainerobject fk_nuardata_fuelandchemicalscontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalscontainerobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalscontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalscontainerobject fk_nuardata_fuelandchemicalscontainerobject_submissioneventid_f; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalscontainerobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalscontainerobject_submissioneventid_f FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsnetwork fk_nuardata_fuelandchemicalsnetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetwork
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsnetwork fk_nuardata_fuelandchemicalsnetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetwork
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsnetworkannotation fk_nuardata_fuelandchemicalsnetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkannotation
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsnetworkannotation fk_nuardata_fuelandchemicalsnetworkannotation_submissioneventid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkannotation
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworkannotation_submissioneventid FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsnetworkdescriptionobject fk_nuardata_fuelandchemicalsnetworkdescriptionobject_dataprovid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworkdescriptionobject_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsnetworkdescriptionobject fk_nuardata_fuelandchemicalsnetworkdescriptionobject_submission; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworkdescriptionobject_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsnetworkdimension fk_nuardata_fuelandchemicalsnetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkdimension
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsnetworkdimension fk_nuardata_fuelandchemicalsnetworkdimension_submissioneventid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworkdimension
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworkdimension_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsnetworklink fk_nuardata_fuelandchemicalsnetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworklink
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsnetworklink fk_nuardata_fuelandchemicalsnetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworklink
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsnetworklinkzoneofinterest fk_nuardata_fuelandchemicalsnetworklinkzoneofinterest_dataprovi; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworklinkzoneofinterest_dataprovi FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsnetworklinkzoneofinterest fk_nuardata_fuelandchemicalsnetworklinkzoneofinterest_submissio; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworklinkzoneofinterest_submissio FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsnetworknode fk_nuardata_fuelandchemicalsnetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworknode
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsnetworknode fk_nuardata_fuelandchemicalsnetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworknode
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsnetworknodezoneofinterest fk_nuardata_fuelandchemicalsnetworknodezoneofinterest_dataprovi; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworknodezoneofinterest_dataprovi FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsnetworknodezoneofinterest fk_nuardata_fuelandchemicalsnetworknodezoneofinterest_submissio; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsnetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsnetworknodezoneofinterest_submissio FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsphysicalprotectionobject fk_nuardata_fuelandchemicalsphysicalprotectionobject_dataprovid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsphysicalprotectionobject_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsphysicalprotectionobject fk_nuardata_fuelandchemicalsphysicalprotectionobject_submission; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsphysicalprotectionobject_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalsservicearea fk_nuardata_fuelandchemicalsservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsservicearea
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalsservicearea fk_nuardata_fuelandchemicalsservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalsservicearea
    ADD CONSTRAINT fk_nuardata_fuelandchemicalsservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalssite fk_nuardata_fuelandchemicalssite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssite
    ADD CONSTRAINT fk_nuardata_fuelandchemicalssite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalssite fk_nuardata_fuelandchemicalssite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssite
    ADD CONSTRAINT fk_nuardata_fuelandchemicalssite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalssitezoneofinterest fk_nuardata_fuelandchemicalssitezoneofinterest_dataproviderid_f; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssitezoneofinterest
    ADD CONSTRAINT fk_nuardata_fuelandchemicalssitezoneofinterest_dataproviderid_f FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalssitezoneofinterest fk_nuardata_fuelandchemicalssitezoneofinterest_submissioneventi; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssitezoneofinterest
    ADD CONSTRAINT fk_nuardata_fuelandchemicalssitezoneofinterest_submissioneventi FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: fuelandchemicalssupportobject fk_nuardata_fuelandchemicalssupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssupportobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalssupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: fuelandchemicalssupportobject fk_nuardata_fuelandchemicalssupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.fuelandchemicalssupportobject
    ADD CONSTRAINT fk_nuardata_fuelandchemicalssupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasaccessobject fk_nuardata_gasaccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasaccessobject
    ADD CONSTRAINT fk_nuardata_gasaccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasaccessobject fk_nuardata_gasaccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasaccessobject
    ADD CONSTRAINT fk_nuardata_gasaccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gascontainerobject fk_nuardata_gascontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gascontainerobject
    ADD CONSTRAINT fk_nuardata_gascontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gascontainerobject fk_nuardata_gascontainerobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gascontainerobject
    ADD CONSTRAINT fk_nuardata_gascontainerobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasnetwork fk_nuardata_gasnetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetwork
    ADD CONSTRAINT fk_nuardata_gasnetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasnetwork fk_nuardata_gasnetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetwork
    ADD CONSTRAINT fk_nuardata_gasnetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasnetworkannotation fk_nuardata_gasnetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkannotation
    ADD CONSTRAINT fk_nuardata_gasnetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasnetworkannotation fk_nuardata_gasnetworkannotation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkannotation
    ADD CONSTRAINT fk_nuardata_gasnetworkannotation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasnetworkdescriptionobject fk_nuardata_gasnetworkdescriptionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_gasnetworkdescriptionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasnetworkdescriptionobject fk_nuardata_gasnetworkdescriptionobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_gasnetworkdescriptionobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasnetworkdimension fk_nuardata_gasnetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkdimension
    ADD CONSTRAINT fk_nuardata_gasnetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasnetworkdimension fk_nuardata_gasnetworkdimension_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworkdimension
    ADD CONSTRAINT fk_nuardata_gasnetworkdimension_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasnetworklink fk_nuardata_gasnetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworklink
    ADD CONSTRAINT fk_nuardata_gasnetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasnetworklink fk_nuardata_gasnetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworklink
    ADD CONSTRAINT fk_nuardata_gasnetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasnetworklinkzoneofinterest fk_nuardata_gasnetworklinkzoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_gasnetworklinkzoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasnetworklinkzoneofinterest fk_nuardata_gasnetworklinkzoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_gasnetworklinkzoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasnetworknode fk_nuardata_gasnetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworknode
    ADD CONSTRAINT fk_nuardata_gasnetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasnetworknode fk_nuardata_gasnetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworknode
    ADD CONSTRAINT fk_nuardata_gasnetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasnetworknodezoneofinterest fk_nuardata_gasnetworknodezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_gasnetworknodezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasnetworknodezoneofinterest fk_nuardata_gasnetworknodezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasnetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_gasnetworknodezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasphysicalprotectionobject fk_nuardata_gasphysicalprotectionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_gasphysicalprotectionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasphysicalprotectionobject fk_nuardata_gasphysicalprotectionobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_gasphysicalprotectionobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gasservicearea fk_nuardata_gasservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasservicearea
    ADD CONSTRAINT fk_nuardata_gasservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gasservicearea fk_nuardata_gasservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gasservicearea
    ADD CONSTRAINT fk_nuardata_gasservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gassite fk_nuardata_gassite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassite
    ADD CONSTRAINT fk_nuardata_gassite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gassite fk_nuardata_gassite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassite
    ADD CONSTRAINT fk_nuardata_gassite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gassitezoneofinterest fk_nuardata_gassitezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassitezoneofinterest
    ADD CONSTRAINT fk_nuardata_gassitezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gassitezoneofinterest fk_nuardata_gassitezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassitezoneofinterest
    ADD CONSTRAINT fk_nuardata_gassitezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: gassupportobject fk_nuardata_gassupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassupportobject
    ADD CONSTRAINT fk_nuardata_gassupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: gassupportobject fk_nuardata_gassupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.gassupportobject
    ADD CONSTRAINT fk_nuardata_gassupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: generalplanningarea fk_nuardata_generalplanningarea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.generalplanningarea
    ADD CONSTRAINT fk_nuardata_generalplanningarea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: generalplanningarea fk_nuardata_generalplanningarea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.generalplanningarea
    ADD CONSTRAINT fk_nuardata_generalplanningarea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: horizontalmeasurementmethod fk_nuardata_horizontalmeasurementmethod_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.horizontalmeasurementmethod
    ADD CONSTRAINT fk_nuardata_horizontalmeasurementmethod_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: horizontalmeasurementmethod fk_nuardata_horizontalmeasurementmethod_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.horizontalmeasurementmethod
    ADD CONSTRAINT fk_nuardata_horizontalmeasurementmethod_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: muddienvironmentalunit fk_nuardata_muddienvironmentalunit_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.muddienvironmentalunit
    ADD CONSTRAINT fk_nuardata_muddienvironmentalunit_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: muddienvironmentalunit fk_nuardata_muddienvironmentalunit_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.muddienvironmentalunit
    ADD CONSTRAINT fk_nuardata_muddienvironmentalunit_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nonutilityobject fk_nuardata_nonutilityobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nonutilityobject
    ADD CONSTRAINT fk_nuardata_nonutilityobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nonutilityobject fk_nuardata_nonutilityobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nonutilityobject
    ADD CONSTRAINT fk_nuardata_nonutilityobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarguidance fk_nuardata_nuarguidance_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nuarguidance
    ADD CONSTRAINT fk_nuardata_nuarguidance_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarguidance fk_nuardata_nuarguidance_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nuarguidance
    ADD CONSTRAINT fk_nuardata_nuarguidance_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarlinkedfile fk_nuardata_nuarlinkedfile_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nuarlinkedfile
    ADD CONSTRAINT fk_nuardata_nuarlinkedfile_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarlinkedfile fk_nuardata_nuarlinkedfile_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.nuarlinkedfile
    ADD CONSTRAINT fk_nuardata_nuarlinkedfile_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: qualitylevel fk_nuardata_qualitylevel_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.qualitylevel
    ADD CONSTRAINT fk_nuardata_qualitylevel_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: qualitylevel fk_nuardata_qualitylevel_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.qualitylevel
    ADD CONSTRAINT fk_nuardata_qualitylevel_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_coveragetobackdropobject fk_nuardata_relationship_coveragetobackdropobject_dataprovideri; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_coveragetobackdropobject
    ADD CONSTRAINT fk_nuardata_relationship_coveragetobackdropobject_dataprovideri FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_coveragetobackdropobject fk_nuardata_relationship_coveragetobackdropobject_submissioneve; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_coveragetobackdropobject
    ADD CONSTRAINT fk_nuardata_relationship_coveragetobackdropobject_submissioneve FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_guidance fk_nuardata_relationship_guidance_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_guidance
    ADD CONSTRAINT fk_nuardata_relationship_guidance_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_guidance fk_nuardata_relationship_guidance_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_guidance
    ADD CONSTRAINT fk_nuardata_relationship_guidance_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_linkedfile fk_nuardata_relationship_linkedfile_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_linkedfile
    ADD CONSTRAINT fk_nuardata_relationship_linkedfile_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_linkedfile fk_nuardata_relationship_linkedfile_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_linkedfile
    ADD CONSTRAINT fk_nuardata_relationship_linkedfile_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_linktolinkzoneofinterest fk_nuardata_relationship_linktolinkzoneofinterest_dataprovideri; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_linktolinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_relationship_linktolinkzoneofinterest_dataprovideri FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_linktolinkzoneofinterest fk_nuardata_relationship_linktolinkzoneofinterest_submissioneve; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_linktolinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_relationship_linktolinkzoneofinterest_submissioneve FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_networkconveyancetonetworkaccessory fk_nuardata_relationship_networkconveyancetonetworkaccessory_da; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networkconveyancetonetworkaccessory
    ADD CONSTRAINT fk_nuardata_relationship_networkconveyancetonetworkaccessory_da FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_networkconveyancetonetworkaccessory fk_nuardata_relationship_networkconveyancetonetworkaccessory_su; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networkconveyancetonetworkaccessory
    ADD CONSTRAINT fk_nuardata_relationship_networkconveyancetonetworkaccessory_su FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_networktonetworkconveyance fk_nuardata_relationship_networktonetworkconveyance_dataprovide; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktonetworkconveyance
    ADD CONSTRAINT fk_nuardata_relationship_networktonetworkconveyance_dataprovide FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_networktonetworkconveyance fk_nuardata_relationship_networktonetworkconveyance_submissione; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktonetworkconveyance
    ADD CONSTRAINT fk_nuardata_relationship_networktonetworkconveyance_submissione FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_networktoservicearea fk_nuardata_relationship_networktoservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktoservicearea
    ADD CONSTRAINT fk_nuardata_relationship_networktoservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_networktoservicearea fk_nuardata_relationship_networktoservicearea_submissioneventid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktoservicearea
    ADD CONSTRAINT fk_nuardata_relationship_networktoservicearea_submissioneventid FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_networktosite fk_nuardata_relationship_networktosite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosite
    ADD CONSTRAINT fk_nuardata_relationship_networktosite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_networktosite fk_nuardata_relationship_networktosite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosite
    ADD CONSTRAINT fk_nuardata_relationship_networktosite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_networktosubnetwork fk_nuardata_relationship_networktosubnetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosubnetwork
    ADD CONSTRAINT fk_nuardata_relationship_networktosubnetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_networktosubnetwork fk_nuardata_relationship_networktosubnetwork_submissioneventid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosubnetwork
    ADD CONSTRAINT fk_nuardata_relationship_networktosubnetwork_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_networktosubordinatenetwork fk_nuardata_relationship_networktosubordinatenetwork_dataprovid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosubordinatenetwork
    ADD CONSTRAINT fk_nuardata_relationship_networktosubordinatenetwork_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_networktosubordinatenetwork fk_nuardata_relationship_networktosubordinatenetwork_submission; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_networktosubordinatenetwork
    ADD CONSTRAINT fk_nuardata_relationship_networktosubordinatenetwork_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_nodetonodezoneofinterest fk_nuardata_relationship_nodetonodezoneofinterest_dataprovideri; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_nodetonodezoneofinterest
    ADD CONSTRAINT fk_nuardata_relationship_nodetonodezoneofinterest_dataprovideri FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_nodetonodezoneofinterest fk_nuardata_relationship_nodetonodezoneofinterest_submissioneve; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_nodetonodezoneofinterest
    ADD CONSTRAINT fk_nuardata_relationship_nodetonodezoneofinterest_submissioneve FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_objecttocontactdetails fk_nuardata_relationship_objecttocontactdetails_dataproviderid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_objecttocontactdetails
    ADD CONSTRAINT fk_nuardata_relationship_objecttocontactdetails_dataproviderid_ FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_objecttocontactdetails fk_nuardata_relationship_objecttocontactdetails_submissionevent; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_objecttocontactdetails
    ADD CONSTRAINT fk_nuardata_relationship_objecttocontactdetails_submissionevent FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_sitetoasset fk_nuardata_relationship_sitetoasset_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_sitetoasset
    ADD CONSTRAINT fk_nuardata_relationship_sitetoasset_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_sitetoasset fk_nuardata_relationship_sitetoasset_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_sitetoasset
    ADD CONSTRAINT fk_nuardata_relationship_sitetoasset_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_sitetositezoneofinterest fk_nuardata_relationship_sitetositezoneofinterest_dataprovideri; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_sitetositezoneofinterest
    ADD CONSTRAINT fk_nuardata_relationship_sitetositezoneofinterest_dataprovideri FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_sitetositezoneofinterest fk_nuardata_relationship_sitetositezoneofinterest_submissioneve; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_sitetositezoneofinterest
    ADD CONSTRAINT fk_nuardata_relationship_sitetositezoneofinterest_submissioneve FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_subordinatenetworktorule fk_nuardata_relationship_subordinatenetworktorule_dataprovideri; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_subordinatenetworktorule
    ADD CONSTRAINT fk_nuardata_relationship_subordinatenetworktorule_dataprovideri FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_subordinatenetworktorule fk_nuardata_relationship_subordinatenetworktorule_submissioneve; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_subordinatenetworktorule
    ADD CONSTRAINT fk_nuardata_relationship_subordinatenetworktorule_submissioneve FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_supplementaldatacoveragetoobject fk_nuardata_relationship_supplementaldatacoveragetoobject_datap; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_supplementaldatacoveragetoobject
    ADD CONSTRAINT fk_nuardata_relationship_supplementaldatacoveragetoobject_datap FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_supplementaldatacoveragetoobject fk_nuardata_relationship_supplementaldatacoveragetoobject_submi; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_supplementaldatacoveragetoobject
    ADD CONSTRAINT fk_nuardata_relationship_supplementaldatacoveragetoobject_submi FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_variableobjectvaluetoasset fk_nuardata_relationship_variableobjectvaluetoasset_dataprovide; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_variableobjectvaluetoasset
    ADD CONSTRAINT fk_nuardata_relationship_variableobjectvaluetoasset_dataprovide FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_variableobjectvaluetoasset fk_nuardata_relationship_variableobjectvaluetoasset_submissione; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.relationship_variableobjectvaluetoasset
    ADD CONSTRAINT fk_nuardata_relationship_variableobjectvaluetoasset_submissione FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: restrictedplanningarea fk_nuardata_restrictedplanningarea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.restrictedplanningarea
    ADD CONSTRAINT fk_nuardata_restrictedplanningarea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: restrictedplanningarea fk_nuardata_restrictedplanningarea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.restrictedplanningarea
    ADD CONSTRAINT fk_nuardata_restrictedplanningarea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: servicearea fk_nuardata_servicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.servicearea
    ADD CONSTRAINT fk_nuardata_servicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: servicearea fk_nuardata_servicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.servicearea
    ADD CONSTRAINT fk_nuardata_servicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: seweraccessobject fk_nuardata_seweraccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.seweraccessobject
    ADD CONSTRAINT fk_nuardata_seweraccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: seweraccessobject fk_nuardata_seweraccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.seweraccessobject
    ADD CONSTRAINT fk_nuardata_seweraccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewercontainerobject fk_nuardata_sewercontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewercontainerobject
    ADD CONSTRAINT fk_nuardata_sewercontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewercontainerobject fk_nuardata_sewercontainerobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewercontainerobject
    ADD CONSTRAINT fk_nuardata_sewercontainerobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewernetwork fk_nuardata_sewernetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetwork
    ADD CONSTRAINT fk_nuardata_sewernetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewernetwork fk_nuardata_sewernetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetwork
    ADD CONSTRAINT fk_nuardata_sewernetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewernetworkannotation fk_nuardata_sewernetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkannotation
    ADD CONSTRAINT fk_nuardata_sewernetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewernetworkannotation fk_nuardata_sewernetworkannotation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkannotation
    ADD CONSTRAINT fk_nuardata_sewernetworkannotation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewernetworkdescriptionobject fk_nuardata_sewernetworkdescriptionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_sewernetworkdescriptionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewernetworkdescriptionobject fk_nuardata_sewernetworkdescriptionobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_sewernetworkdescriptionobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewernetworkdimension fk_nuardata_sewernetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkdimension
    ADD CONSTRAINT fk_nuardata_sewernetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewernetworkdimension fk_nuardata_sewernetworkdimension_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworkdimension
    ADD CONSTRAINT fk_nuardata_sewernetworkdimension_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewernetworklink fk_nuardata_sewernetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworklink
    ADD CONSTRAINT fk_nuardata_sewernetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewernetworklink fk_nuardata_sewernetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworklink
    ADD CONSTRAINT fk_nuardata_sewernetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewernetworklinkzoneofinterest fk_nuardata_sewernetworklinkzoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_sewernetworklinkzoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewernetworklinkzoneofinterest fk_nuardata_sewernetworklinkzoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_sewernetworklinkzoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewernetworknode fk_nuardata_sewernetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworknode
    ADD CONSTRAINT fk_nuardata_sewernetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewernetworknode fk_nuardata_sewernetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworknode
    ADD CONSTRAINT fk_nuardata_sewernetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewernetworknodezoneofinterest fk_nuardata_sewernetworknodezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_sewernetworknodezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewernetworknodezoneofinterest fk_nuardata_sewernetworknodezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewernetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_sewernetworknodezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewerphysicalprotectionobject fk_nuardata_sewerphysicalprotectionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewerphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_sewerphysicalprotectionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewerphysicalprotectionobject fk_nuardata_sewerphysicalprotectionobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewerphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_sewerphysicalprotectionobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewerservicearea fk_nuardata_sewerservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewerservicearea
    ADD CONSTRAINT fk_nuardata_sewerservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewerservicearea fk_nuardata_sewerservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewerservicearea
    ADD CONSTRAINT fk_nuardata_sewerservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewersite fk_nuardata_sewersite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersite
    ADD CONSTRAINT fk_nuardata_sewersite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewersite fk_nuardata_sewersite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersite
    ADD CONSTRAINT fk_nuardata_sewersite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewersitezoneofinterest fk_nuardata_sewersitezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersitezoneofinterest
    ADD CONSTRAINT fk_nuardata_sewersitezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewersitezoneofinterest fk_nuardata_sewersitezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersitezoneofinterest
    ADD CONSTRAINT fk_nuardata_sewersitezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sewersupportobject fk_nuardata_sewersupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersupportobject
    ADD CONSTRAINT fk_nuardata_sewersupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sewersupportobject fk_nuardata_sewersupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sewersupportobject
    ADD CONSTRAINT fk_nuardata_sewersupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: siteofpreviousindustrialuse fk_nuardata_siteofpreviousindustrialuse_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.siteofpreviousindustrialuse
    ADD CONSTRAINT fk_nuardata_siteofpreviousindustrialuse_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: siteofpreviousindustrialuse fk_nuardata_siteofpreviousindustrialuse_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.siteofpreviousindustrialuse
    ADD CONSTRAINT fk_nuardata_siteofpreviousindustrialuse_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sitesofspecialscientificinterestengland fk_nuardata_sitesofspecialscientificinterestengland_dataprovide; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestengland
    ADD CONSTRAINT fk_nuardata_sitesofspecialscientificinterestengland_dataprovide FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sitesofspecialscientificinterestengland fk_nuardata_sitesofspecialscientificinterestengland_submissione; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestengland
    ADD CONSTRAINT fk_nuardata_sitesofspecialscientificinterestengland_submissione FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sitesofspecialscientificinterestscotland fk_nuardata_sitesofspecialscientificinterestscotland_dataprovid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestscotland
    ADD CONSTRAINT fk_nuardata_sitesofspecialscientificinterestscotland_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sitesofspecialscientificinterestscotland fk_nuardata_sitesofspecialscientificinterestscotland_submission; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestscotland
    ADD CONSTRAINT fk_nuardata_sitesofspecialscientificinterestscotland_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: sitesofspecialscientificinterestwales fk_nuardata_sitesofspecialscientificinterestwales_dataprovideri; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestwales
    ADD CONSTRAINT fk_nuardata_sitesofspecialscientificinterestwales_dataprovideri FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: sitesofspecialscientificinterestwales fk_nuardata_sitesofspecialscientificinterestwales_submissioneve; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.sitesofspecialscientificinterestwales
    ADD CONSTRAINT fk_nuardata_sitesofspecialscientificinterestwales_submissioneve FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: supplementaldatacoverage fk_nuardata_supplementaldatacoverage_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.supplementaldatacoverage
    ADD CONSTRAINT fk_nuardata_supplementaldatacoverage_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: supplementaldatacoverage fk_nuardata_supplementaldatacoverage_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.supplementaldatacoverage
    ADD CONSTRAINT fk_nuardata_supplementaldatacoverage_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telcoaccessobject fk_nuardata_telcoaccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcoaccessobject
    ADD CONSTRAINT fk_nuardata_telcoaccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telcoaccessobject fk_nuardata_telcoaccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcoaccessobject
    ADD CONSTRAINT fk_nuardata_telcoaccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telcocontainerobject fk_nuardata_telcocontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcocontainerobject
    ADD CONSTRAINT fk_nuardata_telcocontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telcocontainerobject fk_nuardata_telcocontainerobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcocontainerobject
    ADD CONSTRAINT fk_nuardata_telcocontainerobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telconetwork fk_nuardata_telconetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetwork
    ADD CONSTRAINT fk_nuardata_telconetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telconetwork fk_nuardata_telconetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetwork
    ADD CONSTRAINT fk_nuardata_telconetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telconetworkannotation fk_nuardata_telconetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkannotation
    ADD CONSTRAINT fk_nuardata_telconetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telconetworkannotation fk_nuardata_telconetworkannotation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkannotation
    ADD CONSTRAINT fk_nuardata_telconetworkannotation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telconetworkdescriptionobject fk_nuardata_telconetworkdescriptionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_telconetworkdescriptionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telconetworkdescriptionobject fk_nuardata_telconetworkdescriptionobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_telconetworkdescriptionobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telconetworkdimension fk_nuardata_telconetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkdimension
    ADD CONSTRAINT fk_nuardata_telconetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telconetworkdimension fk_nuardata_telconetworkdimension_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworkdimension
    ADD CONSTRAINT fk_nuardata_telconetworkdimension_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telconetworklink fk_nuardata_telconetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworklink
    ADD CONSTRAINT fk_nuardata_telconetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telconetworklink fk_nuardata_telconetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworklink
    ADD CONSTRAINT fk_nuardata_telconetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telconetworklinkzoneofinterest fk_nuardata_telconetworklinkzoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_telconetworklinkzoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telconetworklinkzoneofinterest fk_nuardata_telconetworklinkzoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_telconetworklinkzoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telconetworknode fk_nuardata_telconetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworknode
    ADD CONSTRAINT fk_nuardata_telconetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telconetworknode fk_nuardata_telconetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworknode
    ADD CONSTRAINT fk_nuardata_telconetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telconetworknodezoneofinterest fk_nuardata_telconetworknodezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_telconetworknodezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telconetworknodezoneofinterest fk_nuardata_telconetworknodezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telconetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_telconetworknodezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telcophysicalprotectionobject fk_nuardata_telcophysicalprotectionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcophysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_telcophysicalprotectionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telcophysicalprotectionobject fk_nuardata_telcophysicalprotectionobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcophysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_telcophysicalprotectionobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telcoservicearea fk_nuardata_telcoservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcoservicearea
    ADD CONSTRAINT fk_nuardata_telcoservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telcoservicearea fk_nuardata_telcoservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcoservicearea
    ADD CONSTRAINT fk_nuardata_telcoservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telcosite fk_nuardata_telcosite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcosite
    ADD CONSTRAINT fk_nuardata_telcosite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telcosite fk_nuardata_telcosite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcosite
    ADD CONSTRAINT fk_nuardata_telcosite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telcositezoneofinterest fk_nuardata_telcositezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcositezoneofinterest
    ADD CONSTRAINT fk_nuardata_telcositezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telcositezoneofinterest fk_nuardata_telcositezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcositezoneofinterest
    ADD CONSTRAINT fk_nuardata_telcositezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: telcosupportobject fk_nuardata_telcosupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcosupportobject
    ADD CONSTRAINT fk_nuardata_telcosupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: telcosupportobject fk_nuardata_telcosupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.telcosupportobject
    ADD CONSTRAINT fk_nuardata_telcosupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalaccessobject fk_nuardata_thermalaccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalaccessobject
    ADD CONSTRAINT fk_nuardata_thermalaccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalaccessobject fk_nuardata_thermalaccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalaccessobject
    ADD CONSTRAINT fk_nuardata_thermalaccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalcontainerobject fk_nuardata_thermalcontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalcontainerobject
    ADD CONSTRAINT fk_nuardata_thermalcontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalcontainerobject fk_nuardata_thermalcontainerobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalcontainerobject
    ADD CONSTRAINT fk_nuardata_thermalcontainerobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalnetwork fk_nuardata_thermalnetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetwork
    ADD CONSTRAINT fk_nuardata_thermalnetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalnetwork fk_nuardata_thermalnetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetwork
    ADD CONSTRAINT fk_nuardata_thermalnetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalnetworkannotation fk_nuardata_thermalnetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkannotation
    ADD CONSTRAINT fk_nuardata_thermalnetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalnetworkannotation fk_nuardata_thermalnetworkannotation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkannotation
    ADD CONSTRAINT fk_nuardata_thermalnetworkannotation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalnetworkdescriptionobject fk_nuardata_thermalnetworkdescriptionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_thermalnetworkdescriptionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalnetworkdescriptionobject fk_nuardata_thermalnetworkdescriptionobject_submissioneventid_f; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_thermalnetworkdescriptionobject_submissioneventid_f FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalnetworkdimension fk_nuardata_thermalnetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkdimension
    ADD CONSTRAINT fk_nuardata_thermalnetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalnetworkdimension fk_nuardata_thermalnetworkdimension_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworkdimension
    ADD CONSTRAINT fk_nuardata_thermalnetworkdimension_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalnetworklink fk_nuardata_thermalnetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworklink
    ADD CONSTRAINT fk_nuardata_thermalnetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalnetworklink fk_nuardata_thermalnetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworklink
    ADD CONSTRAINT fk_nuardata_thermalnetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalnetworklinkzoneofinterest fk_nuardata_thermalnetworklinkzoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_thermalnetworklinkzoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalnetworklinkzoneofinterest fk_nuardata_thermalnetworklinkzoneofinterest_submissioneventid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_thermalnetworklinkzoneofinterest_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalnetworknode fk_nuardata_thermalnetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworknode
    ADD CONSTRAINT fk_nuardata_thermalnetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalnetworknode fk_nuardata_thermalnetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworknode
    ADD CONSTRAINT fk_nuardata_thermalnetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalnetworknodezoneofinterest fk_nuardata_thermalnetworknodezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_thermalnetworknodezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalnetworknodezoneofinterest fk_nuardata_thermalnetworknodezoneofinterest_submissioneventid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalnetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_thermalnetworknodezoneofinterest_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalphysicalprotectionobject fk_nuardata_thermalphysicalprotectionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_thermalphysicalprotectionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalphysicalprotectionobject fk_nuardata_thermalphysicalprotectionobject_submissioneventid_f; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_thermalphysicalprotectionobject_submissioneventid_f FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalservicearea fk_nuardata_thermalservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalservicearea
    ADD CONSTRAINT fk_nuardata_thermalservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalservicearea fk_nuardata_thermalservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalservicearea
    ADD CONSTRAINT fk_nuardata_thermalservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalsite fk_nuardata_thermalsite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsite
    ADD CONSTRAINT fk_nuardata_thermalsite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalsite fk_nuardata_thermalsite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsite
    ADD CONSTRAINT fk_nuardata_thermalsite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalsitezoneofinterest fk_nuardata_thermalsitezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsitezoneofinterest
    ADD CONSTRAINT fk_nuardata_thermalsitezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalsitezoneofinterest fk_nuardata_thermalsitezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsitezoneofinterest
    ADD CONSTRAINT fk_nuardata_thermalsitezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: thermalsupportobject fk_nuardata_thermalsupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsupportobject
    ADD CONSTRAINT fk_nuardata_thermalsupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: thermalsupportobject fk_nuardata_thermalsupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.thermalsupportobject
    ADD CONSTRAINT fk_nuardata_thermalsupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalaccessobject fk_nuardata_transportsignalaccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalaccessobject
    ADD CONSTRAINT fk_nuardata_transportsignalaccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalaccessobject fk_nuardata_transportsignalaccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalaccessobject
    ADD CONSTRAINT fk_nuardata_transportsignalaccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalcontainerobject fk_nuardata_transportsignalcontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalcontainerobject
    ADD CONSTRAINT fk_nuardata_transportsignalcontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalcontainerobject fk_nuardata_transportsignalcontainerobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalcontainerobject
    ADD CONSTRAINT fk_nuardata_transportsignalcontainerobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalnetwork fk_nuardata_transportsignalnetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetwork
    ADD CONSTRAINT fk_nuardata_transportsignalnetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalnetwork fk_nuardata_transportsignalnetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetwork
    ADD CONSTRAINT fk_nuardata_transportsignalnetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalnetworkannotation fk_nuardata_transportsignalnetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkannotation
    ADD CONSTRAINT fk_nuardata_transportsignalnetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalnetworkannotation fk_nuardata_transportsignalnetworkannotation_submissioneventid_; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkannotation
    ADD CONSTRAINT fk_nuardata_transportsignalnetworkannotation_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalnetworkdescriptionobject fk_nuardata_transportsignalnetworkdescriptionobject_dataprovide; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_transportsignalnetworkdescriptionobject_dataprovide FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalnetworkdescriptionobject fk_nuardata_transportsignalnetworkdescriptionobject_submissione; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_transportsignalnetworkdescriptionobject_submissione FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalnetworkdimension fk_nuardata_transportsignalnetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkdimension
    ADD CONSTRAINT fk_nuardata_transportsignalnetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalnetworkdimension fk_nuardata_transportsignalnetworkdimension_submissioneventid_f; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworkdimension
    ADD CONSTRAINT fk_nuardata_transportsignalnetworkdimension_submissioneventid_f FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalnetworklink fk_nuardata_transportsignalnetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworklink
    ADD CONSTRAINT fk_nuardata_transportsignalnetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalnetworklink fk_nuardata_transportsignalnetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworklink
    ADD CONSTRAINT fk_nuardata_transportsignalnetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalnetworklinkzoneofinterest fk_nuardata_transportsignalnetworklinkzoneofinterest_dataprovid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_transportsignalnetworklinkzoneofinterest_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalnetworklinkzoneofinterest fk_nuardata_transportsignalnetworklinkzoneofinterest_submission; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_transportsignalnetworklinkzoneofinterest_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalnetworknode fk_nuardata_transportsignalnetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworknode
    ADD CONSTRAINT fk_nuardata_transportsignalnetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalnetworknode fk_nuardata_transportsignalnetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworknode
    ADD CONSTRAINT fk_nuardata_transportsignalnetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalnetworknodezoneofinterest fk_nuardata_transportsignalnetworknodezoneofinterest_dataprovid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_transportsignalnetworknodezoneofinterest_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalnetworknodezoneofinterest fk_nuardata_transportsignalnetworknodezoneofinterest_submission; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalnetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_transportsignalnetworknodezoneofinterest_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalprotectionobject fk_nuardata_transportsignalprotectionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalprotectionobject
    ADD CONSTRAINT fk_nuardata_transportsignalprotectionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalprotectionobject fk_nuardata_transportsignalprotectionobject_submissioneventid_f; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalprotectionobject
    ADD CONSTRAINT fk_nuardata_transportsignalprotectionobject_submissioneventid_f FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalservicearea fk_nuardata_transportsignalservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalservicearea
    ADD CONSTRAINT fk_nuardata_transportsignalservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalservicearea fk_nuardata_transportsignalservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalservicearea
    ADD CONSTRAINT fk_nuardata_transportsignalservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalsite fk_nuardata_transportsignalsite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsite
    ADD CONSTRAINT fk_nuardata_transportsignalsite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalsite fk_nuardata_transportsignalsite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsite
    ADD CONSTRAINT fk_nuardata_transportsignalsite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalsitezoneofinterest fk_nuardata_transportsignalsitezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsitezoneofinterest
    ADD CONSTRAINT fk_nuardata_transportsignalsitezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalsitezoneofinterest fk_nuardata_transportsignalsitezoneofinterest_submissioneventid; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsitezoneofinterest
    ADD CONSTRAINT fk_nuardata_transportsignalsitezoneofinterest_submissioneventid FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: transportsignalsupportobject fk_nuardata_transportsignalsupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsupportobject
    ADD CONSTRAINT fk_nuardata_transportsignalsupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: transportsignalsupportobject fk_nuardata_transportsignalsupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.transportsignalsupportobject
    ADD CONSTRAINT fk_nuardata_transportsignalsupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: treelocation fk_nuardata_treelocation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.treelocation
    ADD CONSTRAINT fk_nuardata_treelocation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: treelocation fk_nuardata_treelocation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.treelocation
    ADD CONSTRAINT fk_nuardata_treelocation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: wateraccessobject fk_nuardata_wateraccessobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.wateraccessobject
    ADD CONSTRAINT fk_nuardata_wateraccessobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: wateraccessobject fk_nuardata_wateraccessobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.wateraccessobject
    ADD CONSTRAINT fk_nuardata_wateraccessobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: watercontainerobject fk_nuardata_watercontainerobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watercontainerobject
    ADD CONSTRAINT fk_nuardata_watercontainerobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: watercontainerobject fk_nuardata_watercontainerobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watercontainerobject
    ADD CONSTRAINT fk_nuardata_watercontainerobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waternetwork fk_nuardata_waternetwork_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetwork
    ADD CONSTRAINT fk_nuardata_waternetwork_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waternetwork fk_nuardata_waternetwork_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetwork
    ADD CONSTRAINT fk_nuardata_waternetwork_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waternetworkannotation fk_nuardata_waternetworkannotation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkannotation
    ADD CONSTRAINT fk_nuardata_waternetworkannotation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waternetworkannotation fk_nuardata_waternetworkannotation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkannotation
    ADD CONSTRAINT fk_nuardata_waternetworkannotation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waternetworkdescriptionobject fk_nuardata_waternetworkdescriptionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_waternetworkdescriptionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waternetworkdescriptionobject fk_nuardata_waternetworkdescriptionobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkdescriptionobject
    ADD CONSTRAINT fk_nuardata_waternetworkdescriptionobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waternetworkdimension fk_nuardata_waternetworkdimension_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkdimension
    ADD CONSTRAINT fk_nuardata_waternetworkdimension_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waternetworkdimension fk_nuardata_waternetworkdimension_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworkdimension
    ADD CONSTRAINT fk_nuardata_waternetworkdimension_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waternetworklink fk_nuardata_waternetworklink_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworklink
    ADD CONSTRAINT fk_nuardata_waternetworklink_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waternetworklink fk_nuardata_waternetworklink_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworklink
    ADD CONSTRAINT fk_nuardata_waternetworklink_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waternetworklinkzoneofinterest fk_nuardata_waternetworklinkzoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_waternetworklinkzoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waternetworklinkzoneofinterest fk_nuardata_waternetworklinkzoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworklinkzoneofinterest
    ADD CONSTRAINT fk_nuardata_waternetworklinkzoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waternetworknode fk_nuardata_waternetworknode_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworknode
    ADD CONSTRAINT fk_nuardata_waternetworknode_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waternetworknode fk_nuardata_waternetworknode_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworknode
    ADD CONSTRAINT fk_nuardata_waternetworknode_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waternetworknodezoneofinterest fk_nuardata_waternetworknodezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_waternetworknodezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waternetworknodezoneofinterest fk_nuardata_waternetworknodezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waternetworknodezoneofinterest
    ADD CONSTRAINT fk_nuardata_waternetworknodezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waterphysicalprotectionobject fk_nuardata_waterphysicalprotectionobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waterphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_waterphysicalprotectionobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waterphysicalprotectionobject fk_nuardata_waterphysicalprotectionobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waterphysicalprotectionobject
    ADD CONSTRAINT fk_nuardata_waterphysicalprotectionobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: waterservicearea fk_nuardata_waterservicearea_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waterservicearea
    ADD CONSTRAINT fk_nuardata_waterservicearea_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: waterservicearea fk_nuardata_waterservicearea_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.waterservicearea
    ADD CONSTRAINT fk_nuardata_waterservicearea_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: watersite fk_nuardata_watersite_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersite
    ADD CONSTRAINT fk_nuardata_watersite_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: watersite fk_nuardata_watersite_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersite
    ADD CONSTRAINT fk_nuardata_watersite_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: watersitezoneofinterest fk_nuardata_watersitezoneofinterest_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersitezoneofinterest
    ADD CONSTRAINT fk_nuardata_watersitezoneofinterest_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: watersitezoneofinterest fk_nuardata_watersitezoneofinterest_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersitezoneofinterest
    ADD CONSTRAINT fk_nuardata_watersitezoneofinterest_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: watersupportobject fk_nuardata_watersupportobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersupportobject
    ADD CONSTRAINT fk_nuardata_watersupportobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: watersupportobject fk_nuardata_watersupportobject_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuardata; Owner: sds_admin
--

ALTER TABLE ONLY nuardata.watersupportobject
    ADD CONSTRAINT fk_nuardata_watersupportobject_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuaractivityproximityrule fk_nuarorganisations_nuaractivityproximityrule_activitytypeid_f; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractivityproximityrule
    ADD CONSTRAINT fk_nuarorganisations_nuaractivityproximityrule_activitytypeid_f FOREIGN KEY (activitytypeid_fk) REFERENCES nuarcodelists_platform.activitytypevalue(systemid);


--
-- Name: nuaractivityproximityrule fk_nuarorganisations_nuaractivityproximityrule_dataproviderid_f; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractivityproximityrule
    ADD CONSTRAINT fk_nuarorganisations_nuaractivityproximityrule_dataproviderid_f FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuaractivityproximityrule_history fk_nuarorganisations_nuaractivityproximityrule_history_dataprov; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractivityproximityrule_history
    ADD CONSTRAINT fk_nuarorganisations_nuaractivityproximityrule_history_dataprov FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuaractivityproximityrule_history fk_nuarorganisations_nuaractivityproximityrule_history_submissi; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractivityproximityrule_history
    ADD CONSTRAINT fk_nuarorganisations_nuaractivityproximityrule_history_submissi FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuaractivityproximityrule fk_nuarorganisations_nuaractivityproximityrule_submissioneventi; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuaractivityproximityrule
    ADD CONSTRAINT fk_nuarorganisations_nuaractivityproximityrule_submissioneventi FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarcontactdetails fk_nuarorganisations_nuarcontactdetails_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuarcontactdetails
    ADD CONSTRAINT fk_nuarorganisations_nuarcontactdetails_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarcontactdetails fk_nuarorganisations_nuarcontactdetails_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.nuarcontactdetails
    ADD CONSTRAINT fk_nuarorganisations_nuarcontactdetails_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortocontactdetails fk_nuarorganisations_relationship_actortocontactdetails_datapro; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortocontactdetails
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortocontactdetails_datapro FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortocontactdetails_history fk_nuarorganisations_relationship_actortocontactdetails_histor0; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortocontactdetails_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortocontactdetails_histor0 FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortocontactdetails_history fk_nuarorganisations_relationship_actortocontactdetails_history; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortocontactdetails_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortocontactdetails_history FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortocontactdetails fk_nuarorganisations_relationship_actortocontactdetails_submiss; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortocontactdetails
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortocontactdetails_submiss FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortodda fk_nuarorganisations_relationship_actortodda_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodda
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortodda_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortodda_history fk_nuarorganisations_relationship_actortodda_history_dataprovid; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodda_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortodda_history_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortodda_history fk_nuarorganisations_relationship_actortodda_history_submission; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodda_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortodda_history_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortodda fk_nuarorganisations_relationship_actortodda_submissioneventid_; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodda
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortodda_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortodis fk_nuarorganisations_relationship_actortodis_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodis
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortodis_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortodis_history fk_nuarorganisations_relationship_actortodis_history_dataprovid; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodis_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortodis_history_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortodis_history fk_nuarorganisations_relationship_actortodis_history_submission; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodis_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortodis_history_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortodis fk_nuarorganisations_relationship_actortodis_submissioneventid_; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortodis
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortodis_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortorule fk_nuarorganisations_relationship_actortorule_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortorule
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortorule_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortorule_history fk_nuarorganisations_relationship_actortorule_history_dataprovi; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortorule_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortorule_history_dataprovi FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortorule_history fk_nuarorganisations_relationship_actortorule_history_submissio; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortorule_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortorule_history_submissio FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortorule fk_nuarorganisations_relationship_actortorule_submissioneventid; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortorule
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortorule_submissioneventid FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortoservicearea fk_nuarorganisations_relationship_actortoservicearea_dataprovid; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortoservicearea
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortoservicearea_dataprovid FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortoservicearea_history fk_nuarorganisations_relationship_actortoservicearea_history_da; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortoservicearea_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortoservicearea_history_da FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_actortoservicearea_history fk_nuarorganisations_relationship_actortoservicearea_history_su; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortoservicearea_history
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortoservicearea_history_su FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: relationship_actortoservicearea fk_nuarorganisations_relationship_actortoservicearea_submission; Type: FK CONSTRAINT; Schema: nuarorganisations; Owner: sds_admin
--

ALTER TABLE ONLY nuarorganisations.relationship_actortoservicearea
    ADD CONSTRAINT fk_nuarorganisations_relationship_actortoservicearea_submission FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarsourcedataset fk_nuarsubmissions_nuarsourcedataset_nuaractorid_fk; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsourcedataset
    ADD CONSTRAINT fk_nuarsubmissions_nuarsourcedataset_nuaractorid_fk FOREIGN KEY (nuaractorid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarsubmissionareareplacement fk_nuarsubmissions_nuarsubmissionareareplacement_submissioneven; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionareareplacement
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissionareareplacement_submissioneven FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarsubmissiondatasetreplacement fk_nuarsubmissions_nuarsubmissiondatasetreplacement_nuarsourced; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissiondatasetreplacement
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissiondatasetreplacement_nuarsourced FOREIGN KEY (nuarsourcedatasetid_fk) REFERENCES nuarsubmissions.nuarsourcedataset(systemid);


--
-- Name: nuarsubmissiondatasetreplacement fk_nuarsubmissions_nuarsubmissiondatasetreplacement_submissione; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissiondatasetreplacement
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissiondatasetreplacement_submissione FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarsubmissionevent fk_nuarsubmissions_nuarsubmissionevent_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionevent
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissionevent_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: nuarsubmissionfeaturereplacement fk_nuarsubmissions_nuarsubmissionfeaturereplacement_submissione; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionfeaturereplacement
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissionfeaturereplacement_submissione FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarsubmissionsourcedataset fk_nuarsubmissions_nuarsubmissionsourcedataset_nuarsourcedatase; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionsourcedataset
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissionsourcedataset_nuarsourcedatase FOREIGN KEY (nuarsourcedatasetid_fk) REFERENCES nuarsubmissions.nuarsourcedataset(systemid);


--
-- Name: nuarsubmissionsourcedataset fk_nuarsubmissions_nuarsubmissionsourcedataset_submissioneventi; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionsourcedataset
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissionsourcedataset_submissioneventi FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarsubmissionsubmissionreplacement fk_nuarsubmissions_nuarsubmissionsubmissionreplacement_newsubmi; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionsubmissionreplacement
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissionsubmissionreplacement_newsubmi FOREIGN KEY (newsubmissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarsubmissionsubmissionreplacement fk_nuarsubmissions_nuarsubmissionsubmissionreplacement_oldsubmi; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissionsubmissionreplacement
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissionsubmissionreplacement_oldsubmi FOREIGN KEY (oldsubmissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: nuarsubmissiontargettable fk_nuarsubmissions_nuarsubmissiontargettable_submissioneventid_; Type: FK CONSTRAINT; Schema: nuarsubmissions; Owner: sds_admin
--

ALTER TABLE ONLY nuarsubmissions.nuarsubmissiontargettable
    ADD CONSTRAINT fk_nuarsubmissions_nuarsubmissiontargettable_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: observation fk_nuarusercreateddata_observation_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observation
    ADD CONSTRAINT fk_nuarusercreateddata_observation_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: observation fk_nuarusercreateddata_observation_onbehalfoforganisationid_fk; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observation
    ADD CONSTRAINT fk_nuarusercreateddata_observation_onbehalfoforganisationid_fk FOREIGN KEY (onbehalfoforganisationid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: observation fk_nuarusercreateddata_observation_originatingorganisationid_fk; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observation
    ADD CONSTRAINT fk_nuarusercreateddata_observation_originatingorganisationid_fk FOREIGN KEY (originatingorganisationid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: observation fk_nuarusercreateddata_observation_submissioneventid_fk; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observation
    ADD CONSTRAINT fk_nuarusercreateddata_observation_submissioneventid_fk FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: observationfeedback fk_nuarusercreateddata_observationfeedback_observationid; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observationfeedback
    ADD CONSTRAINT fk_nuarusercreateddata_observationfeedback_observationid FOREIGN KEY (observationid_fk) REFERENCES nuarusercreateddata.observation(systemid);


--
-- Name: observationorganisationvisibilityscope fk_nuarusercreateddata_observationorganisationvisibilityscope_n; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observationorganisationvisibilityscope
    ADD CONSTRAINT fk_nuarusercreateddata_observationorganisationvisibilityscope_n FOREIGN KEY (nuaractorid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: observationorganisationvisibilityscope fk_nuarusercreateddata_observationorganisationvisibilityscope_o; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.observationorganisationvisibilityscope
    ADD CONSTRAINT fk_nuarusercreateddata_observationorganisationvisibilityscope_o FOREIGN KEY (observationid_fk) REFERENCES nuarusercreateddata.observation(systemid);


--
-- Name: relationship_wronglyrecordedobject fk_nuarusercreateddata_relationship_wronglyrecordedobject_datap; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.relationship_wronglyrecordedobject
    ADD CONSTRAINT fk_nuarusercreateddata_relationship_wronglyrecordedobject_datap FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: relationship_wronglyrecordedobject fk_nuarusercreateddata_relationship_wronglyrecordedobject_submi; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.relationship_wronglyrecordedobject
    ADD CONSTRAINT fk_nuarusercreateddata_relationship_wronglyrecordedobject_submi FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: unidentifiedburiedobject fk_nuarusercreateddata_unidentifiedburiedobject_dataproviderid_; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.unidentifiedburiedobject
    ADD CONSTRAINT fk_nuarusercreateddata_unidentifiedburiedobject_dataproviderid_ FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: unidentifiedburiedobject fk_nuarusercreateddata_unidentifiedburiedobject_submissionevent; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.unidentifiedburiedobject
    ADD CONSTRAINT fk_nuarusercreateddata_unidentifiedburiedobject_submissionevent FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: wronglyrecordedobject fk_nuarusercreateddata_wronglyrecordedobject_dataproviderid_fk; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.wronglyrecordedobject
    ADD CONSTRAINT fk_nuarusercreateddata_wronglyrecordedobject_dataproviderid_fk FOREIGN KEY (dataproviderid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: wronglyrecordedobject fk_nuarusercreateddata_wronglyrecordedobject_onbehalfoforganisa; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.wronglyrecordedobject
    ADD CONSTRAINT fk_nuarusercreateddata_wronglyrecordedobject_onbehalfoforganisa FOREIGN KEY (onbehalfoforganisationid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: wronglyrecordedobject fk_nuarusercreateddata_wronglyrecordedobject_originatingorganis; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.wronglyrecordedobject
    ADD CONSTRAINT fk_nuarusercreateddata_wronglyrecordedobject_originatingorganis FOREIGN KEY (originatingorganisationid_fk) REFERENCES nuarorganisations.nuaractor(systemid);


--
-- Name: wronglyrecordedobject fk_nuarusercreateddata_wronglyrecordedobject_submissioneventid_; Type: FK CONSTRAINT; Schema: nuarusercreateddata; Owner: sds_admin
--

ALTER TABLE ONLY nuarusercreateddata.wronglyrecordedobject
    ADD CONSTRAINT fk_nuarusercreateddata_wronglyrecordedobject_submissioneventid_ FOREIGN KEY (submissioneventid_fk) REFERENCES nuarsubmissions.nuarsubmissionevent(systemid);


--
-- Name: FUNCTION pg_replication_origin_advance(text, pg_lsn); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_create(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_drop(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_oid(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_progress(text, boolean); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_session_is_setup(); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_session_progress(boolean); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_session_reset(); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_session_setup(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_xact_reset(); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO azure_pg_admin;


--
-- Name: FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO azure_pg_admin;


--
-- Name: FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO azure_pg_admin;


--
-- Name: FUNCTION pg_stat_reset(); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset() TO azure_pg_admin;


--
-- Name: FUNCTION pg_stat_reset_shared(text); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_shared(text) TO azure_pg_admin;


--
-- Name: FUNCTION pg_stat_reset_single_function_counters(oid); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_function_counters(oid) TO azure_pg_admin;


--
-- Name: FUNCTION pg_stat_reset_single_table_counters(oid); Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_table_counters(oid) TO azure_pg_admin;


--
-- Name: COLUMN pg_config.name; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(name) ON TABLE pg_catalog.pg_config TO azure_pg_admin;


--
-- Name: COLUMN pg_config.setting; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(setting) ON TABLE pg_catalog.pg_config TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.line_number; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(line_number) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.type; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(type) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.database; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(database) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.user_name; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(user_name) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.address; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(address) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.netmask; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(netmask) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.auth_method; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(auth_method) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.options; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(options) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_hba_file_rules.error; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(error) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;


--
-- Name: COLUMN pg_replication_origin_status.local_id; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(local_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;


--
-- Name: COLUMN pg_replication_origin_status.external_id; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(external_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;


--
-- Name: COLUMN pg_replication_origin_status.remote_lsn; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(remote_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;


--
-- Name: COLUMN pg_replication_origin_status.local_lsn; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(local_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;


--
-- Name: COLUMN pg_shmem_allocations.name; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(name) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;


--
-- Name: COLUMN pg_shmem_allocations.off; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(off) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;


--
-- Name: COLUMN pg_shmem_allocations.size; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(size) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;


--
-- Name: COLUMN pg_shmem_allocations.allocated_size; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(allocated_size) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.starelid; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(starelid) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staattnum; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staattnum) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stainherit; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stainherit) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanullfrac; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanullfrac) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stawidth; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stawidth) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stadistinct; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stadistinct) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stakind5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stakind5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.staop5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(staop5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stacoll5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stacoll5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stanumbers5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stanumbers5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues1; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues2; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues3; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues4; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_statistic.stavalues5; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(stavalues5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.oid; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(oid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subdbid; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subdbid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subname; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subowner; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subowner) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subenabled; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subenabled) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subconninfo; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subconninfo) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subslotname; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subslotname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subsynccommit; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subsynccommit) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: COLUMN pg_subscription.subpublications; Type: ACL; Schema: pg_catalog; Owner: azuresu
--

GRANT SELECT(subpublications) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;


--
-- Name: TABLE spatial_ref_sys; Type: ACL; Schema: public; Owner: sds_admin
--

GRANT ALL ON TABLE public.spatial_ref_sys TO azure_pg_admin;


--
-- PostgreSQL database dump complete
--

