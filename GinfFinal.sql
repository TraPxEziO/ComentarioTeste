--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-10-01 11:27:06 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 49769)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE admin (
    nickname character varying(50) NOT NULL,
    nome character varying(50),
    email character varying(50),
    senha character varying(50)
);


ALTER TABLE admin OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 49779)
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comentario (
    usuario integer,
    comentario text NOT NULL
);


ALTER TABLE comentario OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 49787)
-- Name: postagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE postagem (
    conteudo character varying NOT NULL
);


ALTER TABLE postagem OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 49772)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    nickname character varying(20) NOT NULL,
    nome character varying(80),
    email character varying(40),
    senha character varying(30)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2153 (class 0 OID 49769)
-- Dependencies: 181
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin (nickname, nome, email, senha) FROM stdin;
\.


--
-- TOC entry 2155 (class 0 OID 49779)
-- Dependencies: 183
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comentario (usuario, comentario) FROM stdin;
\N	aaaaaaaaaaaaaaa
\N	aaaaaaaaaaaaaaaa
\N	aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
\N	aaaaaaaaaaaaaaaaaaaaaaaaaaa
\N	aaaaasdasda
\N	asddddddddddddddddddddddddd
\N	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
\N	satisfacao
\N	dale renatinh
\N	dale
\N	daleeeeeeeeeeeeeeeeeeeeeeee
\N	dale dale dale
\N	adle
\N	i feel mysekf going under
\N	dale renatinho
\N	margiela
\N	lo
\.


--
-- TOC entry 2156 (class 0 OID 49787)
-- Dependencies: 184
-- Data for Name: postagem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY postagem (conteudo) FROM stdin;
sdasdasdas
armanDeus
pau
dale renatinho
\.


--
-- TOC entry 2154 (class 0 OID 49772)
-- Dependencies: 182
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (nickname, nome, email, senha) FROM stdin;
\.


--
-- TOC entry 2036 (class 2606 OID 49800)
-- Name: pk_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comentario PRIMARY KEY (comentario);


--
-- TOC entry 2034 (class 2606 OID 49776)
-- Name: pk_nickname; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_nickname PRIMARY KEY (nickname);


--
-- TOC entry 2032 (class 2606 OID 49778)
-- Name: pk_nicknameAdmin; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin
    ADD CONSTRAINT "pk_nicknameAdmin" PRIMARY KEY (nickname);


--
-- TOC entry 2038 (class 2606 OID 49798)
-- Name: pkconteudo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postagem
    ADD CONSTRAINT pkconteudo PRIMARY KEY (conteudo);


--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-10-01 11:27:06 BRT

--
-- PostgreSQL database dump complete
--

