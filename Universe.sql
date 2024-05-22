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
-- Name: fleet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fleet (
    fleet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    population_in_millions numeric(6,2),
    description text,
    number_of_ships integer
);


ALTER TABLE public.fleet OWNER TO freecodecamp;

--
-- Name: fleet_fleet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fleet_fleet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fleet_fleet_id_seq OWNER TO freecodecamp;

--
-- Name: fleet_fleet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fleet_fleet_id_seq OWNED BY public.fleet.fleet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    shape character varying(20),
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
    name character varying(40) NOT NULL,
    planet_id integer,
    is_habited boolean,
    notable_qualities text
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
    star_id integer,
    is_habited boolean,
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
    name character varying(40) NOT NULL,
    galaxy_id integer,
    is_habited boolean,
    color character varying(10)
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
-- Name: fleet fleet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fleet ALTER COLUMN fleet_id SET DEFAULT nextval('public.fleet_fleet_id_seq'::regclass);


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
-- Data for Name: fleet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fleet VALUES (3, 'Hands of God', NULL, 'We know not who they are, how many there are, what they are after, or even what they have done. All we know is they travel between the Land of the Lost and [REDACTED]. No one has been able to make contact with them. There are some who draw parallels between them and the machines...', NULL);
INSERT INTO public.fleet VALUES (1, 'Rainth', 1582.84, 'The most populated fleet of Kharzan, Rainth is the spearhead of theri assult. When not in battle, it is typically stationed by BJL-011.', 1);
INSERT INTO public.fleet VALUES (2, 'No Mans Sky', 720.52, 'Permanently stationed around Cam Vue, this fleet acts as the foundation for this outlaw society. It is not a big ship, but rather a conjunction of hundereds of thousands of ships. Many of these have been connected together, but most stay disconnected for sake of mobility.', 235000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Brytia', 1484396443, 'Lentitular', 'One of the oldest habited galaxies, Brytia is a post-industrial galaxy still recovering from the effects of the last war.');
INSERT INTO public.galaxy VALUES (2, 'Kharzan', 875035, 'Irregular', 'Kharzan is a relatively new galaxy, and it is making agressive pushes to expand. Currently at war with Quasan.');
INSERT INTO public.galaxy VALUES (3, 'Quasan', 35783018, 'Quasar', 'Quasan is an impovished galaxy, facing harm from both Kharzan and its own quasar. Though initially one of the wealthiest galaxies, recent natural events have thrown it into chaos.');
INSERT INTO public.galaxy VALUES (4, 'GeoPortableTech', 356724, 'Elliptical', 'The newest galaxy of notable status, GeoPortableTech (named after its founding company) was founded entirely by machines. Their current goals are unknown.');
INSERT INTO public.galaxy VALUES (5, 'Nurmos', 1240575100, 'Spiral', 'Nurmos, along with Lentiular, is another one of the ancient galaxies. Although there is no centralized government, they have thrived the past few millenium. Many of its constituents are supporting Quasan.');
INSERT INTO public.galaxy VALUES (6, 'Lishat', 2084372850, 'Peculiar', 'The first to rise and the first to fall. No one knows what happens here, as there is a massive debris deadzone which denies almost all entry.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Scar of Heaven', 1, false, NULL);
INSERT INTO public.moon VALUES (2, 'Tears of Sky', 1, false, 'Less so a moon and more so an artifact extending from the Scar of Heaven, Tears of Sky layout the aerail devistation from the last war.');
INSERT INTO public.moon VALUES (3, 'M.C.D.', 2, true, 'Massive Communication Device.');
INSERT INTO public.moon VALUES (4, 'BJL-006', 3, true, NULL);
INSERT INTO public.moon VALUES (5, 'BJL-009', 3, false, NULL);
INSERT INTO public.moon VALUES (6, 'BJL-011', 4, true, 'Bored moon dedicated to containing and repairing warships.');
INSERT INTO public.moon VALUES (7, 'G.R.A.T.S.1', 5, false, 'Gamma Ray Absorbtion and Transformation Shield. Worked to both shield and supply power. Failed after an attack compromized its functionality.');
INSERT INTO public.moon VALUES (8, 'G.R.A.T.S.2', 6, true, NULL);
INSERT INTO public.moon VALUES (12, 'G.R.A.T.S.3', 5, true, 'Though G.R.A.T.S.2 is the same as V1, this model was implamented after the attack on V1.');
INSERT INTO public.moon VALUES (13, 'Full Atmosphere Satellite 1.0', 7, true, 'These satellites are the only habitable location. They were designed before the machines took over, and for some unknown reason, this is the only architecture they will not change');
INSERT INTO public.moon VALUES (14, 'Full Atmosphere Satellite 2.0', 8, true, NULL);
INSERT INTO public.moon VALUES (15, 'TDO-105', 8, false, NULL);
INSERT INTO public.moon VALUES (16, 'GSD-592', 9, true, 'This moon was transported here from across its solar system.');
INSERT INTO public.moon VALUES (17, 'GSD-583', 10, false, NULL);
INSERT INTO public.moon VALUES (18, 'GSD-580', 10, false, NULL);
INSERT INTO public.moon VALUES (19, 'Icarus', 11, false, 'Half of this moon fell into its planet. How this happened is unknown.');
INSERT INTO public.moon VALUES (20, 'Daedalus', 11, false, NULL);
INSERT INTO public.moon VALUES (21, 'Michael', 12, false, 'What protection might God need?');
INSERT INTO public.moon VALUES (22, 'Gabriel', 12, false, 'Why must God hide?');
INSERT INTO public.moon VALUES (23, 'Raphael', 12, false, 'Who is He to judge [REDACTED]');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Salvage', 1, false, 'Salvage is a war-torn planet. Though frequently visited for its vast amounts of wealth, the radioactively-riddled surface makes it uninhabitable. That said, some speculate civilization bellow the surface.');
INSERT INTO public.planet VALUES (2, 'Wheilt', 1, true, 'One of the several capitals of Brytia, Wheilt is a military planet turned civil. Should any threats come, this planet can militarize in less than a day. But until then, its population sits waiting in patient bliss.');
INSERT INTO public.planet VALUES (3, 'Jilthrine', 2, true, 'Jilthrine: Manufacturing hub of the universe. This planet is the sole reason this nation was able to rise to such power so fast. That said, this planet has no interest in expanding the empire, making it an anticipated candidate for rebellion.');
INSERT INTO public.planet VALUES (4, 'Zainou', 2, true, 'Unlike Jilthrine, this planet is a top proponent of war and colonial expansion. Behind this mindset lies the past in which Zainou had brought initial wealth to its solar system via agressive capital-motivated expansion (from which Jilthrine was able to grow so much from).');
INSERT INTO public.planet VALUES (5, 'Vitz', 3, false, 'Basking in Gamma, Vitz is a model example of what happens to planets impacted by nature-manipulated warfare. Unlike its sister-planet, Yermitz, infrastructure failure led to no backup for the harsh, artificially-influenced conditions, resulting in the entire planet dying.');
INSERT INTO public.planet VALUES (6, 'Yermitz', 3, true, 'Unlike Vitz who had catostrophic intrastructure failure, Yermitz is currently holding on. Sitting on the Kharzan facing perimiter, however, there is little hope that what little they have will last.');
INSERT INTO public.planet VALUES (7, 'Ae Eitus', 4, false, 'Capital of GeoPortableTech, Ae Eitus is comprised entirely of machines. Sitting at a level arguably above typical life, they are feared by all and challenged by none. That said, it seems like they are avoiding contact with others at the moment, going so far as to de-habitize their planet.');
INSERT INTO public.planet VALUES (8, 'Corpobus', 4, false, 'The theorized birthplase of the machines. It was here that their creators were purged first. That said, there exist no records of what happened. So paired with their current actions, they are a completely unpredictable force.');
INSERT INTO public.planet VALUES (9, 'Neitz', 5, true, 'Neitz is currently the only existing man-made planet. Serving as a symbol for human triumph above all else, Neitz is the galaxys manifesto.');
INSERT INTO public.planet VALUES (10, 'Cam Vue', 5, false, 'Cam Vue is the failed version of what Neitz turned out to be. Although no life can sustain itself here alone, Cam Vue has become a location of outlaws in which many come stocked up. Cam Vue is labeled as one of the seven central hubs to the Black Market.');
INSERT INTO public.planet VALUES (11, 'Land of the Lost', 6, false, 'One of the few recorded planets after the fall. Though nothing is confirmed to be here, the planet is confirmed to exist. This is more than enough to constitute a vicory for Lishat.');
INSERT INTO public.planet VALUES (12, 'REDACTED', 6, true, 'What comes, stays. No one can leave. Perhaps no one can enter either. All we know is that those who have entered have never returned.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lhunds', 1, true, 'White');
INSERT INTO public.star VALUES (2, 'Reishul', 2, true, 'Red');
INSERT INTO public.star VALUES (3, 'Borbhal', 3, true, 'Neutrino');
INSERT INTO public.star VALUES (4, 'Dhaali', 4, false, 'Blue');
INSERT INTO public.star VALUES (5, 'Lucidos', 5, true, 'White');
INSERT INTO public.star VALUES (6, 'Kabaris', 6, false, 'Brown');


--
-- Name: fleet_fleet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fleet_fleet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fleet fleet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fleet
    ADD CONSTRAINT fleet_name_key UNIQUE (name);


--
-- Name: fleet fleet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fleet
    ADD CONSTRAINT fleet_pkey PRIMARY KEY (fleet_id);


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

