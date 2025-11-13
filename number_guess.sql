--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    user_id integer NOT NULL,
    secret_number integer NOT NULL,
    number_of_guesses integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


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
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (1, 5, 985, 3, '2025-11-13 12:14:09.1942-05');
INSERT INTO public.guesses VALUES (2, 6, 706, 707, '2025-11-13 12:15:33.443611-05');
INSERT INTO public.guesses VALUES (3, 6, 562, 563, '2025-11-13 12:15:33.509783-05');
INSERT INTO public.guesses VALUES (4, 7, 49, 50, '2025-11-13 12:15:33.569813-05');
INSERT INTO public.guesses VALUES (5, 7, 130, 131, '2025-11-13 12:15:33.617882-05');
INSERT INTO public.guesses VALUES (6, 6, 22, 25, '2025-11-13 12:15:33.662918-05');
INSERT INTO public.guesses VALUES (7, 6, 811, 812, '2025-11-13 12:15:33.737818-05');
INSERT INTO public.guesses VALUES (8, 6, 115, 116, '2025-11-13 12:15:33.785028-05');
INSERT INTO public.guesses VALUES (9, 8, 666, 667, '2025-11-13 12:16:43.075956-05');
INSERT INTO public.guesses VALUES (10, 8, 869, 870, '2025-11-13 12:16:43.134713-05');
INSERT INTO public.guesses VALUES (11, 9, 447, 448, '2025-11-13 12:16:43.199926-05');
INSERT INTO public.guesses VALUES (12, 9, 778, 779, '2025-11-13 12:16:43.248939-05');
INSERT INTO public.guesses VALUES (13, 8, 131, 134, '2025-11-13 12:16:43.309752-05');
INSERT INTO public.guesses VALUES (14, 8, 864, 865, '2025-11-13 12:16:43.382203-05');
INSERT INTO public.guesses VALUES (15, 8, 168, 169, '2025-11-13 12:16:43.430431-05');
INSERT INTO public.guesses VALUES (16, 10, 656, 657, '2025-11-13 12:17:35.086836-05');
INSERT INTO public.guesses VALUES (17, 10, 183, 184, '2025-11-13 12:17:35.151263-05');
INSERT INTO public.guesses VALUES (18, 11, 636, 637, '2025-11-13 12:17:35.24229-05');
INSERT INTO public.guesses VALUES (19, 11, 420, 421, '2025-11-13 12:17:35.288585-05');
INSERT INTO public.guesses VALUES (20, 10, 505, 508, '2025-11-13 12:17:35.335452-05');
INSERT INTO public.guesses VALUES (21, 10, 452, 453, '2025-11-13 12:17:35.410124-05');
INSERT INTO public.guesses VALUES (22, 10, 226, 227, '2025-11-13 12:17:35.460591-05');
INSERT INTO public.guesses VALUES (23, 12, 400, 401, '2025-11-13 12:21:37.969095-05');
INSERT INTO public.guesses VALUES (24, 12, 615, 616, '2025-11-13 12:21:38.029609-05');
INSERT INTO public.guesses VALUES (25, 13, 254, 255, '2025-11-13 12:21:38.091238-05');
INSERT INTO public.guesses VALUES (26, 13, 952, 953, '2025-11-13 12:21:38.141356-05');
INSERT INTO public.guesses VALUES (27, 12, 318, 321, '2025-11-13 12:21:38.187873-05');
INSERT INTO public.guesses VALUES (28, 12, 422, 423, '2025-11-13 12:21:38.250482-05');
INSERT INTO public.guesses VALUES (29, 12, 634, 635, '2025-11-13 12:21:38.33255-05');
INSERT INTO public.guesses VALUES (30, 14, 372, 373, '2025-11-13 12:23:08.219743-05');
INSERT INTO public.guesses VALUES (31, 14, 957, 958, '2025-11-13 12:23:08.270466-05');
INSERT INTO public.guesses VALUES (32, 15, 812, 813, '2025-11-13 12:23:08.332829-05');
INSERT INTO public.guesses VALUES (33, 15, 888, 889, '2025-11-13 12:23:08.405073-05');
INSERT INTO public.guesses VALUES (34, 14, 651, 654, '2025-11-13 12:23:08.45466-05');
INSERT INTO public.guesses VALUES (35, 14, 721, 722, '2025-11-13 12:23:08.527938-05');
INSERT INTO public.guesses VALUES (36, 14, 739, 740, '2025-11-13 12:23:08.595402-05');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (5, 'test');
INSERT INTO public.users VALUES (6, 'user_1763054133334');
INSERT INTO public.users VALUES (7, 'user_1763054133333');
INSERT INTO public.users VALUES (8, 'user_1763054203003');
INSERT INTO public.users VALUES (9, 'user_1763054203002');
INSERT INTO public.users VALUES (10, 'user_1763054254994');
INSERT INTO public.users VALUES (11, 'user_1763054254993');
INSERT INTO public.users VALUES (12, 'user_1763054497873');
INSERT INTO public.users VALUES (13, 'user_1763054497872');
INSERT INTO public.users VALUES (14, 'user_1763054588131');
INSERT INTO public.users VALUES (15, 'user_1763054588130');


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: guesses fk_user; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

