--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackholeid integer NOT NULL,
    gravity integer,
    galaxyid integer,
    wormhole boolean DEFAULT false NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackholeid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackholeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackholeid_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackholeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackholeid_seq OWNED BY public.blackhole.blackholeid;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxyid integer NOT NULL,
    speed integer,
    description text,
    name character varying(200) NOT NULL,
    rotation_speed integer DEFAULT 1000000 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxyid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxyid_seq OWNED BY public.galaxy.galaxyid;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moonid integer NOT NULL,
    name character varying(200),
    name_code character varying(200),
    has_water boolean NOT NULL,
    planetid integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonid_seq OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonid_seq OWNED BY public.moon.moonid;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planetid integer NOT NULL,
    name character varying(200) NOT NULL,
    amount_of_people numeric,
    time_travel boolean DEFAULT false NOT NULL,
    starid integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetid_seq OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetid_seq OWNED BY public.planet.planetid;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    starid integer NOT NULL,
    radius integer NOT NULL,
    color character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    galaxyid integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.starid;


--
-- Name: blackhole blackholeid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackholeid SET DEFAULT nextval('public.blackhole_blackholeid_seq'::regclass);


--
-- Name: galaxy galaxyid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxyid SET DEFAULT nextval('public.galaxy_galaxyid_seq'::regclass);


--
-- Name: moon moonid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moonid SET DEFAULT nextval('public.moon_moonid_seq'::regclass);


--
-- Name: planet planetid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planetid SET DEFAULT nextval('public.planet_planetid_seq'::regclass);


--
-- Name: star starid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN starid SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'andromeda', 1000000);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'galaxy2', 1000000);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'galaxy6', 1000000);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'galaxy3', 1000000);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'galaxy4', 1000000);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'galaxy5', 1000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon1', true, 2);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon2', true, 3);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon3', true, 4);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon4', true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon5', true, 4);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon6', true, 5);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon7', true, 5);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon8', true, 5);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon9', true, 5);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon10', true, 6);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon11', true, 6);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon12', true, 6);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon13', true, 6);
INSERT INTO public.moon VALUES (14, 'moon14', 'moon43', true, 6);
INSERT INTO public.moon VALUES (15, 'moon14', 'moon14', true, 6);
INSERT INTO public.moon VALUES (16, 'moon15', 'moon15', true, 7);
INSERT INTO public.moon VALUES (17, 'moon16', 'moon16', true, 7);
INSERT INTO public.moon VALUES (18, 'moon17', 'moon17', true, 7);
INSERT INTO public.moon VALUES (19, 'moon18', 'moon18', true, 7);
INSERT INTO public.moon VALUES (20, 'moon19', 'moon19', true, 7);
INSERT INTO public.moon VALUES (21, 'moon120', 'moon20', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'mars', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'neptune', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'jupiter', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'unarnus', NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'venus', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'mercury', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'saturn', NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'pluto', NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'yolo', NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'jalala', NULL, false, 1);
INSERT INTO public.planet VALUES (12, 'malala', NULL, false, 1);
INSERT INTO public.planet VALUES (13, 'kento', NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 12346123, 'red', 'beatlejuice', 1);
INSERT INTO public.star VALUES (2, 12346124, 'yellow', 'joe', 2);
INSERT INTO public.star VALUES (3, 12346125, 'white', 'gary', 3);
INSERT INTO public.star VALUES (4, 12346125, 'orange', 'star in galaxy2', 4);
INSERT INTO public.star VALUES (5, 12346125, 'yellow', 'bigyellow', 5);
INSERT INTO public.star VALUES (6, 12346125, 'yellow', 'small orange', 6);


--
-- Name: blackhole_blackholeid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackholeid_seq', 1, false);


--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxyid_seq', 6, true);


--
-- Name: moon_moonid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonid_seq', 21, true);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 13, true);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 6, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackholeid);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxyid);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moonid);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planetid);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (starid);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxyid) REFERENCES public.galaxy(galaxyid);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planetid) REFERENCES public.planet(planetid);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (starid) REFERENCES public.star(starid);


--
-- PostgreSQL database dump complete
--

