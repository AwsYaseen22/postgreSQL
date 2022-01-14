--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
    name character varying(40) NOT NULL,
    description text,
    galaxy_types_id integer,
    constellation character varying(40)
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(40) NOT NULL,
    more1 character varying(20),
    more2 character varying(20),
    more3 character varying(20)
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    description text,
    more text
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
    name character varying(40) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth integer,
    age_in_millions_of_years numeric(4,1),
    num_of_moons integer,
    descriptions text,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(40) NOT NULL,
    more1 character varying(20),
    more2 character varying(20),
    more3 character varying(20)
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    description text,
    f integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy containing the Sun and its Solar System, and therefore Earth', 2, 'Sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'Visible only from the southern hemisphere. It is also the brightest patch of nebulosity in the sky', 3, 'Dorado/Mensa');
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 'Visible only from the southern hemisphere', 3, 'Tucana');
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'Once called the Great Andromeda Nebula, it is situated in the Andromeda constellation', 2, 'Andromeda');
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'Being a diffuse object, its visibility is strongly affected by even small amounts of light pollution, ranging from easily visible in direct vision in truly dark skies to a difficult averted vision object in rural/suburban skies', 2, 'Triangulum');
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Centaurus A has been spotted with the naked eye by Stephen James O Meara', 1, 'Centaurus');
INSERT INTO public.galaxy VALUES (7, 'Bodes Galaxy', 'Highly experienced amateur astronomers may be able to see Messier 81 under exceptional observing conditions', 2, 'Ursa Major');
INSERT INTO public.galaxy VALUES (8, 'Sculptor Galaxy', 'NGC 253 has been observed with the naked eye by Timo Karhula', 2, 'Sculptor');


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'ellipticals', NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES (2, 'spirals', NULL, NULL, NULL);
INSERT INTO public.galaxy_types VALUES (3, 'irregulars', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'the moon', 'more');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'Phobos', 'more');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'Deimos', 'more');
INSERT INTO public.moon VALUES (4, 'Io', 7, 'Io', 'more');
INSERT INTO public.moon VALUES (5, 'Europa', 7, 'Europa', 'more');
INSERT INTO public.moon VALUES (6, 'Ganymede', 7, 'Ganymede', 'more');
INSERT INTO public.moon VALUES (7, 'Callisto', 7, 'Callisto', 'more');
INSERT INTO public.moon VALUES (8, 'Amalthea', 7, 'Amalthea', 'more');
INSERT INTO public.moon VALUES (9, 'Himalia', 7, 'Himalia', 'more');
INSERT INTO public.moon VALUES (10, 'Elara', 7, 'Elara', 'more');
INSERT INTO public.moon VALUES (11, 'Pasiphae', 7, 'Pasiphae', 'more');
INSERT INTO public.moon VALUES (12, 'Sinope', 7, 'Sinope', 'more');
INSERT INTO public.moon VALUES (13, 'Lysithea', 7, 'Lysithea', 'more');
INSERT INTO public.moon VALUES (14, 'Carme', 7, 'Carme', 'more');
INSERT INTO public.moon VALUES (15, 'Ananke', 7, 'Ananke', 'more');
INSERT INTO public.moon VALUES (17, 'Leda', 7, 'Leda', 'more');
INSERT INTO public.moon VALUES (18, 'Thebe', 7, 'Thebe', 'more');
INSERT INTO public.moon VALUES (19, 'Adrastea', 7, 'Adrastea', 'more');
INSERT INTO public.moon VALUES (20, 'Metis', 7, 'Metis', 'more');
INSERT INTO public.moon VALUES (21, 'Callirrhoe', 7, 'Callirrhoe', 'more');
INSERT INTO public.moon VALUES (22, 'Themisto', 7, 'Themisto', 'more');
INSERT INTO public.moon VALUES (23, 'Megaclite', 7, 'Megaclite', 'more');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, true, 0, 4.0, 1, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life', 1);
INSERT INTO public.planet VALUES (2, 'Mercury', true, false, 123, 4.0, 0, 'Mercury is the smallest planet in the Solar System and the closest to the Sun', 1);
INSERT INTO public.planet VALUES (3, 'Venus', true, false, 40, 4.0, 0, 'Venus is the second planet from the Sun', 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, false, 371, 4.0, 2, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System', 1);
INSERT INTO public.planet VALUES (5, 'Vesta', true, false, 454, 4.0, 0, 'one of the largest objects in the asteroid belt,', 1);
INSERT INTO public.planet VALUES (6, 'Pallas', true, false, 454, 4.0, 0, 'the second asteroid to have been discovered', 1);
INSERT INTO public.planet VALUES (7, 'Jupiter', true, false, 454, 4.0, 79, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System', 1);
INSERT INTO public.planet VALUES (8, 'Saturn', true, false, 454, 4.0, NULL, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System,', 1);
INSERT INTO public.planet VALUES (9, 'Uranus', true, false, 454, 4.0, 27, 'Uranus is the seventh planet from the Sun', 1);
INSERT INTO public.planet VALUES (10, 'Neptune', true, false, 454, 4.0, 27, 'Neptune is the eighth and farthest-known Solar planet from the Sun.', 1);
INSERT INTO public.planet VALUES (11, 'Callisto', true, false, 454, 4.0, 27, ' is the second-largest moon of Jupiter, after Ganymede. ', 1);
INSERT INTO public.planet VALUES (12, 'Europa', true, false, 454, 4.0, 27, 'the smallest of the four Galilean moons orbiting Jupiter,', 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial planet', NULL, NULL, NULL);
INSERT INTO public.planet_types VALUES (2, 'Iron planet', NULL, NULL, NULL);
INSERT INTO public.planet_types VALUES (3, 'Ice planet', NULL, NULL, NULL);
INSERT INTO public.planet_types VALUES (4, 'Carbon planet', NULL, NULL, NULL);
INSERT INTO public.planet_types VALUES (5, 'Desert planet', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Al Baldah', 1, 'Al Baldah, Nir al Beldat, Lucida Oppidi', 41);
INSERT INTO public.star VALUES (3, 'Nunki', 1, 'Nunki, Thani al Sadira', 34);
INSERT INTO public.star VALUES (4, 'Ascella', 1, 'Ascella, Thalith al Sadira', 38);
INSERT INTO public.star VALUES (5, 'Kaus Media ', 1, 'Kaus Media Kaus Medius, Kaus Meridionalis, Thani al Warida', 19);
INSERT INTO public.star VALUES (6, 'Alpha Tucanae', 3, ' binary star system in the southern circumpolar constellation of Tucana', NULL);
INSERT INTO public.star VALUES (7, 'Alpheratz', 4, 'Alpha Andromedae, officially named Alpheratz, is 97 light-years from the Sun and is the brightest star in the constellation of Andromeda when Beta Andromedae undergoes its periodical dimming. Immediately northeast of the constellation of Pegasus, it is the upper left star of the Great Square of Pegasus', 21);
INSERT INTO public.star VALUES (8, 'Alpha Sculptoris', 8, 'the Bayer designation for a blue-white star in the southern constellation of Sculptor', NULL);
INSERT INTO public.star VALUES (1, 'SUN', 1, 'The sun in milky way galaxy', 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

