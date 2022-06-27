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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    score integer,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: username; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.username (
    user_id integer NOT NULL,
    name character varying(60)
);


ALTER TABLE public.username OWNER TO freecodecamp;

--
-- Name: username_useer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_useer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_useer_id_seq OWNER TO freecodecamp;

--
-- Name: username_useer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_useer_id_seq OWNED BY public.username.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: username user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username ALTER COLUMN user_id SET DEFAULT nextval('public.username_useer_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 5, 1);
INSERT INTO public.games VALUES (2, 3, 1);
INSERT INTO public.games VALUES (3, 5, 2);
INSERT INTO public.games VALUES (4, 3, 2);
INSERT INTO public.games VALUES (5, 4, 1);
INSERT INTO public.games VALUES (6, 7, 1);
INSERT INTO public.games VALUES (7, 5, 1);
INSERT INTO public.games VALUES (8, 2, 3);
INSERT INTO public.games VALUES (9, 4, 3);
INSERT INTO public.games VALUES (10, 3, 4);
INSERT INTO public.games VALUES (11, 5, 4);
INSERT INTO public.games VALUES (12, 5, 3);
INSERT INTO public.games VALUES (13, 4, 3);
INSERT INTO public.games VALUES (14, 4, 3);
INSERT INTO public.games VALUES (15, 5, 5);
INSERT INTO public.games VALUES (16, 6, 5);
INSERT INTO public.games VALUES (17, 2, 6);
INSERT INTO public.games VALUES (18, 6, 6);
INSERT INTO public.games VALUES (19, 4, 5);
INSERT INTO public.games VALUES (20, 6, 5);
INSERT INTO public.games VALUES (21, 4, 5);
INSERT INTO public.games VALUES (22, 5, 7);
INSERT INTO public.games VALUES (23, 5, 7);
INSERT INTO public.games VALUES (24, 6, 8);
INSERT INTO public.games VALUES (25, 6, 8);
INSERT INTO public.games VALUES (26, 4, 7);
INSERT INTO public.games VALUES (27, 3, 7);
INSERT INTO public.games VALUES (28, 6, 7);
INSERT INTO public.games VALUES (29, 2, 9);
INSERT INTO public.games VALUES (30, 5, 9);
INSERT INTO public.games VALUES (31, 3, 10);
INSERT INTO public.games VALUES (32, 6, 10);
INSERT INTO public.games VALUES (33, 4, 9);
INSERT INTO public.games VALUES (34, 7, 9);
INSERT INTO public.games VALUES (35, 4, 9);
INSERT INTO public.games VALUES (36, 2, 11);
INSERT INTO public.games VALUES (37, 2, 11);
INSERT INTO public.games VALUES (38, 5, 12);
INSERT INTO public.games VALUES (39, 6, 12);
INSERT INTO public.games VALUES (40, 8, 11);
INSERT INTO public.games VALUES (41, 4, 11);
INSERT INTO public.games VALUES (42, 6, 11);
INSERT INTO public.games VALUES (43, 4, 13);
INSERT INTO public.games VALUES (44, 2, 13);
INSERT INTO public.games VALUES (45, 2, 14);
INSERT INTO public.games VALUES (46, 5, 14);
INSERT INTO public.games VALUES (47, 4, 13);
INSERT INTO public.games VALUES (48, 7, 13);
INSERT INTO public.games VALUES (49, 4, 13);
INSERT INTO public.games VALUES (50, 5, 15);
INSERT INTO public.games VALUES (51, 2, 15);
INSERT INTO public.games VALUES (52, 3, 16);
INSERT INTO public.games VALUES (53, 4, 16);
INSERT INTO public.games VALUES (54, 6, 15);
INSERT INTO public.games VALUES (55, 4, 15);
INSERT INTO public.games VALUES (56, 2, 15);
INSERT INTO public.games VALUES (57, 5, 17);
INSERT INTO public.games VALUES (58, 4, 17);
INSERT INTO public.games VALUES (59, 5, 18);
INSERT INTO public.games VALUES (60, 4, 18);
INSERT INTO public.games VALUES (61, 6, 17);
INSERT INTO public.games VALUES (62, 3, 17);
INSERT INTO public.games VALUES (63, 5, 17);
INSERT INTO public.games VALUES (64, 4, 19);
INSERT INTO public.games VALUES (65, 2, 19);
INSERT INTO public.games VALUES (66, 5, 20);
INSERT INTO public.games VALUES (67, 6, 20);
INSERT INTO public.games VALUES (68, 5, 19);
INSERT INTO public.games VALUES (69, 5, 19);
INSERT INTO public.games VALUES (70, 2, 19);
INSERT INTO public.games VALUES (71, 6, 21);
INSERT INTO public.games VALUES (72, 5, 21);
INSERT INTO public.games VALUES (73, 3, 22);
INSERT INTO public.games VALUES (74, 4, 22);
INSERT INTO public.games VALUES (75, 4, 21);
INSERT INTO public.games VALUES (76, 3, 21);
INSERT INTO public.games VALUES (77, 5, 21);
INSERT INTO public.games VALUES (78, 2, 23);
INSERT INTO public.games VALUES (79, 5, 23);
INSERT INTO public.games VALUES (80, 4, 24);
INSERT INTO public.games VALUES (81, 5, 24);
INSERT INTO public.games VALUES (82, 4, 23);
INSERT INTO public.games VALUES (83, 5, 23);
INSERT INTO public.games VALUES (84, 2, 23);
INSERT INTO public.games VALUES (85, 6, 25);
INSERT INTO public.games VALUES (86, 6, 25);
INSERT INTO public.games VALUES (87, 5, 26);
INSERT INTO public.games VALUES (88, 2, 26);
INSERT INTO public.games VALUES (89, 6, 25);
INSERT INTO public.games VALUES (90, 3, 25);
INSERT INTO public.games VALUES (91, 5, 25);


--
-- Data for Name: username; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.username VALUES (1, 'user_1656173767472');
INSERT INTO public.username VALUES (2, 'user_1656173767471');
INSERT INTO public.username VALUES (3, 'user_1656173772814');
INSERT INTO public.username VALUES (4, 'user_1656173772813');
INSERT INTO public.username VALUES (5, 'user_1656173786285');
INSERT INTO public.username VALUES (6, 'user_1656173786284');
INSERT INTO public.username VALUES (7, 'user_1656173791796');
INSERT INTO public.username VALUES (8, 'user_1656173791795');
INSERT INTO public.username VALUES (9, 'user_1656173794921');
INSERT INTO public.username VALUES (10, 'user_1656173794920');
INSERT INTO public.username VALUES (11, 'user_1656173835543');
INSERT INTO public.username VALUES (12, 'user_1656173835542');
INSERT INTO public.username VALUES (13, 'user_1656173844264');
INSERT INTO public.username VALUES (14, 'user_1656173844263');
INSERT INTO public.username VALUES (15, 'user_1656173920002');
INSERT INTO public.username VALUES (16, 'user_1656173920001');
INSERT INTO public.username VALUES (17, 'user_1656173930468');
INSERT INTO public.username VALUES (18, 'user_1656173930467');
INSERT INTO public.username VALUES (19, 'user_1656173939076');
INSERT INTO public.username VALUES (20, 'user_1656173939075');
INSERT INTO public.username VALUES (21, 'user_1656173950819');
INSERT INTO public.username VALUES (22, 'user_1656173950818');
INSERT INTO public.username VALUES (23, 'user_1656173957875');
INSERT INTO public.username VALUES (24, 'user_1656173957874');
INSERT INTO public.username VALUES (25, 'user_1656174338619');
INSERT INTO public.username VALUES (26, 'user_1656174338618');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 91, true);


--
-- Name: username_useer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_useer_id_seq', 26, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: username username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.username(user_id);


--
-- PostgreSQL database dump complete
--

