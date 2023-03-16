--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-16 10:05:21

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
-- TOC entry 226 (class 1259 OID 16508)
-- Name: carrito_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrito_compra (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    id_usuario bigint NOT NULL
);


ALTER TABLE public.carrito_compra OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16426)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id_categoria bigint NOT NULL,
    genero character varying(255)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16425)
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_categoria_seq OWNER TO postgres;

--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 220
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;


--
-- TOC entry 223 (class 1259 OID 16433)
-- Name: marca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marca (
    id_marca bigint NOT NULL,
    marca character varying(255)
);


ALTER TABLE public.marca OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16432)
-- Name: marca_id_marca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marca_id_marca_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marca_id_marca_seq OWNER TO postgres;

--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 222
-- Name: marca_id_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marca_id_marca_seq OWNED BY public.marca.id_marca;


--
-- TOC entry 225 (class 1259 OID 16440)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id_producto bigint NOT NULL,
    cantidad_disponible integer,
    color character varying(255),
    descripcion character varying(255),
    id_categoria bigint,
    id_marca bigint,
    id_talla bigint,
    imagen character varying(255),
    mas_buscados integer,
    valor_unitario integer
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16439)
-- Name: producto_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_id_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producto_id_producto_seq OWNER TO postgres;

--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 224
-- Name: producto_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.producto.id_producto;


--
-- TOC entry 215 (class 1259 OID 16398)
-- Name: talla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.talla (
    id_talla bigint NOT NULL,
    talla character varying(255)
);


ALTER TABLE public.talla OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16397)
-- Name: talla_id_talla_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.talla_id_talla_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.talla_id_talla_seq OWNER TO postgres;

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 214
-- Name: talla_id_talla_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.talla_id_talla_seq OWNED BY public.talla.id_talla;


--
-- TOC entry 217 (class 1259 OID 16405)
-- Name: tipo_documento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_documento (
    id_tipo_documento bigint NOT NULL,
    tipo_documento character varying(255)
);


ALTER TABLE public.tipo_documento OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16404)
-- Name: tipo_documento_id_tipo_documento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_documento_id_tipo_documento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_documento_id_tipo_documento_seq OWNER TO postgres;

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 216
-- Name: tipo_documento_id_tipo_documento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_documento_id_tipo_documento_seq OWNED BY public.tipo_documento.id_tipo_documento;


--
-- TOC entry 219 (class 1259 OID 16412)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    apellidos character varying(255),
    contrasena character varying(255),
    documento integer,
    correo_electronico character varying(255),
    id_tipo_documento bigint,
    nombres character varying(255)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16411)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 218
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- TOC entry 227 (class 1259 OID 16514)
-- Name: venta_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venta_producto (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    id_producto bigint NOT NULL,
    id_venta bigint NOT NULL
);


ALTER TABLE public.venta_producto OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16517)
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id bigint NOT NULL,
    correo character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    fecha date NOT NULL,
    total double precision NOT NULL,
    id_usuario bigint NOT NULL
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- TOC entry 3213 (class 2604 OID 16429)
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 16436)
-- Name: marca id_marca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marca ALTER COLUMN id_marca SET DEFAULT nextval('public.marca_id_marca_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 16443)
-- Name: producto id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 16401)
-- Name: talla id_talla; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talla ALTER COLUMN id_talla SET DEFAULT nextval('public.talla_id_talla_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 16408)
-- Name: tipo_documento id_tipo_documento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento ALTER COLUMN id_tipo_documento SET DEFAULT nextval('public.tipo_documento_id_tipo_documento_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 16415)
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- TOC entry 3396 (class 0 OID 16508)
-- Dependencies: 226
-- Data for Name: carrito_compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrito_compra (id, cantidad, id_usuario) FROM stdin;
\.


--
-- TOC entry 3391 (class 0 OID 16426)
-- Dependencies: 221
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id_categoria, genero) FROM stdin;
1	hombre
2	mujer
\.


--
-- TOC entry 3393 (class 0 OID 16433)
-- Dependencies: 223
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marca (id_marca, marca) FROM stdin;
1	true
2	stark 
3	dynamo
4	mattelsa
5	bershka
6	zara
\.


--
-- TOC entry 3395 (class 0 OID 16440)
-- Dependencies: 225
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id_producto, cantidad_disponible, color, descripcion, id_categoria, id_marca, id_talla, imagen, mas_buscados, valor_unitario) FROM stdin;
4	10	violeta	Blusa	2	4	4	blusa-violeta.png	0	100000
5	10	azul	Blusa	2	5	5	blusa-azul.png	0	100000
6	10	verde	Blusa	2	6	6	blusa-verde.png	0	100000
1	10	negra	Camiseta Basica	1	1	4	camiseta negra.png	0	70000
2	10	blanca	Camiseta Basica	1	1	5	camiseta blanca.png	0	70000
3	10	verde	Camiseta Basica	1	1	6	camiseta verde.png	0	70000
7	20	negro	Jean	1	3	1	jean negro.png	0	150000
8	20	azul	Jean	1	2	2	jean azul.png	0	150000
9	20	gris	Jean	1	1	3	jean gris.png	0	150000
10	10	negro	Pantalon	2	6	1	pantalon negro.png	0	120000
11	10	terracota	Pantalon	2	5	2	pantalon terracota.png	0	120000
12	10	camel	Pantalon	2	4	3	pantalon camel.png	0	120000
\.


--
-- TOC entry 3385 (class 0 OID 16398)
-- Dependencies: 215
-- Data for Name: talla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.talla (id_talla, talla) FROM stdin;
1	34
2	32
3	30
4	l
5	m
6	s
\.


--
-- TOC entry 3387 (class 0 OID 16405)
-- Dependencies: 217
-- Data for Name: tipo_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_documento (id_tipo_documento, tipo_documento) FROM stdin;
1	cedula
2	cedula de extranjeria
3	pasaporte
\.


--
-- TOC entry 3389 (class 0 OID 16412)
-- Dependencies: 219
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, apellidos, contrasena, documento, correo_electronico, id_tipo_documento, nombres) FROM stdin;
1	montoya	Abc123	246813579	femo246@hotmail.com	1	felipe
14	Henao Perez	Abc123	1035975846	isahenao@hotmail.com	1	Ana Isabel
15	Lopez Patiño	Convertic2023	1035860940	walp91@hotmail.com	1	William
16	Patiño	Convertic2023	1035852963	saulpa@hotmail.com	1	Saul
\.


--
-- TOC entry 3397 (class 0 OID 16514)
-- Dependencies: 227
-- Data for Name: venta_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venta_producto (id, cantidad, id_producto, id_venta) FROM stdin;
\.


--
-- TOC entry 3398 (class 0 OID 16517)
-- Dependencies: 228
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id, correo, direccion, fecha, total, id_usuario) FROM stdin;
\.


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 220
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 2, true);


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 222
-- Name: marca_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marca_id_marca_seq', 6, true);


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 224
-- Name: producto_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_id_producto_seq', 13, true);


--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 214
-- Name: talla_id_talla_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.talla_id_talla_seq', 6, true);


--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 216
-- Name: tipo_documento_id_tipo_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_documento_id_tipo_documento_seq', 3, true);


--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 218
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 16, true);


--
-- TOC entry 3231 (class 2606 OID 16546)
-- Name: carrito_compra carrito_compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compra
    ADD CONSTRAINT carrito_compra_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 16431)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 3227 (class 2606 OID 16438)
-- Name: marca marca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id_marca);


--
-- TOC entry 3229 (class 2606 OID 16447)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 3217 (class 2606 OID 16403)
-- Name: talla talla_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talla
    ADD CONSTRAINT talla_pkey PRIMARY KEY (id_talla);


--
-- TOC entry 3219 (class 2606 OID 16410)
-- Name: tipo_documento tipo_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento
    ADD CONSTRAINT tipo_documento_pkey PRIMARY KEY (id_tipo_documento);


--
-- TOC entry 3221 (class 2606 OID 16503)
-- Name: usuario usuario_id_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_usuario UNIQUE (id_usuario);


--
-- TOC entry 3223 (class 2606 OID 16419)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 3233 (class 2606 OID 16562)
-- Name: venta_producto venta_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_producto
    ADD CONSTRAINT venta_producto_pkey PRIMARY KEY (id);


--
-- TOC entry 3235 (class 2606 OID 16533)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 16547)
-- Name: carrito_compra carrito_compra_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compra
    ADD CONSTRAINT carrito_compra_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) NOT VALID;


--
-- TOC entry 3237 (class 2606 OID 16465)
-- Name: producto fk9nyueixdsgbycfhf7allg8su; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk9nyueixdsgbycfhf7allg8su FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);


--
-- TOC entry 3236 (class 2606 OID 16420)
-- Name: usuario fki84twx6f7o0pu9mbi856hhp7s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fki84twx6f7o0pu9mbi856hhp7s FOREIGN KEY (id_tipo_documento) REFERENCES public.tipo_documento(id_tipo_documento);


--
-- TOC entry 3238 (class 2606 OID 16476)
-- Name: producto fkpmfw7ds3rfuwge05ehb216r82; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fkpmfw7ds3rfuwge05ehb216r82 FOREIGN KEY (id_marca) REFERENCES public.marca(id_marca);


--
-- TOC entry 3239 (class 2606 OID 16487)
-- Name: producto fks3tb930kdyk9071njiex7b7j2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fks3tb930kdyk9071njiex7b7j2 FOREIGN KEY (id_talla) REFERENCES public.talla(id_talla);


--
-- TOC entry 3241 (class 2606 OID 16534)
-- Name: ventas ventas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) NOT VALID;


-- Completed on 2023-03-16 10:05:23

--
-- PostgreSQL database dump complete
--

