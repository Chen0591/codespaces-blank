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
-- Name: celestial_body; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body (
    celestial_body_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age character varying(50),
    size character varying(50),
    details text,
    color integer
);


ALTER TABLE public.celestial_body OWNER TO freecodecamp;
--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_body_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_body_id_seq OWNED BY public.celestial_body.celestial_body_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    size integer,
    type character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    age integer,
    size numeric,
    orbital_period numeric,
    is_a boolean,
    is_n boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    age integer,
    size numeric,
    dtails text,
    orbital_period numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    age numeric,
    size numeric,
    mass double precision,
    color character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: celestial_body celestial_body_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body ALTER COLUMN celestial_body_id SET DEFAULT nextval('public.celestial_body_body_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: celestial_body; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body VALUES (1, 'aa1', '15', '159', 'big', NULL);
INSERT INTO public.celestial_body VALUES (2, 'bb1', '152', '1234', 'large', NULL);
INSERT INTO public.celestial_body VALUES (3, 'cc1', '1599', '1594', 'huge', NULL);
INSERT INTO public.celestial_body VALUES (4, 'aa2', '15', '159', 'big', NULL);
INSERT INTO public.celestial_body VALUES (5, 'bb2', '152', '1234', 'large', NULL);
INSERT INTO public.celestial_body VALUES (6, 'cc2', '1599', '1594', 'huge', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 10, 10, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 12, 12, 'elliptical');
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 15, 15, 'irregular');
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 10, 10, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 12, 12, 'elliptical');
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 15, 15, 'irregular');
INSERT INTO public.galaxy VALUES (7, 'galaxy7', 108, 105, 'spiral');
INSERT INTO public.galaxy VALUES (8, 'galaxy8', 121, 123, 'elliptical');
INSERT INTO public.galaxy VALUES (9, 'galaxy9', 115, 215, 'irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 2, 45, 33, 7.5, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'b', 2, 45, 33, 7.5, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'c', 1, 45, 4, 66, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'd', 3, 26, 59, 44, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'e', 6, 26, 44, 77, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'f', 2, 45, 55, 44, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'b2', 2, 45, 33, 7.5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'c4', 1, 45, 4, 66, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'd2', 3, 26, 59, 44, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'e1', 6, 26, 44, 77, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'd1', 2, 45, 55, 44, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'b21', 2, 45, 33, 7.5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'c41', 1, 45, 4, 66, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'd21', 3, 26, 59, 44, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'e11', 6, 26, 44, 77, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'd11', 2, 45, 55, 44, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'b22', 2, 45, 33, 7.5, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'c42', 1, 45, 4, 66, NULL, NULL);
INSERT INTO public.moon VALUES (24, '2d2', 3, 26, 59, 44, NULL, NULL);
INSERT INTO public.moon VALUES (25, '2e1', 6, 26, 44, 77, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'd5', 2, 45, 55, 44, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, 10, 10, 'spiral', NULL);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, 12, 12, 'elliptical', NULL);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, 15, 15, 'irregular', NULL);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, 10, 10, 'spiral', NULL);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, 12, 12, 'elliptical', NULL);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, 15, 15, 'irregular', NULL);
INSERT INTO public.planet VALUES (7, 'plan7t4', NULL, 10, 10, 'spiral', NULL);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, 12, 12, 'elliptical', NULL);
INSERT INTO public.planet VALUES (9, 'plan9', NULL, 15, 15, 'irregular', NULL);
INSERT INTO public.planet VALUES (10, 'plan74', NULL, 10, 10, 'spiral', NULL);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, 12, 12, 'elliptical', NULL);
INSERT INTO public.planet VALUES (12, 'plan12', NULL, 15, 15, 'irregular', NULL);
INSERT INTO public.planet VALUES (13, 'plan13', NULL, 10, 10, 'spiral', NULL);
INSERT INTO public.planet VALUES (14, 'planet14', NULL, 12, 12, 'elliptical', NULL);
INSERT INTO public.planet VALUES (15, 'plan15', NULL, 15, 15, 'irregular', NULL);
INSERT INTO public.planet VALUES (16, 'plan16', NULL, 10, 10, 'spiral', NULL);
INSERT INTO public.planet VALUES (17, 'planet17', NULL, 12, 12, 'elliptical', NULL);
INSERT INTO public.planet VALUES (18, 'plan18', NULL, 15, 15, 'irregular', NULL);
INSERT INTO public.planet VALUES (19, 'plan19', NULL, 10, 10, 'spiral', NULL);
INSERT INTO public.planet VALUES (20, 'planet20', NULL, 12, 12, 'elliptical', NULL);
INSERT INTO public.planet VALUES (21, 'plan21', NULL, 15, 15, 'irregular', NULL);
INSERT INTO public.planet VALUES (22, 'a', 1, 45, 48, 'hot', 88);
INSERT INTO public.planet VALUES (23, 'b', 2, 26, 55, 'cold', 90);
INSERT INTO public.planet VALUES (24, 'c', 3, 45, 88, 'good', 78);
INSERT INTO public.planet VALUES (26, 'e', 4, 45, 48, 'hot', 88);
INSERT INTO public.planet VALUES (27, 'f', 5, 26, 55, 'cold', 90);
INSERT INTO public.planet VALUES (28, 'g', 6, 45, 88, 'good', 78);
INSERT INTO public.planet VALUES (29, 'i', 7, 45, 48, 'hot', 88);
INSERT INTO public.planet VALUES (30, 'f1', 8, 26, 55, 'cold', 90);
INSERT INTO public.planet VALUES (31, 'hg', 9, 45, 88, 'good', 78);
INSERT INTO public.planet VALUES (35, 'il', 1, 45, 48, 'hot', 88);
INSERT INTO public.planet VALUES (36, 'f21', 8, 26, 55, 'cold', 90);
INSERT INTO public.planet VALUES (37, 'hg1', 9, 45, 88, 'good', 78);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, 10, 10, NULL, 'spiral');
INSERT INTO public.star VALUES (2, 'star', NULL, 12, 12, NULL, 'elliptical');
INSERT INTO public.star VALUES (3, 'star3', NULL, 15, 15, NULL, 'irregular');
INSERT INTO public.star VALUES (4, 'star4', NULL, 10, 10, NULL, 'spiral');
INSERT INTO public.star VALUES (5, 'star5', NULL, 12, 12, NULL, 'elliptical');
INSERT INTO public.star VALUES (6, 'star6', NULL, 15, 15, NULL, 'irregular');
INSERT INTO public.star VALUES (7, 'star7', NULL, 10, 10, NULL, 'spiral');
INSERT INTO public.star VALUES (8, 'star8', NULL, 12, 12, NULL, 'elliptical');
INSERT INTO public.star VALUES (9, 'star9', NULL, 15, 15, NULL, 'irregular');
INSERT INTO public.star VALUES (11, 'a', 1, 55, 139, 1, 'yellow');
INSERT INTO public.star VALUES (12, 'b', 2, 11, 156, 1, 'brown');
INSERT INTO public.star VALUES (13, 'c', 3, 15, 156, 22, 'red');
INSERT INTO public.star VALUES (14, 'd', 4, 45, 15, 111, 'Y');
INSERT INTO public.star VALUES (15, 'e', 5, 45, 15, 111, 'Y');
INSERT INTO public.star VALUES (16, 'f', 6, 45, 15, 111, 'Y');


--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_body_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 37, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 16, true);


--
-- Name: celestial_body celestial_body_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_color_key UNIQUE (color);


--
-- Name: celestial_body celestial_body_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_pkey PRIMARY KEY (celestial_body_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

