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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (4, 2, 2018, 'Final', 1, 225, 226);
INSERT INTO public.games VALUES (2, 0, 2018, 'Third Place', 2, 227, 228);
INSERT INTO public.games VALUES (2, 1, 2018, 'Semi-Final', 3, 226, 228);
INSERT INTO public.games VALUES (1, 0, 2018, 'Semi-Final', 4, 225, 227);
INSERT INTO public.games VALUES (3, 2, 2018, 'Quarter-Final', 5, 226, 229);
INSERT INTO public.games VALUES (2, 0, 2018, 'Quarter-Final', 6, 228, 230);
INSERT INTO public.games VALUES (2, 1, 2018, 'Quarter-Final', 7, 227, 231);
INSERT INTO public.games VALUES (2, 0, 2018, 'Quarter-Final', 8, 225, 232);
INSERT INTO public.games VALUES (2, 1, 2018, 'Eighth-Final', 9, 228, 233);
INSERT INTO public.games VALUES (1, 0, 2018, 'Eighth-Final', 10, 230, 234);
INSERT INTO public.games VALUES (3, 2, 2018, 'Eighth-Final', 11, 227, 235);
INSERT INTO public.games VALUES (2, 0, 2018, 'Eighth-Final', 12, 231, 236);
INSERT INTO public.games VALUES (2, 1, 2018, 'Eighth-Final', 13, 226, 237);
INSERT INTO public.games VALUES (2, 1, 2018, 'Eighth-Final', 14, 229, 238);
INSERT INTO public.games VALUES (2, 1, 2018, 'Eighth-Final', 15, 232, 239);
INSERT INTO public.games VALUES (4, 3, 2018, 'Eighth-Final', 16, 225, 240);
INSERT INTO public.games VALUES (1, 0, 2014, 'Final', 17, 241, 240);
INSERT INTO public.games VALUES (3, 0, 2014, 'Third Place', 18, 242, 231);
INSERT INTO public.games VALUES (1, 0, 2014, 'Semi-Final', 19, 240, 242);
INSERT INTO public.games VALUES (7, 1, 2014, 'Semi-Final', 20, 241, 231);
INSERT INTO public.games VALUES (1, 0, 2014, 'Quarter-Final', 21, 242, 243);
INSERT INTO public.games VALUES (1, 0, 2014, 'Quarter-Final', 22, 240, 227);
INSERT INTO public.games VALUES (2, 1, 2014, 'Quarter-Final', 23, 231, 233);
INSERT INTO public.games VALUES (1, 0, 2014, 'Quarter-Final', 24, 241, 225);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 25, 231, 244);
INSERT INTO public.games VALUES (2, 0, 2014, 'Eighth-Final', 26, 233, 232);
INSERT INTO public.games VALUES (2, 0, 2014, 'Eighth-Final', 27, 225, 245);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 28, 241, 246);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 29, 242, 236);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 30, 243, 247);
INSERT INTO public.games VALUES (1, 0, 2014, 'Eighth-Final', 31, 240, 234);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 32, 227, 248);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (225, 'France');
INSERT INTO public.teams VALUES (226, 'Croatia');
INSERT INTO public.teams VALUES (227, 'Belgium');
INSERT INTO public.teams VALUES (228, 'England');
INSERT INTO public.teams VALUES (229, 'Russia');
INSERT INTO public.teams VALUES (230, 'Sweden');
INSERT INTO public.teams VALUES (231, 'Brazil');
INSERT INTO public.teams VALUES (232, 'Uruguay');
INSERT INTO public.teams VALUES (233, 'Colombia');
INSERT INTO public.teams VALUES (234, 'Switzerland');
INSERT INTO public.teams VALUES (235, 'Japan');
INSERT INTO public.teams VALUES (236, 'Mexico');
INSERT INTO public.teams VALUES (237, 'Denmark');
INSERT INTO public.teams VALUES (238, 'Spain');
INSERT INTO public.teams VALUES (239, 'Portugal');
INSERT INTO public.teams VALUES (240, 'Argentina');
INSERT INTO public.teams VALUES (241, 'Germany');
INSERT INTO public.teams VALUES (242, 'Netherlands');
INSERT INTO public.teams VALUES (243, 'Costa Rica');
INSERT INTO public.teams VALUES (244, 'Chile');
INSERT INTO public.teams VALUES (245, 'Nigeria');
INSERT INTO public.teams VALUES (246, 'Algeria');
INSERT INTO public.teams VALUES (247, 'Greece');
INSERT INTO public.teams VALUES (248, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 248, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

