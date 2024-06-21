--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_life boolean,
    description text
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
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_life boolean,
    planet_id integer
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
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_life boolean,
    description text,
    star_id integer
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
-- Name: research_institution; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.research_institution (
    research_institution_id integer NOT NULL,
    name character varying(50) NOT NULL,
    location text,
    established_year integer
);


ALTER TABLE public.research_institution OWNER TO freecodecamp;

--
-- Name: research_institution_institution_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.research_institution_institution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.research_institution_institution_id_seq OWNER TO freecodecamp;

--
-- Name: research_institution_institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.research_institution_institution_id_seq OWNED BY public.research_institution.research_institution_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    galaxy_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: research_institution research_institution_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.research_institution ALTER COLUMN research_institution_id SET DEFAULT nextval('public.research_institution_institution_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 13700, false, 'Galaxia noastră natală.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 10000, false, 'Cea mai apropiată galaxie spirală de Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, 13000, false, 'A treia cea mai mare galaxie membră a Grupului Local.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23000000, 12500, false, 'Famous for its spiral arms.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 29000000, 12800, false, 'Noted for its bright nucleus and large central bulge.');
INSERT INTO public.galaxy VALUES (6, 'Orion', 14000000, 6000, false, 'Rich in bright young stars, nebulae, and dust.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'Moon', 0, 4500, false, 1);
INSERT INTO public.moon VALUES (5, 'Phobos', 0, 4600, false, 2);
INSERT INTO public.moon VALUES (6, 'Deimos', 0, 4600, false, 2);
INSERT INTO public.moon VALUES (7, 'Io', 628, 4500, false, 3);
INSERT INTO public.moon VALUES (8, 'Europa', 628, 4500, false, 3);
INSERT INTO public.moon VALUES (9, 'Ganymede', 628, 4500, false, 3);
INSERT INTO public.moon VALUES (10, 'Callisto', 628, 4500, false, 3);
INSERT INTO public.moon VALUES (11, 'Titan', 1200, 4600, false, 5);
INSERT INTO public.moon VALUES (12, 'Rhea', 1200, 4600, false, 5);
INSERT INTO public.moon VALUES (13, 'Iapetus', 1200, 4600, false, 5);
INSERT INTO public.moon VALUES (14, 'Phoebe', 1200, 4600, false, 5);
INSERT INTO public.moon VALUES (15, 'Miranda', 2600, 4400, false, 6);
INSERT INTO public.moon VALUES (16, 'Ariel', 2600, 4400, false, 6);
INSERT INTO public.moon VALUES (17, 'Umbriel', 2600, 4400, false, 6);
INSERT INTO public.moon VALUES (18, 'Titania', 2600, 4400, false, 6);
INSERT INTO public.moon VALUES (19, 'Oberon', 2600, 4400, false, 6);
INSERT INTO public.moon VALUES (20, 'Triton', 4301, 4400, false, 7);
INSERT INTO public.moon VALUES (21, 'Nereid', 4301, 4400, false, 7);
INSERT INTO public.moon VALUES (22, 'Charon', 4760, 4300, false, 8);
INSERT INTO public.moon VALUES (23, 'Dysnomia', 9600, 4100, false, 9);
INSERT INTO public.moon VALUES (24, 'Hiʻiaka', 5000, 4300, false, 10);
INSERT INTO public.moon VALUES (25, 'Namaka', 5000, 4300, false, 10);
INSERT INTO public.moon VALUES (26, 'S/2015 (136472) 1', 5000, 4300, false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, 4500, true, 'Singura planetă cunoscută care susține viața.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 4600, false, 'Cunoscută ca planeta roșie.', 1);
INSERT INTO public.planet VALUES (3, 'Venus', 0, 4600, false, 'Cea mai fierbinte planetă din sistemul solar.', 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 0, 4500, false, 'The smallest and closest to the Sun in the Solar System.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 4567, false, 'The largest planet in our solar system.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 10, 4200, false, 'Known for its extensive ring system.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 19, 4000, false, 'An ice giant with a distinct bluish color.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 30, 4100, false, 'The farthest known planet in our solar system.', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 39, 4400, false, 'A dwarf planet in the Kuiper belt.', 1);
INSERT INTO public.planet VALUES (10, 'Eris', 68, 4300, false, 'One of the largest known dwarf planets.', 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 43, 4300, false, 'Known for its elongated shape among dwarf planets.', 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 46, 4300, false, 'Another dwarf planet located in the Kuiper belt.', 1);
INSERT INTO public.planet VALUES (13, 'Ceres', 3, 4200, false, 'The largest object in the asteroid belt.', 1);


--
-- Data for Name: research_institution; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.research_institution VALUES (1, 'NASA', 'United States', 1958);
INSERT INTO public.research_institution VALUES (2, 'ESA', 'Europe', 1975);
INSERT INTO public.research_institution VALUES (3, 'Roscosmos', 'Russia', 1992);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4600, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4, 4850, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 9, 242, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 700, 8, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 4, 5500, 1);
INSERT INTO public.star VALUES (6, 'Vega', 25, 455, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: research_institution_institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.research_institution_institution_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: research_institution research_institution_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.research_institution
    ADD CONSTRAINT research_institution_name_unique_key UNIQUE (name);


--
-- Name: research_institution research_institution_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.research_institution
    ADD CONSTRAINT research_institution_pkey PRIMARY KEY (research_institution_id);


--
-- Name: star star_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique_key UNIQUE (name);


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

