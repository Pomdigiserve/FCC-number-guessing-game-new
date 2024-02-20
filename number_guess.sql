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
    user_id integer NOT NULL,
    game_id integer NOT NULL,
    number_guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (6, 1, 568);
INSERT INTO public.games VALUES (6, 2, 148);
INSERT INTO public.games VALUES (7, 3, 8);
INSERT INTO public.games VALUES (7, 4, 434);
INSERT INTO public.games VALUES (6, 5, 790);
INSERT INTO public.games VALUES (6, 6, 336);
INSERT INTO public.games VALUES (6, 7, 147);
INSERT INTO public.games VALUES (3, 8, 19);
INSERT INTO public.games VALUES (8, 9, 553);
INSERT INTO public.games VALUES (8, 10, 563);
INSERT INTO public.games VALUES (9, 11, 745);
INSERT INTO public.games VALUES (9, 12, 512);
INSERT INTO public.games VALUES (8, 13, 77);
INSERT INTO public.games VALUES (8, 14, 214);
INSERT INTO public.games VALUES (8, 15, 485);
INSERT INTO public.games VALUES (10, 16, 832);
INSERT INTO public.games VALUES (10, 17, 198);
INSERT INTO public.games VALUES (11, 18, 571);
INSERT INTO public.games VALUES (11, 19, 832);
INSERT INTO public.games VALUES (10, 20, 673);
INSERT INTO public.games VALUES (10, 21, 21);
INSERT INTO public.games VALUES (10, 22, 39);
INSERT INTO public.games VALUES (12, 23, 194);
INSERT INTO public.games VALUES (12, 24, 121);
INSERT INTO public.games VALUES (13, 25, 100);
INSERT INTO public.games VALUES (13, 26, 644);
INSERT INTO public.games VALUES (12, 27, 74);
INSERT INTO public.games VALUES (12, 28, 350);
INSERT INTO public.games VALUES (12, 29, 389);
INSERT INTO public.games VALUES (14, 30, 619);
INSERT INTO public.games VALUES (14, 31, 353);
INSERT INTO public.games VALUES (15, 32, 119);
INSERT INTO public.games VALUES (15, 33, 296);
INSERT INTO public.games VALUES (14, 34, 341);
INSERT INTO public.games VALUES (14, 35, 397);
INSERT INTO public.games VALUES (14, 36, 76);
INSERT INTO public.games VALUES (3, 37, 25);
INSERT INTO public.games VALUES (16, 38, 917);
INSERT INTO public.games VALUES (16, 39, 594);
INSERT INTO public.games VALUES (17, 40, 56);
INSERT INTO public.games VALUES (17, 41, 509);
INSERT INTO public.games VALUES (16, 42, 5);
INSERT INTO public.games VALUES (16, 43, 629);
INSERT INTO public.games VALUES (16, 44, 914);
INSERT INTO public.games VALUES (18, 45, 90);
INSERT INTO public.games VALUES (18, 46, 738);
INSERT INTO public.games VALUES (19, 47, 883);
INSERT INTO public.games VALUES (19, 48, 826);
INSERT INTO public.games VALUES (18, 49, 690);
INSERT INTO public.games VALUES (18, 50, 707);
INSERT INTO public.games VALUES (18, 51, 455);
INSERT INTO public.games VALUES (20, 52, 905);
INSERT INTO public.games VALUES (20, 53, 221);
INSERT INTO public.games VALUES (21, 54, 866);
INSERT INTO public.games VALUES (21, 55, 854);
INSERT INTO public.games VALUES (20, 56, 865);
INSERT INTO public.games VALUES (20, 57, 954);
INSERT INTO public.games VALUES (20, 58, 724);
INSERT INTO public.games VALUES (22, 59, 113);
INSERT INTO public.games VALUES (22, 60, 613);
INSERT INTO public.games VALUES (23, 61, 433);
INSERT INTO public.games VALUES (23, 62, 651);
INSERT INTO public.games VALUES (22, 63, 491);
INSERT INTO public.games VALUES (22, 64, 321);
INSERT INTO public.games VALUES (22, 65, 76);
INSERT INTO public.games VALUES (24, 66, 502);
INSERT INTO public.games VALUES (24, 67, 847);
INSERT INTO public.games VALUES (25, 68, 261);
INSERT INTO public.games VALUES (25, 69, 812);
INSERT INTO public.games VALUES (24, 70, 171);
INSERT INTO public.games VALUES (24, 71, 900);
INSERT INTO public.games VALUES (24, 72, 90);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1708402096255');
INSERT INTO public.users VALUES (2, 'user_1708402096254');
INSERT INTO public.users VALUES (3, 'pom');
INSERT INTO public.users VALUES (4, 'user_1708402158892');
INSERT INTO public.users VALUES (5, 'user_1708402158891');
INSERT INTO public.users VALUES (6, 'user_1708402400518');
INSERT INTO public.users VALUES (7, 'user_1708402400517');
INSERT INTO public.users VALUES (8, 'user_1708402467489');
INSERT INTO public.users VALUES (9, 'user_1708402467488');
INSERT INTO public.users VALUES (10, 'user_1708402550924');
INSERT INTO public.users VALUES (11, 'user_1708402550923');
INSERT INTO public.users VALUES (12, 'user_1708402594977');
INSERT INTO public.users VALUES (13, 'user_1708402594976');
INSERT INTO public.users VALUES (14, 'user_1708402815668');
INSERT INTO public.users VALUES (15, 'user_1708402815667');
INSERT INTO public.users VALUES (16, 'user_1708402950963');
INSERT INTO public.users VALUES (17, 'user_1708402950962');
INSERT INTO public.users VALUES (18, 'user_1708403133576');
INSERT INTO public.users VALUES (19, 'user_1708403133575');
INSERT INTO public.users VALUES (20, 'user_1708403283279');
INSERT INTO public.users VALUES (21, 'user_1708403283278');
INSERT INTO public.users VALUES (22, 'user_1708403298856');
INSERT INTO public.users VALUES (23, 'user_1708403298855');
INSERT INTO public.users VALUES (24, 'user_1708403332158');
INSERT INTO public.users VALUES (25, 'user_1708403332157');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 72, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

