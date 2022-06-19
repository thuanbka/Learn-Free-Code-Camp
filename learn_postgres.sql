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
    name character varying(60) NOT NULL,
    age numeric,
    description text,
    has_alive boolean
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
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    age integer,
    distance integer,
    description text
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
-- Name: persons; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.persons (
    persons_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.persons OWNER TO freecodecamp;

--
-- Name: persons_persons_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.persons_persons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persons_persons_id_seq OWNER TO freecodecamp;

--
-- Name: persons_persons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.persons_persons_id_seq OWNED BY public.persons.persons_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer NOT NULL,
    alive boolean,
    description text
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
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    nature character varying(60)
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
-- Name: persons persons_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons ALTER COLUMN persons_id SET DEFAULT nextval('public.persons_persons_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 'The appearence from Earth of the galaxy-a band of light', true);
INSERT INTO public.galaxy VALUES (2, 'Mice', 100, NULL, false);
INSERT INTO public.galaxy VALUES (3, 'Malin 1', 1000, NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Eye of Sauron', 1000, NULL, false);
INSERT INTO public.galaxy VALUES (5, 'Needle', 100, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Tadpole', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 100, 1000, 'Moon of Earth');
INSERT INTO public.moon VALUES (2, 'XT-1234', 1, 10, 1000, 'Moon made by Earth person');
INSERT INTO public.moon VALUES (3, 'XT1234', 1, 10, 1000, 'Moon made by Earth person');
INSERT INTO public.moon VALUES (4, 'XT-234', 1, 10, 1000, 'Moon made by Earth person');
INSERT INTO public.moon VALUES (5, 'X1', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'X2-67', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'YX-2', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Stone-76', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'X-18', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'X2-7', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'YX-1', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Stone-6', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'X-8', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'X-27', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'YX-10', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Stone-5', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Phobos', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Io', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Eropa', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Elana', 1, NULL, NULL, NULL);


--
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.persons VALUES (1, 'The Earth person', 1);
INSERT INTO public.persons VALUES (2, 'Wakanda', 13);
INSERT INTO public.persons VALUES (3, 'Woods', 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'This is green planet');
INSERT INTO public.planet VALUES (2, 'Mars', 1, true, 'Finding...');
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, false, 'Test');
INSERT INTO public.planet VALUES (4, 'Venus', 1, false, 'Test');
INSERT INTO public.planet VALUES (5, 'Saturn', 1, false, 'Test');
INSERT INTO public.planet VALUES (6, 'Neptune', 1, false, 'Test');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 'Test');
INSERT INTO public.planet VALUES (8, 'Gliese', 3, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Wolf', 4, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Tau Ceti', 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Epsilon Indi', 4, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'YZ ceti', 3, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Wakanda', 2, true, NULL);
INSERT INTO public.planet VALUES (14, 'Wood', 2, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Eridanus', 2, 'Eridani A', NULL);
INSERT INTO public.star VALUES (3, 'Carina', 1, 'HD 63765', NULL);
INSERT INTO public.star VALUES (4, 'Aquila', 3, 'TEST', NULL);
INSERT INTO public.star VALUES (5, 'Taurus', 4, 'TEST', NULL);
INSERT INTO public.star VALUES (6, 'Gemini', 6, 'Geminorum Aa', NULL);
INSERT INTO public.star VALUES (7, 'Sun', 1, 'solar system', NULL);
INSERT INTO public.star VALUES (1, 'The Sun', 1, 'XO-5', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: persons_persons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.persons_persons_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: persons persons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_name_key UNIQUE (name);


--
-- Name: persons persons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (persons_id);


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
-- Name: persons persons_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

