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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer,
    size integer NOT NULL,
    age numeric
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
-- Name: milky_way; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.milky_way (
    milky_way_id integer NOT NULL,
    "Lots of moons?" boolean NOT NULL,
    name character varying(30) NOT NULL,
    notes text
);


ALTER TABLE public.milky_way OWNER TO freecodecamp;

--
-- Name: milky_way_from_the_sun_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.milky_way_from_the_sun_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.milky_way_from_the_sun_seq OWNER TO freecodecamp;

--
-- Name: milky_way_from_the_sun_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.milky_way_from_the_sun_seq OWNED BY public.milky_way.milky_way_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    planet_id integer,
    milkyway boolean
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
    name character varying(30),
    distance integer NOT NULL,
    size integer NOT NULL,
    star_id integer,
    milky_way boolean
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
    name character varying(30),
    distance integer NOT NULL,
    galaxy_id integer,
    milky_way boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: milky_way milky_way_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milky_way ALTER COLUMN milky_way_id SET DEFAULT nextval('public.milky_way_from_the_sun_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2480000, 152000, 10000000000);
INSERT INTO public.galaxy VALUES (3, 'Eye of Sauron', 619700000, 9980000, 13000000000);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 0, 1000, 9000000000000000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 99967, 2455345, 121212124);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 753684, 58574, 488390);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool', 837637, 3355, 3212222);


--
-- Data for Name: milky_way; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.milky_way VALUES (1, false, 'Mercury', NULL);
INSERT INTO public.milky_way VALUES (2, false, 'Venus', NULL);
INSERT INTO public.milky_way VALUES (3, false, 'Earth', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'z', 1, 12, NULL);
INSERT INTO public.moon VALUES (2, 'y', 1, 11, NULL);
INSERT INTO public.moon VALUES (3, 'x', 2, 10, NULL);
INSERT INTO public.moon VALUES (4, 'w', 5, 9, NULL);
INSERT INTO public.moon VALUES (5, 'v', 3, 8, NULL);
INSERT INTO public.moon VALUES (6, 'u', 2, 7, NULL);
INSERT INTO public.moon VALUES (7, 't', 1, 8, NULL);
INSERT INTO public.moon VALUES (8, 's', 3, 2, NULL);
INSERT INTO public.moon VALUES (9, 'r', 3, 2, NULL);
INSERT INTO public.moon VALUES (10, 'q', 2, 6, NULL);
INSERT INTO public.moon VALUES (11, 'p', 2, 3, NULL);
INSERT INTO public.moon VALUES (12, 'o', 2, 6, NULL);
INSERT INTO public.moon VALUES (13, 'n', 3, 7, NULL);
INSERT INTO public.moon VALUES (14, 'm', 1, 3, NULL);
INSERT INTO public.moon VALUES (15, 'l', 2, 4, NULL);
INSERT INTO public.moon VALUES (16, 'k', 2, 12, NULL);
INSERT INTO public.moon VALUES (17, 'j', 2, 9, NULL);
INSERT INTO public.moon VALUES (18, 'i', 3, 7, NULL);
INSERT INTO public.moon VALUES (19, 'h', 1, 2, NULL);
INSERT INTO public.moon VALUES (20, 'g', 2, 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 1, 2, 2, NULL);
INSERT INTO public.planet VALUES (2, 'b', 1, 2, 3, NULL);
INSERT INTO public.planet VALUES (3, 'c', 3, 4, 2, NULL);
INSERT INTO public.planet VALUES (4, 'd', 3, 3, 3, NULL);
INSERT INTO public.planet VALUES (5, 'e', 1, 2, 3, NULL);
INSERT INTO public.planet VALUES (6, 'f', 3, 2, 1, NULL);
INSERT INTO public.planet VALUES (7, 'g', 1, 1, 1, NULL);
INSERT INTO public.planet VALUES (8, 'h', 1, 1, 1, NULL);
INSERT INTO public.planet VALUES (9, 'i', 1, 1, 1, NULL);
INSERT INTO public.planet VALUES (10, 'j', 2, 2, 2, NULL);
INSERT INTO public.planet VALUES (11, 'k', 2, 2, 2, NULL);
INSERT INTO public.planet VALUES (12, 'l', 2, 2, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 3343, 2, true);
INSERT INTO public.star VALUES (2, 'star2', 33546, 3, false);
INSERT INTO public.star VALUES (3, 'star3', 973745, 4, false);
INSERT INTO public.star VALUES (4, 'star4', 1112, 5, false);
INSERT INTO public.star VALUES (5, 'star5', 343443, 6, false);
INSERT INTO public.star VALUES (6, 'star6', 2388, 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: milky_way_from_the_sun_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.milky_way_from_the_sun_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: milky_way milky_way_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milky_way
    ADD CONSTRAINT milky_way_name_key UNIQUE (name);


--
-- Name: milky_way milky_way_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milky_way
    ADD CONSTRAINT milky_way_pkey PRIMARY KEY (milky_way_id);


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

