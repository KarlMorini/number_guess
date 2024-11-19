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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guess_count integer
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (345, 139, 931);
INSERT INTO public.games VALUES (346, 140, 166);
INSERT INTO public.games VALUES (347, 139, 414);
INSERT INTO public.games VALUES (348, 139, 483);
INSERT INTO public.games VALUES (349, 139, 406);
INSERT INTO public.games VALUES (350, 141, 11);
INSERT INTO public.games VALUES (351, 141, 11);
INSERT INTO public.games VALUES (352, 142, 678);
INSERT INTO public.games VALUES (353, 142, 213);
INSERT INTO public.games VALUES (354, 143, 856);
INSERT INTO public.games VALUES (355, 143, 177);
INSERT INTO public.games VALUES (356, 142, 482);
INSERT INTO public.games VALUES (357, 142, 501);
INSERT INTO public.games VALUES (358, 142, 29);
INSERT INTO public.games VALUES (359, 144, 61);
INSERT INTO public.games VALUES (360, 144, 413);
INSERT INTO public.games VALUES (361, 145, 798);
INSERT INTO public.games VALUES (362, 145, 516);
INSERT INTO public.games VALUES (363, 144, 930);
INSERT INTO public.games VALUES (364, 144, 959);
INSERT INTO public.games VALUES (365, 144, 288);
INSERT INTO public.games VALUES (366, 146, 545);
INSERT INTO public.games VALUES (367, 146, 176);
INSERT INTO public.games VALUES (368, 147, 452);
INSERT INTO public.games VALUES (369, 147, 121);
INSERT INTO public.games VALUES (370, 146, 817);
INSERT INTO public.games VALUES (371, 146, 554);
INSERT INTO public.games VALUES (372, 146, 52);
INSERT INTO public.games VALUES (373, 148, 543);
INSERT INTO public.games VALUES (374, 148, 298);
INSERT INTO public.games VALUES (375, 149, 894);
INSERT INTO public.games VALUES (376, 149, 844);
INSERT INTO public.games VALUES (377, 148, 14);
INSERT INTO public.games VALUES (378, 148, 556);
INSERT INTO public.games VALUES (379, 148, 301);
INSERT INTO public.games VALUES (380, 150, 305);
INSERT INTO public.games VALUES (381, 150, 895);
INSERT INTO public.games VALUES (382, 151, 810);
INSERT INTO public.games VALUES (383, 151, 615);
INSERT INTO public.games VALUES (384, 150, 856);
INSERT INTO public.games VALUES (385, 150, 270);
INSERT INTO public.games VALUES (386, 150, 156);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (139, 'user_1732032129569');
INSERT INTO public.users VALUES (140, 'user_1732032129568');
INSERT INTO public.users VALUES (141, 'Karl');
INSERT INTO public.users VALUES (142, 'user_1732032493586');
INSERT INTO public.users VALUES (143, 'user_1732032493585');
INSERT INTO public.users VALUES (144, 'user_1732032516730');
INSERT INTO public.users VALUES (145, 'user_1732032516728');
INSERT INTO public.users VALUES (146, 'user_1732032592115');
INSERT INTO public.users VALUES (147, 'user_1732032592114');
INSERT INTO public.users VALUES (148, 'user_1732032595027');
INSERT INTO public.users VALUES (149, 'user_1732032595026');
INSERT INTO public.users VALUES (150, 'user_1732032597572');
INSERT INTO public.users VALUES (151, 'user_1732032597571');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 386, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 151, true);


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
-- Name: games user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

