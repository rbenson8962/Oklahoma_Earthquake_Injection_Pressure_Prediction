--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2020-11-19 15:44:53

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 16958)
-- Name: arbk_inject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.arbk_inject (
    api character varying(100),
    total_volume numeric,
    minimum_psi bigint,
    maximum_psi bigint,
    average_psi numeric,
    total_well_reports bigint,
    latitude character varying(100),
    longitude character varying(100)
);


ALTER TABLE public.arbk_inject OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16964)
-- Name: arbk_inject2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.arbk_inject2 (
    api character varying(100),
    total_volume numeric,
    minimum_psi bigint,
    maximum_psi bigint,
    average_psi numeric,
    total_well_reports bigint,
    latitude character varying(100),
    longitude character varying(100)
);


ALTER TABLE public.arbk_inject2 OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16951)
-- Name: injection1214; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.injection1214 (
    api character varying(100),
    "Well_Name" character varying(100),
    "Well_Number" character varying(100),
    "Operator_Number" character varying(100),
    "Operator_Name" character varying(100),
    "Daily_Report_Date_Start" character varying(100),
    "Daily_Report_Date_End" character varying(100),
    "Report_Date" character varying(100),
    "Volume_BPD" bigint,
    "Pressure_PSI" bigint,
    "Latitude" character varying(100),
    "Longitude" character varying(100),
    "DirArea" character varying(100),
    "Directive_Status" character varying(100)
);


ALTER TABLE public.injection1214 OWNER TO postgres;

-- Completed on 2020-11-19 15:44:53

--
-- PostgreSQL database dump complete
--

