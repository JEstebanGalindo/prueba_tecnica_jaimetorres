toc.dat                                                                                             0000600 0004000 0002000 00000022420 14543440072 0014442 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       1    *                {            prueba_tecnica_hospital    13.5    13.5 #    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    25010    prueba_tecnica_hospital    DATABASE     s   CREATE DATABASE prueba_tecnica_hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
 '   DROP DATABASE prueba_tecnica_hospital;
                postgres    false         �            1259    25029    cita    TABLE     �   CREATE TABLE public.cita (
    id integer NOT NULL,
    id_paciente integer,
    id_medico integer,
    fecha date,
    hora time without time zone
);
    DROP TABLE public.cita;
       public         heap    postgres    false         �            1259    25027    cita_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cita_id_seq;
       public          postgres    false    205         �           0    0    cita_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cita_id_seq OWNED BY public.cita.id;
          public          postgres    false    204         �            1259    25037    medicamento    TABLE     �   CREATE TABLE public.medicamento (
    id integer NOT NULL,
    id_cita integer,
    nro_lote integer,
    nombre character varying(30)
);
    DROP TABLE public.medicamento;
       public         heap    postgres    false         �            1259    25035    medicamento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medicamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.medicamento_id_seq;
       public          postgres    false    207         �           0    0    medicamento_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.medicamento_id_seq OWNED BY public.medicamento.id;
          public          postgres    false    206         �            1259    25021    medico    TABLE     �   CREATE TABLE public.medico (
    id integer NOT NULL,
    nro_licencia integer,
    nombre character varying(30),
    apellido character varying(30),
    especialidad character varying(30)
);
    DROP TABLE public.medico;
       public         heap    postgres    false         �            1259    25019    medico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.medico_id_seq;
       public          postgres    false    203         �           0    0    medico_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.medico_id_seq OWNED BY public.medico.id;
          public          postgres    false    202         �            1259    25013    paciente    TABLE     �   CREATE TABLE public.paciente (
    id integer NOT NULL,
    nro_identificacion integer,
    nombre character varying(30),
    apellido character varying(30),
    edad integer,
    genero character varying(10)
);
    DROP TABLE public.paciente;
       public         heap    postgres    false         �            1259    25011    paciente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.paciente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.paciente_id_seq;
       public          postgres    false    201         �           0    0    paciente_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.paciente_id_seq OWNED BY public.paciente.id;
          public          postgres    false    200         6           2604    25032    cita id    DEFAULT     b   ALTER TABLE ONLY public.cita ALTER COLUMN id SET DEFAULT nextval('public.cita_id_seq'::regclass);
 6   ALTER TABLE public.cita ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205         7           2604    25040    medicamento id    DEFAULT     p   ALTER TABLE ONLY public.medicamento ALTER COLUMN id SET DEFAULT nextval('public.medicamento_id_seq'::regclass);
 =   ALTER TABLE public.medicamento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207         5           2604    25024 	   medico id    DEFAULT     f   ALTER TABLE ONLY public.medico ALTER COLUMN id SET DEFAULT nextval('public.medico_id_seq'::regclass);
 8   ALTER TABLE public.medico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203         4           2604    25016    paciente id    DEFAULT     j   ALTER TABLE ONLY public.paciente ALTER COLUMN id SET DEFAULT nextval('public.paciente_id_seq'::regclass);
 :   ALTER TABLE public.paciente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201         �          0    25029    cita 
   TABLE DATA           G   COPY public.cita (id, id_paciente, id_medico, fecha, hora) FROM stdin;
    public          postgres    false    205       3018.dat �          0    25037    medicamento 
   TABLE DATA           D   COPY public.medicamento (id, id_cita, nro_lote, nombre) FROM stdin;
    public          postgres    false    207       3020.dat �          0    25021    medico 
   TABLE DATA           R   COPY public.medico (id, nro_licencia, nombre, apellido, especialidad) FROM stdin;
    public          postgres    false    203       3016.dat �          0    25013    paciente 
   TABLE DATA           Z   COPY public.paciente (id, nro_identificacion, nombre, apellido, edad, genero) FROM stdin;
    public          postgres    false    201       3014.dat �           0    0    cita_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.cita_id_seq', 7, true);
          public          postgres    false    204         �           0    0    medicamento_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.medicamento_id_seq', 6, true);
          public          postgres    false    206         �           0    0    medico_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.medico_id_seq', 2, true);
          public          postgres    false    202         �           0    0    paciente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.paciente_id_seq', 4, true);
          public          postgres    false    200         =           2606    25034    cita pk_id_cita 
   CONSTRAINT     M   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT pk_id_cita PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.cita DROP CONSTRAINT pk_id_cita;
       public            postgres    false    205         ?           2606    25042    medicamento pk_id_medicamento 
   CONSTRAINT     [   ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT pk_id_medicamento PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.medicamento DROP CONSTRAINT pk_id_medicamento;
       public            postgres    false    207         ;           2606    25026    medico pk_id_medico 
   CONSTRAINT     Q   ALTER TABLE ONLY public.medico
    ADD CONSTRAINT pk_id_medico PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.medico DROP CONSTRAINT pk_id_medico;
       public            postgres    false    203         9           2606    25018    paciente pk_id_paciente 
   CONSTRAINT     U   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT pk_id_paciente PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.paciente DROP CONSTRAINT pk_id_paciente;
       public            postgres    false    201         B           2606    25043    medicamento fk_id_cita    FK CONSTRAINT     t   ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT fk_id_cita FOREIGN KEY (id_cita) REFERENCES public.cita(id);
 @   ALTER TABLE ONLY public.medicamento DROP CONSTRAINT fk_id_cita;
       public          postgres    false    207    205    2877         A           2606    25053    cita fk_id_medico    FK CONSTRAINT     }   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT fk_id_medico FOREIGN KEY (id_medico) REFERENCES public.medico(id) NOT VALID;
 ;   ALTER TABLE ONLY public.cita DROP CONSTRAINT fk_id_medico;
       public          postgres    false    2875    205    203         @           2606    25048    cita fk_id_paciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT fk_id_paciente FOREIGN KEY (id_paciente) REFERENCES public.paciente(id) NOT VALID;
 =   ALTER TABLE ONLY public.cita DROP CONSTRAINT fk_id_paciente;
       public          postgres    false    2873    205    201                                                                                                                                                                                                                                                        3018.dat                                                                                            0000600 0004000 0002000 00000000241 14543440072 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2023-12-28	08:00:00
2	2	1	2023-12-28	18:00:00
3	3	2	2023-12-31	14:00:00
4	4	2	2024-01-01	06:00:00
6	1	1	2023-03-01	24:00:00
7	1	2	2023-12-28	10:00:00
\.


                                                                                                                                                                                                                                                                                                                                                               3020.dat                                                                                            0000600 0004000 0002000 00000000153 14543440072 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	10	Acetaminofen
2	2	20	Amoxaxilina
3	3	30	Medicamento 3
4	4	40	Medicamento 4
6	6	60	Medicamento 6
\.


                                                                                                                                                                                                                                                                                                                                                                                                                     3016.dat                                                                                            0000600 0004000 0002000 00000000134 14543440072 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	123	Medico 1	Apellido Medico 1	Terapeuta
2	1234	Medico 2	Apellido Medico 2	Psicologo
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                    3014.dat                                                                                            0000600 0004000 0002000 00000000265 14543440072 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	12345	Paciente 1	Apellido 1	20	Masculino
2	123456	Paciente 2	Apellido 2	22	Masculino
3	1234567	Paciente 3	Apellido 3	23	Femenino
4	12345678	Paciente 4	Apellido 4	24	Femenino
\.


                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000017435 14543440072 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5
-- Dumped by pg_dump version 13.5

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

DROP DATABASE prueba_tecnica_hospital;
--
-- Name: prueba_tecnica_hospital; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE prueba_tecnica_hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE prueba_tecnica_hospital OWNER TO postgres;

\connect prueba_tecnica_hospital

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
-- Name: cita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cita (
    id integer NOT NULL,
    id_paciente integer,
    id_medico integer,
    fecha date,
    hora time without time zone
);


ALTER TABLE public.cita OWNER TO postgres;

--
-- Name: cita_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cita_id_seq OWNER TO postgres;

--
-- Name: cita_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cita_id_seq OWNED BY public.cita.id;


--
-- Name: medicamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicamento (
    id integer NOT NULL,
    id_cita integer,
    nro_lote integer,
    nombre character varying(30)
);


ALTER TABLE public.medicamento OWNER TO postgres;

--
-- Name: medicamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medicamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicamento_id_seq OWNER TO postgres;

--
-- Name: medicamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medicamento_id_seq OWNED BY public.medicamento.id;


--
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medico (
    id integer NOT NULL,
    nro_licencia integer,
    nombre character varying(30),
    apellido character varying(30),
    especialidad character varying(30)
);


ALTER TABLE public.medico OWNER TO postgres;

--
-- Name: medico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medico_id_seq OWNER TO postgres;

--
-- Name: medico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medico_id_seq OWNED BY public.medico.id;


--
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paciente (
    id integer NOT NULL,
    nro_identificacion integer,
    nombre character varying(30),
    apellido character varying(30),
    edad integer,
    genero character varying(10)
);


ALTER TABLE public.paciente OWNER TO postgres;

--
-- Name: paciente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paciente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paciente_id_seq OWNER TO postgres;

--
-- Name: paciente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paciente_id_seq OWNED BY public.paciente.id;


--
-- Name: cita id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cita ALTER COLUMN id SET DEFAULT nextval('public.cita_id_seq'::regclass);


--
-- Name: medicamento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento ALTER COLUMN id SET DEFAULT nextval('public.medicamento_id_seq'::regclass);


--
-- Name: medico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico ALTER COLUMN id SET DEFAULT nextval('public.medico_id_seq'::regclass);


--
-- Name: paciente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente ALTER COLUMN id SET DEFAULT nextval('public.paciente_id_seq'::regclass);


--
-- Data for Name: cita; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cita (id, id_paciente, id_medico, fecha, hora) FROM stdin;
\.
COPY public.cita (id, id_paciente, id_medico, fecha, hora) FROM '$$PATH$$/3018.dat';

--
-- Data for Name: medicamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicamento (id, id_cita, nro_lote, nombre) FROM stdin;
\.
COPY public.medicamento (id, id_cita, nro_lote, nombre) FROM '$$PATH$$/3020.dat';

--
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medico (id, nro_licencia, nombre, apellido, especialidad) FROM stdin;
\.
COPY public.medico (id, nro_licencia, nombre, apellido, especialidad) FROM '$$PATH$$/3016.dat';

--
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paciente (id, nro_identificacion, nombre, apellido, edad, genero) FROM stdin;
\.
COPY public.paciente (id, nro_identificacion, nombre, apellido, edad, genero) FROM '$$PATH$$/3014.dat';

--
-- Name: cita_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cita_id_seq', 7, true);


--
-- Name: medicamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicamento_id_seq', 6, true);


--
-- Name: medico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medico_id_seq', 2, true);


--
-- Name: paciente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paciente_id_seq', 4, true);


--
-- Name: cita pk_id_cita; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cita
    ADD CONSTRAINT pk_id_cita PRIMARY KEY (id);


--
-- Name: medicamento pk_id_medicamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT pk_id_medicamento PRIMARY KEY (id);


--
-- Name: medico pk_id_medico; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT pk_id_medico PRIMARY KEY (id);


--
-- Name: paciente pk_id_paciente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT pk_id_paciente PRIMARY KEY (id);


--
-- Name: medicamento fk_id_cita; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT fk_id_cita FOREIGN KEY (id_cita) REFERENCES public.cita(id);


--
-- Name: cita fk_id_medico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cita
    ADD CONSTRAINT fk_id_medico FOREIGN KEY (id_medico) REFERENCES public.medico(id) NOT VALID;


--
-- Name: cita fk_id_paciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cita
    ADD CONSTRAINT fk_id_paciente FOREIGN KEY (id_paciente) REFERENCES public.paciente(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   