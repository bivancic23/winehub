--
-- PostgreSQL database dump
--

\restrict ZNoUJPgXlS1klfcUX640t5eUYICVnWhVtCVmU65GBqzogmCZ6CEMdmblPj7XacG

-- Dumped from database version 15.15 (Homebrew)
-- Dumped by pg_dump version 15.15 (Homebrew)

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO bornaivancic;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO bornaivancic;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO bornaivancic;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO bornaivancic;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO bornaivancic;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO bornaivancic;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO bornaivancic;

--
-- Name: companies; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.companies (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    discount_percent integer,
    payment_terms_days integer,
    offers_email character varying,
    street_address character varying,
    postal_code character varying,
    city character varying,
    oib character varying
);


ALTER TABLE public.companies OWNER TO bornaivancic;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO bornaivancic;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: offers; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.offers (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    number character varying,
    sent_to_email character varying,
    sent_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.offers OWNER TO bornaivancic;

--
-- Name: offers_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.offers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offers_id_seq OWNER TO bornaivancic;

--
-- Name: offers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.offers_id_seq OWNED BY public.offers.id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.order_items (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    unit_price_cents integer NOT NULL,
    line_total_cents integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.order_items OWNER TO bornaivancic;

--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_id_seq OWNER TO bornaivancic;

--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- Name: order_status_histories; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.order_status_histories (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    changed_by_id integer NOT NULL,
    from_status integer NOT NULL,
    to_status integer NOT NULL,
    note character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.order_status_histories OWNER TO bornaivancic;

--
-- Name: order_status_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.order_status_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_status_histories_id_seq OWNER TO bornaivancic;

--
-- Name: order_status_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.order_status_histories_id_seq OWNED BY public.order_status_histories.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    company_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    total_cents integer DEFAULT 0 NOT NULL,
    notes text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    subtotal_cents integer DEFAULT 0 NOT NULL,
    discount_cents integer DEFAULT 0 NOT NULL,
    vat_cents integer DEFAULT 0 NOT NULL,
    due_date date,
    paid_at timestamp(6) without time zone,
    approved_at timestamp(6) without time zone,
    delivered_at timestamp(6) without time zone,
    delivery_address text
);


ALTER TABLE public.orders OWNER TO bornaivancic;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO bornaivancic;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying NOT NULL,
    sku character varying NOT NULL,
    price_cents integer NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    stock_quantity integer DEFAULT 0 NOT NULL,
    category character varying,
    image_url character varying
);


ALTER TABLE public.products OWNER TO bornaivancic;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO bornaivancic;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO bornaivancic;

--
-- Name: users; Type: TABLE; Schema: public; Owner: bornaivancic
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    company_id bigint,
    role integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO bornaivancic;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: bornaivancic
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO bornaivancic;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bornaivancic
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: offers id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.offers ALTER COLUMN id SET DEFAULT nextval('public.offers_id_seq'::regclass);


--
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- Name: order_status_histories id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.order_status_histories ALTER COLUMN id SET DEFAULT nextval('public.order_status_histories_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
21	pdf	Offer	9	21	2026-03-24 08:12:52.276925
23	pdf	Offer	10	23	2026-03-24 08:13:54.04758
24	pdf	Offer	11	24	2026-05-05 10:10:35.610071
27	pdf	Offer	12	27	2026-05-05 10:50:54.533697
28	pdf	Offer	13	28	2026-06-30 15:11:57.854075
30	pdf	Offer	14	30	2026-06-30 16:06:42.98442
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
21	y13vq4gx18wk3wwtck5f78xc8adw	offer-OFF-20260324-3A09.pdf	application/pdf	{"identified":true,"analyzed":true}	local	53140	LzSVpYMP3g/DLB8ottj6xQ==	2026-03-24 08:12:52.274856
23	qf5901r9xacwtlp76r7wealsexxl	offer-OFF-20260324-5155.pdf	application/pdf	{"identified":true,"analyzed":true}	local	56001	cB0HeD3QWU+C2kNjv15Frg==	2026-03-24 08:13:54.046716
24	1g7itwmuua3cdl1flfil5och5zfu	offer-OFF-20260505-6003.pdf	application/pdf	{"identified":true,"analyzed":true}	local	53170	ToQs0s8juiicB4lDwm7zIg==	2026-05-05 10:10:35.607168
27	27kcket2szi2nizbxpjz5jcxih2j	offer-OFF-20260505-77E1.pdf	application/pdf	{"identified":true,"analyzed":true}	local	60447	HICrULGwG9AARC6J1HxtuA==	2026-05-05 10:50:54.532669
28	kwqqkxj5trggn6fld3b3ex3awlhi	offer-OFF-20260630-8851.pdf	application/pdf	{"identified":true,"analyzed":true}	local	52446	2QZieyK9zrSlOmyqhOvc8Q==	2026-06-30 15:11:57.851738
30	7qrnc6cjgti805ycsc1kodjmr91a	offer-OFF-20260630-6915.pdf	application/pdf	{"identified":true,"analyzed":true}	local	71129	ASiSQIVSNOjKUpgYfQeeqw==	2026-06-30 16:06:42.982291
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2026-01-31 18:47:36.283129	2026-01-31 18:47:36.28313
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.companies (id, name, created_at, updated_at, discount_percent, payment_terms_days, offers_email, street_address, postal_code, city, oib) FROM stdin;
151	Adriatic Vino d.o.o.	2026-03-17 09:09:43.786339	2026-03-17 09:09:43.786339	15	30	borna.ivancic23@gmail.com	Ilica 15	10000	Zagreb	10000000001
152	Aurora Trade d.o.o.	2026-03-17 09:09:44.011604	2026-03-17 09:09:44.011604	0	21	partner2@winehub.test	Vukovarska 88	10000	Zagreb	10000000002
153	Barrique Partner d.o.o.	2026-03-17 09:09:44.233877	2026-03-17 09:09:44.233877	5	30	partner3@winehub.test	Maksimirska 41	10000	Zagreb	10000000003
154	Bonavia Distribucija d.o.o.	2026-03-17 09:09:44.45674	2026-03-17 09:09:44.45674	5	7	partner4@winehub.test	Korzo 12	51000	Rijeka	10000000004
155	Bura Vina d.o.o.	2026-03-17 09:09:44.68287	2026-03-17 09:09:44.68287	10	30	partner5@winehub.test	Obala kneza Branimira 9	23000	Zadar	10000000005
156	Casta Vino d.o.o.	2026-03-17 09:09:44.911946	2026-03-17 09:09:44.911946	15	14	partner6@winehub.test	Frankopanska 22	10000	Zagreb	10000000006
157	Cellar House d.o.o.	2026-03-17 09:09:45.13469	2026-03-17 09:09:45.13469	15	30	partner7@winehub.test	Kapucinska 33	42000	Varaždin	10000000007
158	Central Wine Trade d.o.o.	2026-03-17 09:09:45.357279	2026-03-17 09:09:45.357279	10	7	partner8@winehub.test	Ulica grada Vukovara 12	10000	Zagreb	10000000008
159	Dalmatia Selection d.o.o.	2026-03-17 09:09:45.581454	2026-03-17 09:09:45.581454	10	14	partner9@winehub.test	Poljička cesta 20	21000	Split	10000000009
160	Decanter Partner d.o.o.	2026-03-17 09:09:45.809349	2026-03-17 09:09:45.809349	5	14	partner10@winehub.test	Osječka 44	31000	Osijek	10000000010
161	Dioniz Trade d.o.o.	2026-03-17 09:09:46.032437	2026-03-17 09:09:46.032437	12	14	partner11@winehub.test	Strossmayerova 8	31000	Osijek	10000000011
162	Divinum d.o.o.	2026-03-17 09:09:46.257078	2026-03-17 09:09:46.257078	10	14	partner12@winehub.test	Gundulićeva 17	10000	Zagreb	10000000012
163	Enoteca Plus d.o.o.	2026-03-17 09:09:46.484112	2026-03-17 09:09:46.484112	12	30	partner13@winehub.test	Zrinsko Frankopanska 5	21000	Split	10000000013
164	Estate Vino d.o.o.	2026-03-17 09:09:46.710559	2026-03-17 09:09:46.710559	12	21	partner14@winehub.test	Matije Gupca 19	43000	Bjelovar	10000000014
165	Euro Vino Partner d.o.o.	2026-03-17 09:09:46.949292	2026-03-17 09:09:46.949292	10	21	partner15@winehub.test	Radićeva 27	10000	Zagreb	10000000015
166	Fine Bottle d.o.o.	2026-03-17 09:09:47.17243	2026-03-17 09:09:47.17243	5	14	partner16@winehub.test	Ulica Ivana Kukuljevića 9	42000	Varaždin	10000000016
167	Golden Glass d.o.o.	2026-03-17 09:09:47.394533	2026-03-17 09:09:47.394533	10	14	partner17@winehub.test	Savska cesta 101	10000	Zagreb	10000000017
168	Grand Cru Partner d.o.o.	2026-03-17 09:09:47.618555	2026-03-17 09:09:47.618555	5	7	partner18@winehub.test	Riječka 28	21000	Split	10000000018
169	Grape Hub d.o.o.	2026-03-17 09:09:47.842359	2026-03-17 09:09:47.842359	10	14	partner19@winehub.test	Kralja Tomislava 6	35000	Slavonski Brod	10000000019
170	Heritage Wine d.o.o.	2026-03-17 09:09:48.067425	2026-03-17 09:09:48.067425	10	14	partner20@winehub.test	Ante Starčevića 14	23000	Zadar	10000000020
171	Istra Select d.o.o.	2026-03-17 09:09:48.295041	2026-03-17 09:09:48.295041	12	14	partner21@winehub.test	Carrarina 2	52100	Pula	10000000021
172	Jadran Vino Trade d.o.o.	2026-03-17 09:09:48.518622	2026-03-17 09:09:48.518622	0	14	partner22@winehub.test	Riva 10	21000	Split	10000000022
173	Kadulja Commerce d.o.o.	2026-03-17 09:09:48.740633	2026-03-17 09:09:48.740633	12	7	partner23@winehub.test	Trg bana Jelačića 4	10000	Zagreb	10000000023
174	Korak Vino d.o.o.	2026-03-17 09:09:48.966256	2026-03-17 09:09:48.966256	15	30	partner24@winehub.test	Trakošćanska 11	42000	Varaždin	10000000024
175	Kvarner Selection d.o.o.	2026-03-17 09:09:49.189273	2026-03-17 09:09:49.189273	5	14	partner25@winehub.test	Ciottina 7	51000	Rijeka	10000000025
176	Lagunis d.o.o.	2026-03-17 09:09:49.411181	2026-03-17 09:09:49.411181	15	21	partner26@winehub.test	Eufrazijeva 13	52440	Poreč	10000000026
177	Libra Vino d.o.o.	2026-03-17 09:09:49.634765	2026-03-17 09:09:49.634765	10	30	partner27@winehub.test	Selska cesta 55	10000	Zagreb	10000000027
178	Lumen Trade d.o.o.	2026-03-17 09:09:49.858169	2026-03-17 09:09:49.858169	5	14	partner28@winehub.test	Europske avenije 6	31000	Osijek	10000000028
179	Mare Distribution d.o.o.	2026-03-17 09:09:50.081043	2026-03-17 09:09:50.081043	12	21	partner29@winehub.test	Put Supavla 3	21000	Split	10000000029
180	Merlot Partner d.o.o.	2026-03-17 09:09:50.303706	2026-03-17 09:09:50.303706	10	7	partner30@winehub.test	Bakačeva 9	10000	Zagreb	10000000030
181	Monte Vino d.o.o.	2026-03-17 09:09:50.526238	2026-03-17 09:09:50.526238	5	21	partner31@winehub.test	Ulica Stjepana Radića 18	40000	Čakovec	10000000031
182	Nobile Trade d.o.o.	2026-03-17 09:09:50.748473	2026-03-17 09:09:50.748473	0	7	partner32@winehub.test	Kačićeva 21	10000	Zagreb	10000000032
183	North Cellar d.o.o.	2026-03-17 09:09:50.972717	2026-03-17 09:09:50.972717	15	30	partner33@winehub.test	Koprivnička 30	42000	Varaždin	10000000033
184	Nova Berba d.o.o.	2026-03-17 09:09:51.19655	2026-03-17 09:09:51.19655	15	14	partner34@winehub.test	Cvjetna cesta 5	10000	Zagreb	10000000034
185	Opus Vino d.o.o.	2026-03-17 09:09:51.418233	2026-03-17 09:09:51.418233	15	30	partner35@winehub.test	Dubrovačka 7	20000	Dubrovnik	10000000035
186	Pelješac Partner d.o.o.	2026-03-17 09:09:51.641332	2026-03-17 09:09:51.641332	12	30	partner36@winehub.test	Stonska 2	20250	Orebić	10000000036
187	Premium Bottle d.o.o.	2026-03-17 09:09:51.864466	2026-03-17 09:09:51.864466	0	21	partner37@winehub.test	Heinzelova 44	10000	Zagreb	10000000037
188	Primorska Vina d.o.o.	2026-03-17 09:09:52.086966	2026-03-17 09:09:52.086966	10	14	partner38@winehub.test	Kumičićeva 16	51000	Rijeka	10000000038
189	Riviera Wine d.o.o.	2026-03-17 09:09:52.309289	2026-03-17 09:09:52.309289	12	30	partner39@winehub.test	Šetalište Franje Tuđmana 8	23000	Zadar	10000000039
190	Royal Glass d.o.o.	2026-03-17 09:09:52.532132	2026-03-17 09:09:52.532132	10	14	partner40@winehub.test	Radnička cesta 52	10000	Zagreb	10000000040
191	Sommelier Partner d.o.o.	2026-03-17 09:09:52.754884	2026-03-17 09:09:52.754884	12	7	partner41@winehub.test	Martićeva 67	10000	Zagreb	10000000041
192	Sparkling Point d.o.o.	2026-03-17 09:09:52.978013	2026-03-17 09:09:52.978013	0	21	partner42@winehub.test	Gajeva 18	10000	Zagreb	10000000042
193	Terra Vina d.o.o.	2026-03-17 09:09:53.200525	2026-03-17 09:09:53.200525	0	30	partner43@winehub.test	Ante Kovačića 10	42000	Varaždin	10000000043
194	Vinaria Trade d.o.o.	2026-03-17 09:09:53.422307	2026-03-17 09:09:53.422307	10	14	partner44@winehub.test	Palmotićeva 12	10000	Zagreb	10000000044
195	Vinoteka Partner d.o.o.	2026-03-17 09:09:53.644949	2026-03-17 09:09:53.644949	10	21	partner45@winehub.test	Bosutska 14	31000	Osijek	10000000045
196	Vita Vino d.o.o.	2026-03-17 09:09:53.86814	2026-03-17 09:09:53.86814	10	30	partner46@winehub.test	Kaštelanska 25	21000	Split	10000000046
197	Vivat Select d.o.o.	2026-03-17 09:09:54.090489	2026-03-17 09:09:54.090489	12	14	partner47@winehub.test	Samoborska cesta 90	10000	Zagreb	10000000047
198	Zagorje Wine House d.o.o.	2026-03-17 09:09:54.313926	2026-03-17 09:09:54.313926	10	30	partner48@winehub.test	Ljudevita Gaja 31	49000	Krapina	10000000048
199	Zlatna Kap d.o.o.	2026-03-17 09:09:54.536892	2026-03-17 09:09:54.536892	0	14	partner49@winehub.test	Trg slobode 3	31000	Osijek	10000000049
200	Zora Distribucija d.o.o.	2026-03-17 09:09:54.760293	2026-03-17 09:09:54.760293	15	21	partner50@winehub.test	Ulica kralja Petra Krešimira IV 6	35000	Slavonski Brod	10000000050
\.


--
-- Data for Name: offers; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.offers (id, order_id, number, sent_to_email, sent_at, created_at, updated_at) FROM stdin;
9	616	OFF-20260324-3A09	\N	\N	2026-03-24 08:12:51.940522	2026-03-24 08:12:52.28549
10	693	OFF-20260324-5155	borna.ivancic23@gmail.com	2026-03-24 08:13:54.092136	2026-03-24 08:13:51.822767	2026-03-24 08:13:54.092307
11	631	OFF-20260505-6003	\N	\N	2026-05-05 10:10:35.220389	2026-05-05 10:10:35.620138
12	614	OFF-20260505-77E1	borna.ivancic23@gmail.com	2026-05-05 10:50:54.571971	2026-05-05 10:11:05.751631	2026-05-05 10:50:54.572558
13	593	OFF-20260630-8851	\N	\N	2026-06-30 15:11:57.514484	2026-06-30 15:11:57.86191
14	762	OFF-20260630-6915	borna.ivancic23@gmail.com	2026-06-30 16:06:43.036309	2026-06-30 16:06:30.810311	2026-06-30 16:06:43.036531
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.order_items (id, order_id, product_id, quantity, unit_price_cents, line_total_cents, created_at, updated_at) FROM stdin;
2077	561	22576	4	6900	27600	2026-03-17 09:09:55.036081	2026-03-17 09:09:55.036081
2078	561	21198	12	785	9420	2026-03-17 09:09:55.039898	2026-03-17 09:09:55.039898
2079	561	22260	12	180	2160	2026-03-17 09:09:55.041747	2026-03-17 09:09:55.041747
2080	561	23085	6	5400	32400	2026-03-17 09:09:55.043615	2026-03-17 09:09:55.043615
2081	561	21495	10	1970	19700	2026-03-17 09:09:55.045509	2026-03-17 09:09:55.045509
2082	561	21365	5	1810	9050	2026-03-17 09:09:55.047345	2026-03-17 09:09:55.047345
2083	562	22832	6	1195	7170	2026-03-17 09:09:55.070628	2026-03-17 09:09:55.070628
2084	562	20904	9	7698	69282	2026-03-17 09:09:55.072548	2026-03-17 09:09:55.072548
2085	562	22217	12	1725	20700	2026-03-17 09:09:55.074288	2026-03-17 09:09:55.074288
2086	562	22658	8	1400	11200	2026-03-17 09:09:55.07623	2026-03-17 09:09:55.07623
2087	562	22826	10	7470	74700	2026-03-17 09:09:55.078821	2026-03-17 09:09:55.078821
2088	562	22873	6	3195	19170	2026-03-17 09:09:55.080551	2026-03-17 09:09:55.080551
2089	563	22871	6	5580	33480	2026-03-17 09:09:55.090699	2026-03-17 09:09:55.090699
2090	563	22548	6	1254	7524	2026-03-17 09:09:55.092751	2026-03-17 09:09:55.092751
2091	564	22452	7	5680	39760	2026-03-17 09:09:55.104394	2026-03-17 09:09:55.104394
2092	564	22559	8	1301	10408	2026-03-17 09:09:55.106148	2026-03-17 09:09:55.106148
2093	564	23182	3	1890	5670	2026-03-17 09:09:55.107849	2026-03-17 09:09:55.107849
2094	564	20893	7	7910	55370	2026-03-17 09:09:55.111487	2026-03-17 09:09:55.111487
2095	564	21497	2	1307	2614	2026-03-17 09:09:55.113246	2026-03-17 09:09:55.113246
2096	564	21862	2	372	744	2026-03-17 09:09:55.114994	2026-03-17 09:09:55.114994
2097	565	23132	4	2600	10400	2026-03-17 09:09:55.121969	2026-03-17 09:09:55.121969
2098	565	23289	1	13180	13180	2026-03-17 09:09:55.123688	2026-03-17 09:09:55.123688
2099	565	22404	4	2986	11944	2026-03-17 09:09:55.12614	2026-03-17 09:09:55.12614
2100	565	20853	5	2600	13000	2026-03-17 09:09:55.12785	2026-03-17 09:09:55.12785
2101	566	22505	5	1890	9450	2026-03-17 09:09:55.135456	2026-03-17 09:09:55.135456
2102	566	21971	9	1115	10035	2026-03-17 09:09:55.137204	2026-03-17 09:09:55.137204
2103	566	22390	3	5110	15330	2026-03-17 09:09:55.139181	2026-03-17 09:09:55.139181
2104	566	22346	6	2495	14970	2026-03-17 09:09:55.140873	2026-03-17 09:09:55.140873
2105	566	21409	2	1659	3318	2026-03-17 09:09:55.142564	2026-03-17 09:09:55.142564
2106	566	22782	5	7995	39975	2026-03-17 09:09:55.144491	2026-03-17 09:09:55.144491
2107	567	23349	2	63500	127000	2026-03-17 09:09:55.153264	2026-03-17 09:09:55.153264
2108	567	21919	7	995	6965	2026-03-17 09:09:55.154967	2026-03-17 09:09:55.154967
2109	567	21739	10	662	6620	2026-03-17 09:09:55.157248	2026-03-17 09:09:55.157248
2110	567	22680	9	44660	401940	2026-03-17 09:09:55.158928	2026-03-17 09:09:55.158928
2111	567	22178	3	1022	3066	2026-03-17 09:09:55.160868	2026-03-17 09:09:55.160868
2112	568	21682	4	7406	29624	2026-03-17 09:09:55.168643	2026-03-17 09:09:55.168643
2113	568	21419	4	6371	25484	2026-03-17 09:09:55.171024	2026-03-17 09:09:55.171024
2114	568	22591	1	880	880	2026-03-17 09:09:55.172671	2026-03-17 09:09:55.172671
2115	568	22348	12	2695	32340	2026-03-17 09:09:55.174327	2026-03-17 09:09:55.174327
2116	568	22918	6	2140	12840	2026-03-17 09:09:55.175958	2026-03-17 09:09:55.175958
2117	568	20908	2	1460	2920	2026-03-17 09:09:55.178105	2026-03-17 09:09:55.178105
2118	569	23205	6	1295	7770	2026-03-17 09:09:55.19292	2026-03-17 09:09:55.19292
2119	569	22796	5	4250	21250	2026-03-17 09:09:55.194564	2026-03-17 09:09:55.194564
2120	569	22822	4	7600	30400	2026-03-17 09:09:55.196211	2026-03-17 09:09:55.196211
2121	570	21928	9	4200	37800	2026-03-17 09:09:55.204467	2026-03-17 09:09:55.204467
2122	570	22521	3	4400	13200	2026-03-17 09:09:55.20611	2026-03-17 09:09:55.20611
2123	570	21424	3	2104	6312	2026-03-17 09:09:55.207963	2026-03-17 09:09:55.207963
2124	570	22018	1	870	870	2026-03-17 09:09:55.209581	2026-03-17 09:09:55.209581
2125	570	21623	2	1274	2548	2026-03-17 09:09:55.211293	2026-03-17 09:09:55.211293
2126	571	22537	1	1009	1009	2026-03-17 09:09:55.219623	2026-03-17 09:09:55.219623
2127	571	21558	12	2100	25200	2026-03-17 09:09:55.221817	2026-03-17 09:09:55.221817
2128	571	21862	2	372	744	2026-03-17 09:09:55.223445	2026-03-17 09:09:55.223445
2129	571	21142	1	1978	1978	2026-03-17 09:09:55.225403	2026-03-17 09:09:55.225403
2130	572	22982	2	840	1680	2026-03-17 09:09:55.23151	2026-03-17 09:09:55.23151
2131	572	21415	10	5700	57000	2026-03-17 09:09:55.233847	2026-03-17 09:09:55.233847
2132	573	21419	1	6371	6371	2026-03-17 09:09:55.242492	2026-03-17 09:09:55.242492
2133	573	21566	2	11680	23360	2026-03-17 09:09:55.244148	2026-03-17 09:09:55.244148
2134	573	21980	3	2256	6768	2026-03-17 09:09:55.246063	2026-03-17 09:09:55.246063
2135	574	23201	2	1130	2260	2026-03-17 09:09:55.260212	2026-03-17 09:09:55.260212
2136	574	21550	2	6500	13000	2026-03-17 09:09:55.261867	2026-03-17 09:09:55.261867
2137	574	22116	1	2940	2940	2026-03-17 09:09:55.264019	2026-03-17 09:09:55.264019
2138	574	22087	7	6099	42693	2026-03-17 09:09:55.265673	2026-03-17 09:09:55.265673
2139	574	23260	2	18750	37500	2026-03-17 09:09:55.267561	2026-03-17 09:09:55.267561
2140	575	21658	3	1540	4620	2026-03-17 09:09:55.279942	2026-03-17 09:09:55.279942
2141	575	20965	7	783	5481	2026-03-17 09:09:55.281622	2026-03-17 09:09:55.281622
2142	576	23314	1	21500	21500	2026-03-17 09:09:55.291811	2026-03-17 09:09:55.291811
2143	576	21232	2	1995	3990	2026-03-17 09:09:55.293475	2026-03-17 09:09:55.293475
2144	576	21263	10	650	6500	2026-03-17 09:09:55.295088	2026-03-17 09:09:55.295088
2145	576	22960	7	5190	36330	2026-03-17 09:09:55.297404	2026-03-17 09:09:55.297404
2146	576	21604	1	3716	3716	2026-03-17 09:09:55.299041	2026-03-17 09:09:55.299041
2147	576	23339	3	960	2880	2026-03-17 09:09:55.30067	2026-03-17 09:09:55.30067
2148	577	22977	10	6695	66950	2026-03-17 09:09:55.31465	2026-03-17 09:09:55.31465
2149	577	21756	9	540	4860	2026-03-17 09:09:55.316305	2026-03-17 09:09:55.316305
2150	577	22799	1	2600	2600	2026-03-17 09:09:55.318937	2026-03-17 09:09:55.318937
2151	577	22390	2	5110	10220	2026-03-17 09:09:55.320608	2026-03-17 09:09:55.320608
2152	578	21736	10	1990	19900	2026-03-17 09:09:55.327025	2026-03-17 09:09:55.327025
2153	578	23312	2	2820	5640	2026-03-17 09:09:55.328674	2026-03-17 09:09:55.328674
2154	579	21206	7	1900	13300	2026-03-17 09:09:55.336585	2026-03-17 09:09:55.336585
2155	579	21292	3	1070	3210	2026-03-17 09:09:55.338234	2026-03-17 09:09:55.338234
2156	579	20832	7	9730	68110	2026-03-17 09:09:55.340597	2026-03-17 09:09:55.340597
2157	579	23252	4	5330	21320	2026-03-17 09:09:55.34223	2026-03-17 09:09:55.34223
2158	579	22653	8	480	3840	2026-03-17 09:09:55.343853	2026-03-17 09:09:55.343853
2159	579	21621	2	995	1990	2026-03-17 09:09:55.345501	2026-03-17 09:09:55.345501
2160	580	22335	8	1128	9024	2026-03-17 09:09:55.352132	2026-03-17 09:09:55.352132
2161	580	22301	5	431	2155	2026-03-17 09:09:55.35378	2026-03-17 09:09:55.35378
2162	580	22113	3	922	2766	2026-03-17 09:09:55.35561	2026-03-17 09:09:55.35561
2163	580	21017	5	3060	15300	2026-03-17 09:09:55.357245	2026-03-17 09:09:55.357245
2164	580	23126	1	11600	11600	2026-03-17 09:09:55.35896	2026-03-17 09:09:55.35896
2165	580	22070	2	431	862	2026-03-17 09:09:55.361191	2026-03-17 09:09:55.361191
2166	581	23030	2	2490	4980	2026-03-17 09:09:55.370276	2026-03-17 09:09:55.370276
2167	581	21407	1	723	723	2026-03-17 09:09:55.371953	2026-03-17 09:09:55.371953
2168	581	21261	11	2600	28600	2026-03-17 09:09:55.373884	2026-03-17 09:09:55.373884
2169	582	22651	8	3600	28800	2026-03-17 09:09:55.379933	2026-03-17 09:09:55.379933
2170	582	22308	9	14730	132570	2026-03-17 09:09:55.382262	2026-03-17 09:09:55.382262
2171	582	21081	5	2840	14200	2026-03-17 09:09:55.383961	2026-03-17 09:09:55.383961
2172	582	22400	3	1800	5400	2026-03-17 09:09:55.385941	2026-03-17 09:09:55.385941
2173	582	23186	1	2300	2300	2026-03-17 09:09:55.387601	2026-03-17 09:09:55.387601
2174	583	21076	4	1029	4116	2026-03-17 09:09:55.394273	2026-03-17 09:09:55.394273
2175	583	21050	11	7130	78430	2026-03-17 09:09:55.396583	2026-03-17 09:09:55.396583
2176	583	22630	2	6700	13400	2026-03-17 09:09:55.398236	2026-03-17 09:09:55.398236
2177	583	23308	1	2520	2520	2026-03-17 09:09:55.4001	2026-03-17 09:09:55.4001
2178	584	21863	8	56	448	2026-03-17 09:09:55.408361	2026-03-17 09:09:55.408361
2179	584	21541	1	3968	3968	2026-03-17 09:09:55.410048	2026-03-17 09:09:55.410048
2180	584	21995	1	5302	5302	2026-03-17 09:09:55.412235	2026-03-17 09:09:55.412235
2181	584	22718	5	5000	25000	2026-03-17 09:09:55.413888	2026-03-17 09:09:55.413888
2182	584	21694	6	4446	26676	2026-03-17 09:09:55.415546	2026-03-17 09:09:55.415546
2183	585	22018	7	870	6090	2026-03-17 09:09:55.423488	2026-03-17 09:09:55.423488
2184	585	22852	8	3250	26000	2026-03-17 09:09:55.425804	2026-03-17 09:09:55.425804
2185	586	22518	12	5590	67080	2026-03-17 09:09:55.434639	2026-03-17 09:09:55.434639
2186	586	21673	4	1566	6264	2026-03-17 09:09:55.436355	2026-03-17 09:09:55.436355
2187	586	21958	2	1832	3664	2026-03-17 09:09:55.438256	2026-03-17 09:09:55.438256
2188	586	21409	3	1659	4977	2026-03-17 09:09:55.439961	2026-03-17 09:09:55.439961
2189	587	21936	5	3950	19750	2026-03-17 09:09:55.448337	2026-03-17 09:09:55.448337
2190	587	22313	11	2420	26620	2026-03-17 09:09:55.449996	2026-03-17 09:09:55.449996
2191	587	23308	8	2520	20160	2026-03-17 09:09:55.451637	2026-03-17 09:09:55.451637
2192	587	22645	7	1765	12355	2026-03-17 09:09:55.453524	2026-03-17 09:09:55.453524
2193	588	22832	6	1195	7170	2026-03-17 09:09:55.461812	2026-03-17 09:09:55.461812
2194	588	21917	10	3350	33500	2026-03-17 09:09:55.463671	2026-03-17 09:09:55.463671
2195	588	23169	6	1240	7440	2026-03-17 09:09:55.465297	2026-03-17 09:09:55.465297
2196	588	21327	6	2300	13800	2026-03-17 09:09:55.466999	2026-03-17 09:09:55.466999
2197	589	23192	7	11500	80500	2026-03-17 09:09:55.473422	2026-03-17 09:09:55.473422
2198	589	22056	2	1394	2788	2026-03-17 09:09:55.475106	2026-03-17 09:09:55.475106
2199	589	21085	5	2920	14600	2026-03-17 09:09:55.477222	2026-03-17 09:09:55.477222
2200	590	22627	7	6351	44457	2026-03-17 09:09:55.485179	2026-03-17 09:09:55.485179
2201	590	21095	1	703	703	2026-03-17 09:09:55.48692	2026-03-17 09:09:55.48692
2202	590	22201	1	1725	1725	2026-03-17 09:09:55.489366	2026-03-17 09:09:55.489366
2203	591	21096	2	1128	2256	2026-03-17 09:09:55.503157	2026-03-17 09:09:55.503157
2204	591	21307	5	2774	13870	2026-03-17 09:09:55.504701	2026-03-17 09:09:55.504701
2205	592	22698	5	2350	11750	2026-03-17 09:09:55.516983	2026-03-17 09:09:55.516983
2206	592	21637	7	3670	25690	2026-03-17 09:09:55.519126	2026-03-17 09:09:55.519126
2207	592	21452	8	1710	13680	2026-03-17 09:09:55.521311	2026-03-17 09:09:55.521311
2208	592	23232	1	29400	29400	2026-03-17 09:09:55.523256	2026-03-17 09:09:55.523256
2209	593	22932	4	2895	11580	2026-03-17 09:09:55.531713	2026-03-17 09:09:55.531713
2210	593	22878	12	985	11820	2026-03-17 09:09:55.533978	2026-03-17 09:09:55.533978
2211	593	21980	1	2256	2256	2026-03-17 09:09:55.535632	2026-03-17 09:09:55.535632
2212	594	22034	4	989	3956	2026-03-17 09:09:55.543612	2026-03-17 09:09:55.543612
2213	594	21331	4	795	3180	2026-03-17 09:09:55.545534	2026-03-17 09:09:55.545534
2214	594	22382	2	8361	16722	2026-03-17 09:09:55.547168	2026-03-17 09:09:55.547168
2215	594	22646	6	1930	11580	2026-03-17 09:09:55.549008	2026-03-17 09:09:55.549008
2216	595	22286	3	903	2709	2026-03-17 09:09:55.563235	2026-03-17 09:09:55.563235
2217	595	21311	1	1749	1749	2026-03-17 09:09:55.565146	2026-03-17 09:09:55.565146
2218	595	21935	5	2760	13800	2026-03-17 09:09:55.56663	2026-03-17 09:09:55.56663
2219	596	22957	7	2970	20790	2026-03-17 09:09:55.574281	2026-03-17 09:09:55.574281
2220	596	21826	2	1930	3860	2026-03-17 09:09:55.575954	2026-03-17 09:09:55.575954
2221	596	21102	1	6500	6500	2026-03-17 09:09:55.577603	2026-03-17 09:09:55.577603
2222	596	22021	4	730	2920	2026-03-17 09:09:55.579356	2026-03-17 09:09:55.579356
2223	597	22688	2	1830	3660	2026-03-17 09:09:55.587954	2026-03-17 09:09:55.587954
2224	597	21143	5	4314	21570	2026-03-17 09:09:55.589797	2026-03-17 09:09:55.589797
2225	597	21513	5	1983	9915	2026-03-17 09:09:55.591481	2026-03-17 09:09:55.591481
2226	597	23121	9	2190	19710	2026-03-17 09:09:55.593113	2026-03-17 09:09:55.593113
2227	597	22338	10	1991	19910	2026-03-17 09:09:55.595463	2026-03-17 09:09:55.595463
2228	597	21833	5	1058	5290	2026-03-17 09:09:55.597094	2026-03-17 09:09:55.597094
2229	598	22604	12	8364	100368	2026-03-17 09:09:55.607616	2026-03-17 09:09:55.607616
2230	598	21838	3	2110	6330	2026-03-17 09:09:55.609255	2026-03-17 09:09:55.609255
2231	598	21368	12	783	9396	2026-03-17 09:09:55.610884	2026-03-17 09:09:55.610884
2232	598	21709	10	1255	12550	2026-03-17 09:09:55.612695	2026-03-17 09:09:55.612695
2233	599	23067	5	1790	8950	2026-03-17 09:09:55.621483	2026-03-17 09:09:55.621483
2234	599	20858	9	2600	23400	2026-03-17 09:09:55.623612	2026-03-17 09:09:55.623612
2235	600	22881	4	7500	30000	2026-03-17 09:09:55.631421	2026-03-17 09:09:55.631421
2236	600	21818	3	5200	15600	2026-03-17 09:09:55.633276	2026-03-17 09:09:55.633276
2237	600	22851	11	3400	37400	2026-03-17 09:09:55.634886	2026-03-17 09:09:55.634886
2238	600	22209	10	2190	21900	2026-03-17 09:09:55.637228	2026-03-17 09:09:55.637228
2239	600	22531	1	15180	15180	2026-03-17 09:09:55.638867	2026-03-17 09:09:55.638867
2240	601	22694	1	2750	2750	2026-03-17 09:09:55.653047	2026-03-17 09:09:55.653047
2241	601	23240	5	13206	66030	2026-03-17 09:09:55.654906	2026-03-17 09:09:55.654906
2242	602	22282	4	1593	6372	2026-03-17 09:09:55.663668	2026-03-17 09:09:55.663668
2243	602	22782	3	7995	23985	2026-03-17 09:09:55.665324	2026-03-17 09:09:55.665324
2244	603	22771	6	860	5160	2026-03-17 09:09:55.674219	2026-03-17 09:09:55.674219
2245	603	21573	1	9500	9500	2026-03-17 09:09:55.676096	2026-03-17 09:09:55.676096
2246	603	21478	10	1559	15590	2026-03-17 09:09:55.677722	2026-03-17 09:09:55.677722
2247	603	21877	8	3390	27120	2026-03-17 09:09:55.680053	2026-03-17 09:09:55.680053
2248	603	20891	12	4380	52560	2026-03-17 09:09:55.681696	2026-03-17 09:09:55.681696
2249	603	21353	7	5890	41230	2026-03-17 09:09:55.683319	2026-03-17 09:09:55.683319
2250	604	22241	10	2050	20500	2026-03-17 09:09:55.69528	2026-03-17 09:09:55.69528
2251	604	22118	9	1920	17280	2026-03-17 09:09:55.69716	2026-03-17 09:09:55.69716
2252	604	21886	11	8550	94050	2026-03-17 09:09:55.698811	2026-03-17 09:09:55.698811
2253	605	22951	6	13450	80700	2026-03-17 09:09:55.707056	2026-03-17 09:09:55.707056
2254	605	23265	5	5300	26500	2026-03-17 09:09:55.709248	2026-03-17 09:09:55.709248
2255	606	20832	12	9730	116760	2026-03-17 09:09:55.719728	2026-03-17 09:09:55.719728
2256	606	22720	8	1300	10400	2026-03-17 09:09:55.721492	2026-03-17 09:09:55.721492
2257	606	20868	8	2500	20000	2026-03-17 09:09:55.723713	2026-03-17 09:09:55.723713
2258	606	22841	1	1490	1490	2026-03-17 09:09:55.725426	2026-03-17 09:09:55.725426
2259	606	22662	2	3889	7778	2026-03-17 09:09:55.727104	2026-03-17 09:09:55.727104
2260	607	22039	11	2760	30360	2026-03-17 09:09:55.741934	2026-03-17 09:09:55.741934
2261	607	21050	8	7130	57040	2026-03-17 09:09:55.744258	2026-03-17 09:09:55.744258
2262	607	21002	2	1890	3780	2026-03-17 09:09:55.745926	2026-03-17 09:09:55.745926
2263	608	21421	9	610	5490	2026-03-17 09:09:55.759696	2026-03-17 09:09:55.759696
2264	608	22167	3	490	1470	2026-03-17 09:09:55.761531	2026-03-17 09:09:55.761531
2265	608	22984	9	2055	18495	2026-03-17 09:09:55.76318	2026-03-17 09:09:55.76318
2266	608	22897	7	1895	13265	2026-03-17 09:09:55.765528	2026-03-17 09:09:55.765528
2267	608	21480	9	1314	11826	2026-03-17 09:09:55.767152	2026-03-17 09:09:55.767152
2268	609	21005	3	13936	41808	2026-03-17 09:09:55.775237	2026-03-17 09:09:55.775237
2269	609	21549	8	6990	55920	2026-03-17 09:09:55.777145	2026-03-17 09:09:55.777145
2270	609	22413	3	1950	5850	2026-03-17 09:09:55.778766	2026-03-17 09:09:55.778766
2271	609	21097	7	1128	7896	2026-03-17 09:09:55.780374	2026-03-17 09:09:55.780374
2272	610	22712	6	1168	7008	2026-03-17 09:09:55.787405	2026-03-17 09:09:55.787405
2273	610	21467	4	995	3980	2026-03-17 09:09:55.789056	2026-03-17 09:09:55.789056
2274	610	21351	3	1790	5370	2026-03-17 09:09:55.790668	2026-03-17 09:09:55.790668
2275	610	23037	3	790	2370	2026-03-17 09:09:55.792285	2026-03-17 09:09:55.792285
2276	610	22238	10	39900	399000	2026-03-17 09:09:55.79444	2026-03-17 09:09:55.79444
2277	611	21164	8	1800	14400	2026-03-17 09:09:55.806294	2026-03-17 09:09:55.806294
2278	611	22862	8	6850	54800	2026-03-17 09:09:55.808666	2026-03-17 09:09:55.808666
2279	611	21345	8	544	4352	2026-03-17 09:09:55.810302	2026-03-17 09:09:55.810302
2280	612	22975	3	7930	23790	2026-03-17 09:09:55.818211	2026-03-17 09:09:55.818211
2281	612	21995	9	5302	47718	2026-03-17 09:09:55.820199	2026-03-17 09:09:55.820199
2282	613	23280	7	570	3990	2026-03-17 09:09:55.834005	2026-03-17 09:09:55.834005
2283	613	21767	8	571	4568	2026-03-17 09:09:55.836202	2026-03-17 09:09:55.836202
2284	614	20836	4	2820	11280	2026-03-17 09:09:55.847123	2026-03-17 09:09:55.847123
2285	614	23096	1	1450	1450	2026-03-17 09:09:55.848813	2026-03-17 09:09:55.848813
2286	614	23228	2	20500	41000	2026-03-17 09:09:55.851491	2026-03-17 09:09:55.851491
2287	614	22289	11	305	3355	2026-03-17 09:09:55.853155	2026-03-17 09:09:55.853155
2288	614	22923	12	2100	25200	2026-03-17 09:09:55.854875	2026-03-17 09:09:55.854875
2289	614	21166	5	1800	9000	2026-03-17 09:09:55.856524	2026-03-17 09:09:55.856524
2290	615	22685	4	1249	4996	2026-03-17 09:09:55.864806	2026-03-17 09:09:55.864806
2291	615	21679	7	5282	36974	2026-03-17 09:09:55.866654	2026-03-17 09:09:55.866654
2292	615	23214	1	1790	1790	2026-03-17 09:09:55.868293	2026-03-17 09:09:55.868293
2293	615	22393	5	4712	23560	2026-03-17 09:09:55.869982	2026-03-17 09:09:55.869982
2294	616	23362	2	19600	39200	2026-03-17 09:09:55.878827	2026-03-17 09:09:55.878827
2295	616	22570	10	2650	26500	2026-03-17 09:09:55.881004	2026-03-17 09:09:55.881004
2296	616	21534	5	2700	13500	2026-03-17 09:09:55.882649	2026-03-17 09:09:55.882649
2297	617	22207	5	750	3750	2026-03-17 09:09:55.890616	2026-03-17 09:09:55.890616
2298	617	21488	8	19	152	2026-03-17 09:09:55.892381	2026-03-17 09:09:55.892381
2299	617	20923	4	1394	5576	2026-03-17 09:09:55.894651	2026-03-17 09:09:55.894651
2300	617	21015	6	2840	17040	2026-03-17 09:09:55.896281	2026-03-17 09:09:55.896281
2301	618	21099	3	1480	4440	2026-03-17 09:09:55.904257	2026-03-17 09:09:55.904257
2302	618	21843	2	3150	6300	2026-03-17 09:09:55.906169	2026-03-17 09:09:55.906169
2303	618	21952	1	2690	2690	2026-03-17 09:09:55.907805	2026-03-17 09:09:55.907805
2304	618	23286	11	2600	28600	2026-03-17 09:09:55.909667	2026-03-17 09:09:55.909667
2305	618	22914	12	385	4620	2026-03-17 09:09:55.911298	2026-03-17 09:09:55.911298
2306	618	22757	11	2500	27500	2026-03-17 09:09:55.913611	2026-03-17 09:09:55.913611
2307	619	23202	2	11500	23000	2026-03-17 09:09:55.924098	2026-03-17 09:09:55.924098
2308	619	21005	4	13936	55744	2026-03-17 09:09:55.925996	2026-03-17 09:09:55.925996
2309	619	22481	10	5442	54420	2026-03-17 09:09:55.927625	2026-03-17 09:09:55.927625
2310	619	22255	8	3590	28720	2026-03-17 09:09:55.929258	2026-03-17 09:09:55.929258
2311	619	21121	7	1095	7665	2026-03-17 09:09:55.931095	2026-03-17 09:09:55.931095
2312	619	20997	11	5707	62777	2026-03-17 09:09:55.932723	2026-03-17 09:09:55.932723
2313	620	21503	10	1125	11250	2026-03-17 09:09:55.941027	2026-03-17 09:09:55.941027
2314	620	22321	1	6211	6211	2026-03-17 09:09:55.943244	2026-03-17 09:09:55.943244
2315	620	21992	4	790	3160	2026-03-17 09:09:55.944889	2026-03-17 09:09:55.944889
2316	620	21078	12	962	11544	2026-03-17 09:09:55.94679	2026-03-17 09:09:55.94679
2317	620	22563	1	2124	2124	2026-03-17 09:09:55.948423	2026-03-17 09:09:55.948423
2318	620	21530	3	11000	33000	2026-03-17 09:09:55.950047	2026-03-17 09:09:55.950047
2319	621	22735	1	1924	1924	2026-03-17 09:09:55.958948	2026-03-17 09:09:55.958948
2320	621	22046	7	2588	18116	2026-03-17 09:09:55.960647	2026-03-17 09:09:55.960647
2321	621	22204	7	1128	7896	2026-03-17 09:09:55.962294	2026-03-17 09:09:55.962294
2322	621	23360	6	5440	32640	2026-03-17 09:09:55.96447	2026-03-17 09:09:55.96447
2323	622	21589	5	1600	8000	2026-03-17 09:09:55.972398	2026-03-17 09:09:55.972398
2324	622	21058	12	14000	168000	2026-03-17 09:09:55.974169	2026-03-17 09:09:55.974169
2325	622	22410	6	4380	26280	2026-03-17 09:09:55.975839	2026-03-17 09:09:55.975839
2326	622	21771	9	2495	22455	2026-03-17 09:09:55.978209	2026-03-17 09:09:55.978209
2327	623	21221	12	4639	55668	2026-03-17 09:09:55.992776	2026-03-17 09:09:55.992776
2328	623	20941	3	1447	4341	2026-03-17 09:09:55.99469	2026-03-17 09:09:55.99469
2329	623	22568	2	1990	3980	2026-03-17 09:09:55.996385	2026-03-17 09:09:55.996385
2330	623	22696	2	2590	5180	2026-03-17 09:09:55.998815	2026-03-17 09:09:55.998815
2331	624	22916	1	450	450	2026-03-17 09:09:56.006971	2026-03-17 09:09:56.006971
2332	624	20965	5	783	3915	2026-03-17 09:09:56.008662	2026-03-17 09:09:56.008662
2333	624	22797	6	4400	26400	2026-03-17 09:09:56.010293	2026-03-17 09:09:56.010293
2334	624	22421	5	7280	36400	2026-03-17 09:09:56.01222	2026-03-17 09:09:56.01222
2335	624	21536	1	2700	2700	2026-03-17 09:09:56.01394	2026-03-17 09:09:56.01394
2336	625	21410	2	903	1806	2026-03-17 09:09:56.022522	2026-03-17 09:09:56.022522
2337	625	23044	5	340	1700	2026-03-17 09:09:56.024265	2026-03-17 09:09:56.024265
2338	625	22109	8	650	5200	2026-03-17 09:09:56.025931	2026-03-17 09:09:56.025931
2339	625	21103	7	3185	22295	2026-03-17 09:09:56.028142	2026-03-17 09:09:56.028142
2340	626	23285	9	11900	107100	2026-03-17 09:09:56.036941	2026-03-17 09:09:56.036941
2341	626	22815	5	4500	22500	2026-03-17 09:09:56.038604	2026-03-17 09:09:56.038604
2342	626	23305	4	1390	5560	2026-03-17 09:09:56.04029	2026-03-17 09:09:56.04029
2343	626	23185	6	990	5940	2026-03-17 09:09:56.04272	2026-03-17 09:09:56.04272
2344	627	22058	10	1394	13940	2026-03-17 09:09:56.051761	2026-03-17 09:09:56.051761
2345	627	21829	7	2030	14210	2026-03-17 09:09:56.053436	2026-03-17 09:09:56.053436
2346	627	20843	4	8250	33000	2026-03-17 09:09:56.05538	2026-03-17 09:09:56.05538
2347	627	21798	2	2760	5520	2026-03-17 09:09:56.05707	2026-03-17 09:09:56.05707
2348	628	22055	6	1261	7566	2026-03-17 09:09:56.067873	2026-03-17 09:09:56.067873
2349	628	21742	5	540	2700	2026-03-17 09:09:56.069547	2026-03-17 09:09:56.069547
2350	628	20990	3	2790	8370	2026-03-17 09:09:56.071687	2026-03-17 09:09:56.071687
2351	628	21005	7	13936	97552	2026-03-17 09:09:56.073332	2026-03-17 09:09:56.073332
2352	628	22461	1	3000	3000	2026-03-17 09:09:56.074953	2026-03-17 09:09:56.074953
2353	629	21246	2	3700	7400	2026-03-17 09:09:56.083711	2026-03-17 09:09:56.083711
2354	629	21189	7	1918	13426	2026-03-17 09:09:56.086064	2026-03-17 09:09:56.086064
2355	629	23052	3	1295	3885	2026-03-17 09:09:56.087798	2026-03-17 09:09:56.087798
2356	629	21245	9	2600	23400	2026-03-17 09:09:56.089435	2026-03-17 09:09:56.089435
2357	630	23173	6	4140	24840	2026-03-17 09:09:56.103393	2026-03-17 09:09:56.103393
2358	630	22696	5	2590	12950	2026-03-17 09:09:56.105034	2026-03-17 09:09:56.105034
2359	630	22439	8	2290	18320	2026-03-17 09:09:56.107385	2026-03-17 09:09:56.107385
2360	630	22672	3	750	2250	2026-03-17 09:09:56.109038	2026-03-17 09:09:56.109038
2361	631	22557	5	1195	5975	2026-03-17 09:09:56.117744	2026-03-17 09:09:56.117744
2362	631	22624	3	4690	14070	2026-03-17 09:09:56.119779	2026-03-17 09:09:56.119779
2363	631	23240	10	13206	132060	2026-03-17 09:09:56.121458	2026-03-17 09:09:56.121458
2364	632	23061	10	2150	21500	2026-03-17 09:09:56.129952	2026-03-17 09:09:56.129952
2365	632	22519	2	7300	14600	2026-03-17 09:09:56.131632	2026-03-17 09:09:56.131632
2366	632	23253	1	11770	11770	2026-03-17 09:09:56.133309	2026-03-17 09:09:56.133309
2367	633	21378	9	1890	17010	2026-03-17 09:09:56.140037	2026-03-17 09:09:56.140037
2368	633	22965	8	7540	60320	2026-03-17 09:09:56.141705	2026-03-17 09:09:56.141705
2369	633	20851	2	1540	3080	2026-03-17 09:09:56.143771	2026-03-17 09:09:56.143771
2370	633	20930	8	2515	20120	2026-03-17 09:09:56.145614	2026-03-17 09:09:56.145614
2371	633	22648	3	540	1620	2026-03-17 09:09:56.147265	2026-03-17 09:09:56.147265
2372	633	22333	10	7150	71500	2026-03-17 09:09:56.149611	2026-03-17 09:09:56.149611
2373	634	20976	4	4660	18640	2026-03-17 09:09:56.15823	2026-03-17 09:09:56.15823
2374	634	21077	8	1029	8232	2026-03-17 09:09:56.159888	2026-03-17 09:09:56.159888
2375	634	21286	1	5250	5250	2026-03-17 09:09:56.161793	2026-03-17 09:09:56.161793
2376	634	21086	12	2790	33480	2026-03-17 09:09:56.163456	2026-03-17 09:09:56.163456
2377	635	21785	1	2700	2700	2026-03-17 09:09:56.177289	2026-03-17 09:09:56.177289
2378	635	21629	12	1555	18660	2026-03-17 09:09:56.179715	2026-03-17 09:09:56.179715
2379	635	21920	11	8590	94490	2026-03-17 09:09:56.181391	2026-03-17 09:09:56.181391
2380	636	21582	6	208	1248	2026-03-17 09:09:56.187705	2026-03-17 09:09:56.187705
2381	636	20959	7	2720	19040	2026-03-17 09:09:56.18935	2026-03-17 09:09:56.18935
2382	636	21499	6	1261	7566	2026-03-17 09:09:56.191108	2026-03-17 09:09:56.191108
2383	637	21574	11	9500	104500	2026-03-17 09:09:56.199157	2026-03-17 09:09:56.199157
2384	637	20981	7	650	4550	2026-03-17 09:09:56.201339	2026-03-17 09:09:56.201339
2385	637	21315	2	4250	8500	2026-03-17 09:09:56.202967	2026-03-17 09:09:56.202967
2386	637	22878	12	985	11820	2026-03-17 09:09:56.204876	2026-03-17 09:09:56.204876
2387	637	21837	7	2588	18116	2026-03-17 09:09:56.20653	2026-03-17 09:09:56.20653
2388	638	22388	4	3291	13164	2026-03-17 09:09:56.214925	2026-03-17 09:09:56.214925
2389	638	23157	1	74500	74500	2026-03-17 09:09:56.216568	2026-03-17 09:09:56.216568
2390	639	23289	3	13180	39540	2026-03-17 09:09:56.224442	2026-03-17 09:09:56.224442
2391	639	21214	6	1215	7290	2026-03-17 09:09:56.226333	2026-03-17 09:09:56.226333
2392	640	22463	4	1168	4672	2026-03-17 09:09:56.238726	2026-03-17 09:09:56.238726
2393	640	21153	12	870	10440	2026-03-17 09:09:56.241065	2026-03-17 09:09:56.241065
2394	641	23209	11	18350	201850	2026-03-17 09:09:56.255914	2026-03-17 09:09:56.255914
2395	641	21842	2	2382	4764	2026-03-17 09:09:56.258426	2026-03-17 09:09:56.258426
2396	641	22451	2	1725	3450	2026-03-17 09:09:56.260151	2026-03-17 09:09:56.260151
2397	641	21966	12	246	2952	2026-03-17 09:09:56.261823	2026-03-17 09:09:56.261823
2398	642	22337	7	3146	22022	2026-03-17 09:09:56.274551	2026-03-17 09:09:56.274551
2399	642	21819	11	1858	20438	2026-03-17 09:09:56.276238	2026-03-17 09:09:56.276238
2400	642	22339	10	1991	19910	2026-03-17 09:09:56.277908	2026-03-17 09:09:56.277908
2401	642	22833	7	1760	12320	2026-03-17 09:09:56.280273	2026-03-17 09:09:56.280273
2402	642	21566	3	11680	35040	2026-03-17 09:09:56.281912	2026-03-17 09:09:56.281912
2403	642	23332	8	1000	8000	2026-03-17 09:09:56.283572	2026-03-17 09:09:56.283572
2404	643	21012	8	3280	26240	2026-03-17 09:09:56.294308	2026-03-17 09:09:56.294308
2405	643	22932	7	2895	20265	2026-03-17 09:09:56.29617	2026-03-17 09:09:56.29617
2406	643	21411	5	995	4975	2026-03-17 09:09:56.297794	2026-03-17 09:09:56.297794
2407	643	21426	7	2104	14728	2026-03-17 09:09:56.300187	2026-03-17 09:09:56.300187
2408	644	23219	5	6950	34750	2026-03-17 09:09:56.31059	2026-03-17 09:09:56.31059
2409	644	21468	4	1760	7040	2026-03-17 09:09:56.312629	2026-03-17 09:09:56.312629
2410	644	21668	6	3250	19500	2026-03-17 09:09:56.314316	2026-03-17 09:09:56.314316
2411	645	21214	7	1215	8505	2026-03-17 09:09:56.323311	2026-03-17 09:09:56.323311
2412	645	22097	11	1984	21824	2026-03-17 09:09:56.324991	2026-03-17 09:09:56.324991
2413	645	23160	9	930	8370	2026-03-17 09:09:56.326634	2026-03-17 09:09:56.326634
2414	646	21665	2	1550	3100	2026-03-17 09:09:56.337173	2026-03-17 09:09:56.337173
2415	646	20963	12	577	6924	2026-03-17 09:09:56.339076	2026-03-17 09:09:56.339076
2416	646	21595	3	5500	16500	2026-03-17 09:09:56.340703	2026-03-17 09:09:56.340703
2417	646	21170	9	1800	16200	2026-03-17 09:09:56.342334	2026-03-17 09:09:56.342334
2418	647	22990	12	1010	12120	2026-03-17 09:09:56.353373	2026-03-17 09:09:56.353373
2419	647	21457	8	1850	14800	2026-03-17 09:09:56.355006	2026-03-17 09:09:56.355006
2420	647	21754	2	370	740	2026-03-17 09:09:56.356886	2026-03-17 09:09:56.356886
2421	647	22588	12	13180	158160	2026-03-17 09:09:56.358495	2026-03-17 09:09:56.358495
2422	647	21691	3	3769	11307	2026-03-17 09:09:56.360322	2026-03-17 09:09:56.360322
2423	648	23232	1	29400	29400	2026-03-17 09:09:56.370808	2026-03-17 09:09:56.370808
2424	648	22186	5	796	3980	2026-03-17 09:09:56.373001	2026-03-17 09:09:56.373001
2425	648	21890	11	1301	14311	2026-03-17 09:09:56.374645	2026-03-17 09:09:56.374645
2426	648	21142	7	1978	13846	2026-03-17 09:09:56.376565	2026-03-17 09:09:56.376565
2427	648	21165	8	1800	14400	2026-03-17 09:09:56.378205	2026-03-17 09:09:56.378205
2428	649	20875	2	990	1980	2026-03-17 09:09:56.386677	2026-03-17 09:09:56.386677
2429	649	22628	4	4470	17880	2026-03-17 09:09:56.38833	2026-03-17 09:09:56.38833
2430	649	23102	2	1495	2990	2026-03-17 09:09:56.389992	2026-03-17 09:09:56.389992
2431	650	21602	1	1495	1495	2026-03-17 09:09:56.39827	2026-03-17 09:09:56.39827
2432	650	20996	5	5269	26345	2026-03-17 09:09:56.399908	2026-03-17 09:09:56.399908
2433	650	21118	6	836	5016	2026-03-17 09:09:56.401523	2026-03-17 09:09:56.401523
2434	651	21710	1	1990	1990	2026-03-17 09:09:56.409807	2026-03-17 09:09:56.409807
2435	651	22004	11	8650	95150	2026-03-17 09:09:56.411451	2026-03-17 09:09:56.411451
2436	651	22001	12	2070	24840	2026-03-17 09:09:56.413121	2026-03-17 09:09:56.413121
2437	651	22116	1	2940	2940	2026-03-17 09:09:56.415279	2026-03-17 09:09:56.415279
2438	652	23313	10	3450	34500	2026-03-17 09:09:56.423758	2026-03-17 09:09:56.423758
2439	652	22455	12	6040	72480	2026-03-17 09:09:56.425423	2026-03-17 09:09:56.425423
2440	652	22567	6	4950	29700	2026-03-17 09:09:56.42775	2026-03-17 09:09:56.42775
2441	653	23031	8	2020	16160	2026-03-17 09:09:56.441636	2026-03-17 09:09:56.441636
2442	653	22360	7	1680	11760	2026-03-17 09:09:56.443318	2026-03-17 09:09:56.443318
2443	653	21144	9	1500	13500	2026-03-17 09:09:56.445357	2026-03-17 09:09:56.445357
2444	653	20831	7	5176	36232	2026-03-17 09:09:56.446972	2026-03-17 09:09:56.446972
2445	653	22630	3	6700	20100	2026-03-17 09:09:56.449309	2026-03-17 09:09:56.449309
2446	654	22920	10	299	2990	2026-03-17 09:09:56.457282	2026-03-17 09:09:56.457282
2447	654	22653	3	480	1440	2026-03-17 09:09:56.45893	2026-03-17 09:09:56.45893
2448	654	22964	8	29700	237600	2026-03-17 09:09:56.460829	2026-03-17 09:09:56.460829
2449	654	23237	1	11000	11000	2026-03-17 09:09:56.462514	2026-03-17 09:09:56.462514
2450	654	21594	12	2900	34800	2026-03-17 09:09:56.464137	2026-03-17 09:09:56.464137
2451	654	22266	6	199	1194	2026-03-17 09:09:56.46599	2026-03-17 09:09:56.46599
2452	655	21008	6	2000	12000	2026-03-17 09:09:56.480256	2026-03-17 09:09:56.480256
2453	655	21132	4	5083	20332	2026-03-17 09:09:56.482159	2026-03-17 09:09:56.482159
2454	655	23076	7	890	6230	2026-03-17 09:09:56.483775	2026-03-17 09:09:56.483775
2455	656	23178	11	1550	17050	2026-03-17 09:09:56.492785	2026-03-17 09:09:56.492785
2456	656	22519	8	7300	58400	2026-03-17 09:09:56.494432	2026-03-17 09:09:56.494432
2457	656	23157	1	74500	74500	2026-03-17 09:09:56.496056	2026-03-17 09:09:56.496056
2458	657	21009	1	2190	2190	2026-03-17 09:09:56.509959	2026-03-17 09:09:56.509959
2459	657	22599	1	8340	8340	2026-03-17 09:09:56.512596	2026-03-17 09:09:56.512596
2460	658	23330	5	500	2500	2026-03-17 09:09:56.526612	2026-03-17 09:09:56.526612
2461	658	21128	4	3013	12052	2026-03-17 09:09:56.52827	2026-03-17 09:09:56.52827
2462	658	23291	1	3650	3650	2026-03-17 09:09:56.530105	2026-03-17 09:09:56.530105
2463	658	21187	7	3700	25900	2026-03-17 09:09:56.531728	2026-03-17 09:09:56.531728
2464	658	21948	5	2325	11625	2026-03-17 09:09:56.534067	2026-03-17 09:09:56.534067
2465	658	21278	3	3212	9636	2026-03-17 09:09:56.535687	2026-03-17 09:09:56.535687
2466	659	20991	12	1280	15360	2026-03-17 09:09:56.549993	2026-03-17 09:09:56.549993
2467	659	20839	1	2600	2600	2026-03-17 09:09:56.551655	2026-03-17 09:09:56.551655
2468	659	21748	8	370	2960	2026-03-17 09:09:56.553357	2026-03-17 09:09:56.553357
2469	659	22844	9	7200	64800	2026-03-17 09:09:56.555727	2026-03-17 09:09:56.555727
2470	659	23174	12	1650	19800	2026-03-17 09:09:56.557363	2026-03-17 09:09:56.557363
2471	660	22165	10	490	4900	2026-03-17 09:09:56.568037	2026-03-17 09:09:56.568037
2472	660	23369	11	540	5940	2026-03-17 09:09:56.569686	2026-03-17 09:09:56.569686
2473	660	22279	6	186	1116	2026-03-17 09:09:56.571362	2026-03-17 09:09:56.571362
2474	660	23237	3	11000	33000	2026-03-17 09:09:56.572813	2026-03-17 09:09:56.572813
2475	661	21150	4	3199	12796	2026-03-17 09:09:56.585398	2026-03-17 09:09:56.585398
2476	661	21848	12	1495	17940	2026-03-17 09:09:56.587344	2026-03-17 09:09:56.587344
2477	661	22820	10	1180	11800	2026-03-17 09:09:56.588981	2026-03-17 09:09:56.588981
2478	662	21387	5	1055	5275	2026-03-17 09:09:56.601131	2026-03-17 09:09:56.601131
2479	662	21297	7	3900	27300	2026-03-17 09:09:56.602799	2026-03-17 09:09:56.602799
2480	662	22677	1	836	836	2026-03-17 09:09:56.605268	2026-03-17 09:09:56.605268
2481	663	22860	12	2080	24960	2026-03-17 09:09:56.611459	2026-03-17 09:09:56.611459
2482	663	21294	7	1010	7070	2026-03-17 09:09:56.613395	2026-03-17 09:09:56.613395
2483	663	22988	9	1155	10395	2026-03-17 09:09:56.61503	2026-03-17 09:09:56.61503
2484	663	23032	5	3470	17350	2026-03-17 09:09:56.616778	2026-03-17 09:09:56.616778
2485	664	23018	2	1220	2440	2026-03-17 09:09:56.623573	2026-03-17 09:09:56.623573
2486	664	22434	12	950	11400	2026-03-17 09:09:56.625226	2026-03-17 09:09:56.625226
2487	664	21013	10	2000	20000	2026-03-17 09:09:56.627346	2026-03-17 09:09:56.627346
2488	664	21293	7	1010	7070	2026-03-17 09:09:56.629021	2026-03-17 09:09:56.629021
2489	665	21296	3	1135	3405	2026-03-17 09:09:56.636897	2026-03-17 09:09:56.636897
2490	665	22479	1	4350	4350	2026-03-17 09:09:56.639438	2026-03-17 09:09:56.639438
2491	666	22732	6	4440	26640	2026-03-17 09:09:56.64735	2026-03-17 09:09:56.64735
2492	666	22229	6	3318	19908	2026-03-17 09:09:56.64931	2026-03-17 09:09:56.64931
2493	666	22835	2	1730	3460	2026-03-17 09:09:56.650968	2026-03-17 09:09:56.650968
2494	666	20832	5	9730	48650	2026-03-17 09:09:56.652869	2026-03-17 09:09:56.652869
2495	667	23198	6	540	3240	2026-03-17 09:09:56.665033	2026-03-17 09:09:56.665033
2496	667	22318	4	5250	21000	2026-03-17 09:09:56.666792	2026-03-17 09:09:56.666792
2497	667	22255	5	3590	17950	2026-03-17 09:09:56.668973	2026-03-17 09:09:56.668973
2498	667	22198	11	1300	14300	2026-03-17 09:09:56.670608	2026-03-17 09:09:56.670608
2499	668	22837	2	7300	14600	2026-03-17 09:09:56.684819	2026-03-17 09:09:56.684819
2500	668	21938	11	13150	144650	2026-03-17 09:09:56.686504	2026-03-17 09:09:56.686504
2501	668	23234	10	279	2790	2026-03-17 09:09:56.688152	2026-03-17 09:09:56.688152
2502	668	22969	9	1995	17955	2026-03-17 09:09:56.690323	2026-03-17 09:09:56.690323
2503	669	21252	5	2400	12000	2026-03-17 09:09:56.698252	2026-03-17 09:09:56.698252
2504	669	23205	1	1295	1295	2026-03-17 09:09:56.69988	2026-03-17 09:09:56.69988
2505	669	22724	4	1595	6380	2026-03-17 09:09:56.7019	2026-03-17 09:09:56.7019
2506	669	22474	11	1991	21901	2026-03-17 09:09:56.704163	2026-03-17 09:09:56.704163
2507	669	21220	10	1215	12150	2026-03-17 09:09:56.705801	2026-03-17 09:09:56.705801
2508	670	22472	11	10900	119900	2026-03-17 09:09:56.714383	2026-03-17 09:09:56.714383
2509	670	22878	12	985	11820	2026-03-17 09:09:56.716332	2026-03-17 09:09:56.716332
2510	671	22427	10	7433	74330	2026-03-17 09:09:56.724647	2026-03-17 09:09:56.724647
2511	671	22414	1	8361	8361	2026-03-17 09:09:56.726298	2026-03-17 09:09:56.726298
2512	671	21305	10	2774	27740	2026-03-17 09:09:56.72797	2026-03-17 09:09:56.72797
2513	671	21176	10	584	5840	2026-03-17 09:09:56.729612	2026-03-17 09:09:56.729612
2514	672	22496	3	1250	3750	2026-03-17 09:09:56.740227	2026-03-17 09:09:56.740227
2515	672	21901	4	33844	135376	2026-03-17 09:09:56.741885	2026-03-17 09:09:56.741885
2516	672	23065	3	2990	8970	2026-03-17 09:09:56.743503	2026-03-17 09:09:56.743503
2517	672	22388	3	3291	9873	2026-03-17 09:09:56.745869	2026-03-17 09:09:56.745869
2518	672	22265	8	49	392	2026-03-17 09:09:56.747509	2026-03-17 09:09:56.747509
2519	672	21670	3	22404	67212	2026-03-17 09:09:56.74912	2026-03-17 09:09:56.74912
2520	673	22069	3	431	1293	2026-03-17 09:09:56.755408	2026-03-17 09:09:56.755408
2521	673	22908	4	440	1760	2026-03-17 09:09:56.757297	2026-03-17 09:09:56.757297
2522	673	21500	5	1350	6750	2026-03-17 09:09:56.75895	2026-03-17 09:09:56.75895
2523	673	20934	4	1500	6000	2026-03-17 09:09:56.760581	2026-03-17 09:09:56.760581
2524	674	23223	1	2200	2200	2026-03-17 09:09:56.771384	2026-03-17 09:09:56.771384
2525	674	22448	5	4500	22500	2026-03-17 09:09:56.773025	2026-03-17 09:09:56.773025
2526	674	21965	4	240	960	2026-03-17 09:09:56.775178	2026-03-17 09:09:56.775178
2527	674	22043	1	4000	4000	2026-03-17 09:09:56.776808	2026-03-17 09:09:56.776808
2528	674	21503	8	1125	9000	2026-03-17 09:09:56.77874	2026-03-17 09:09:56.77874
2529	675	21402	6	398	2388	2026-03-17 09:09:56.786489	2026-03-17 09:09:56.786489
2530	675	21298	4	2157	8628	2026-03-17 09:09:56.78873	2026-03-17 09:09:56.78873
2531	675	23010	1	490	490	2026-03-17 09:09:56.790356	2026-03-17 09:09:56.790356
2532	675	21914	5	1447	7235	2026-03-17 09:09:56.791969	2026-03-17 09:09:56.791969
2533	675	21079	2	8190	16380	2026-03-17 09:09:56.793594	2026-03-17 09:09:56.793594
2534	676	22277	11	2256	24816	2026-03-17 09:09:56.808046	2026-03-17 09:09:56.808046
2535	676	22601	3	9240	27720	2026-03-17 09:09:56.80969	2026-03-17 09:09:56.80969
2536	677	22639	8	2750	22000	2026-03-17 09:09:56.817576	2026-03-17 09:09:56.817576
2537	677	23277	2	2690	5380	2026-03-17 09:09:56.819496	2026-03-17 09:09:56.819496
2538	677	22385	8	5282	42256	2026-03-17 09:09:56.821126	2026-03-17 09:09:56.821126
2539	678	22427	12	7433	89196	2026-03-17 09:09:56.830063	2026-03-17 09:09:56.830063
2540	678	22829	10	2990	29900	2026-03-17 09:09:56.832502	2026-03-17 09:09:56.832502
2541	679	21020	11	2740	30140	2026-03-17 09:09:56.840533	2026-03-17 09:09:56.840533
2542	679	21953	8	2690	21520	2026-03-17 09:09:56.842497	2026-03-17 09:09:56.842497
2543	679	21577	7	8361	58527	2026-03-17 09:09:56.844129	2026-03-17 09:09:56.844129
2544	679	23057	9	3560	32040	2026-03-17 09:09:56.845758	2026-03-17 09:09:56.845758
2545	679	22704	9	8950	80550	2026-03-17 09:09:56.847609	2026-03-17 09:09:56.847609
2546	679	22915	4	420	1680	2026-03-17 09:09:56.849266	2026-03-17 09:09:56.849266
2547	680	23327	11	2420	26620	2026-03-17 09:09:56.860492	2026-03-17 09:09:56.860492
2548	680	22227	5	3990	19950	2026-03-17 09:09:56.86267	2026-03-17 09:09:56.86267
2549	680	22590	1	1195	1195	2026-03-17 09:09:56.864835	2026-03-17 09:09:56.864835
2550	680	23253	1	11770	11770	2026-03-17 09:09:56.866523	2026-03-17 09:09:56.866523
2551	680	21096	5	1128	5640	2026-03-17 09:09:56.868466	2026-03-17 09:09:56.868466
2552	681	23102	7	1495	10465	2026-03-17 09:09:56.882294	2026-03-17 09:09:56.882294
2553	681	21745	2	370	740	2026-03-17 09:09:56.884244	2026-03-17 09:09:56.884244
2554	682	20891	4	4380	17520	2026-03-17 09:09:56.898571	2026-03-17 09:09:56.898571
2555	682	22207	4	750	3000	2026-03-17 09:09:56.900275	2026-03-17 09:09:56.900275
2556	682	21493	6	1295	7770	2026-03-17 09:09:56.902451	2026-03-17 09:09:56.902451
2557	682	21184	10	2800	28000	2026-03-17 09:09:56.904082	2026-03-17 09:09:56.904082
2558	683	21195	4	1600	6400	2026-03-17 09:09:56.912131	2026-03-17 09:09:56.912131
2559	683	21658	3	1540	4620	2026-03-17 09:09:56.913812	2026-03-17 09:09:56.913812
2560	683	22228	8	3990	31920	2026-03-17 09:09:56.916186	2026-03-17 09:09:56.916186
2561	683	22880	5	1215	6075	2026-03-17 09:09:56.917823	2026-03-17 09:09:56.917823
2562	683	21751	11	540	5940	2026-03-17 09:09:56.919466	2026-03-17 09:09:56.919466
2563	683	22727	8	7780	62240	2026-03-17 09:09:56.921188	2026-03-17 09:09:56.921188
2564	684	20897	5	1780	8900	2026-03-17 09:09:56.930023	2026-03-17 09:09:56.930023
2565	684	20944	5	3053	15265	2026-03-17 09:09:56.931876	2026-03-17 09:09:56.931876
2566	685	21349	1	9000	9000	2026-03-17 09:09:56.940654	2026-03-17 09:09:56.940654
2567	685	22662	12	3889	46668	2026-03-17 09:09:56.942304	2026-03-17 09:09:56.942304
2568	685	21816	7	1200	8400	2026-03-17 09:09:56.944429	2026-03-17 09:09:56.944429
2569	686	21663	11	5850	64350	2026-03-17 09:09:56.956371	2026-03-17 09:09:56.956371
2570	686	21127	6	3238	19428	2026-03-17 09:09:56.958719	2026-03-17 09:09:56.958719
2571	686	21439	2	6503	13006	2026-03-17 09:09:56.960331	2026-03-17 09:09:56.960331
2572	686	22323	4	15993	63972	2026-03-17 09:09:56.961977	2026-03-17 09:09:56.961977
2573	687	22902	5	5130	25650	2026-03-17 09:09:56.975979	2026-03-17 09:09:56.975979
2574	687	22694	1	2750	2750	2026-03-17 09:09:56.977618	2026-03-17 09:09:56.977618
2575	688	22213	3	2854	8562	2026-03-17 09:09:56.988634	2026-03-17 09:09:56.988634
2576	688	21153	11	870	9570	2026-03-17 09:09:56.990294	2026-03-17 09:09:56.990294
2577	688	22841	10	1490	14900	2026-03-17 09:09:56.992209	2026-03-17 09:09:56.992209
2578	688	22903	8	4779	38232	2026-03-17 09:09:56.993827	2026-03-17 09:09:56.993827
2579	688	22743	1	600	600	2026-03-17 09:09:56.995659	2026-03-17 09:09:56.995659
2580	689	21309	3	2250	6750	2026-03-17 09:09:57.005964	2026-03-17 09:09:57.005964
2581	689	22070	1	431	431	2026-03-17 09:09:57.008107	2026-03-17 09:09:57.008107
2582	689	22233	3	4898	14694	2026-03-17 09:09:57.009752	2026-03-17 09:09:57.009752
2583	690	21134	6	3876	23256	2026-03-17 09:09:57.018328	2026-03-17 09:09:57.018328
2584	690	21084	1	4500	4500	2026-03-17 09:09:57.020353	2026-03-17 09:09:57.020353
2585	690	21025	7	13339	93373	2026-03-17 09:09:57.022556	2026-03-17 09:09:57.022556
2586	691	21577	10	8361	83610	2026-03-17 09:09:57.030931	2026-03-17 09:09:57.030931
2587	691	22466	10	39850	398500	2026-03-17 09:09:57.03265	2026-03-17 09:09:57.03265
2588	691	21015	3	2840	8520	2026-03-17 09:09:57.034649	2026-03-17 09:09:57.034649
2589	691	22228	6	3990	23940	2026-03-17 09:09:57.036264	2026-03-17 09:09:57.036264
2590	691	20924	3	1566	4698	2026-03-17 09:09:57.038104	2026-03-17 09:09:57.038104
2591	691	21394	4	660	2640	2026-03-17 09:09:57.039718	2026-03-17 09:09:57.039718
2592	692	21168	12	2200	26400	2026-03-17 09:09:57.048623	2026-03-17 09:09:57.048623
2593	692	23053	8	1100	8800	2026-03-17 09:09:57.050837	2026-03-17 09:09:57.050837
2594	692	23328	10	790	7900	2026-03-17 09:09:57.052467	2026-03-17 09:09:57.052467
2595	692	22386	9	5500	49500	2026-03-17 09:09:57.054147	2026-03-17 09:09:57.054147
2596	692	21419	12	6371	76452	2026-03-17 09:09:57.056064	2026-03-17 09:09:57.056064
2597	692	21546	10	2750	27500	2026-03-17 09:09:57.057704	2026-03-17 09:09:57.057704
2598	693	21046	4	2950	11800	2026-03-17 09:09:57.066726	2026-03-17 09:09:57.066726
2599	693	22634	8	2893	23144	2026-03-17 09:09:57.068337	2026-03-17 09:09:57.068337
2600	693	22814	5	2000	10000	2026-03-17 09:09:57.06996	2026-03-17 09:09:57.06996
2601	693	22852	2	3250	6500	2026-03-17 09:09:57.07225	2026-03-17 09:09:57.07225
2602	694	21330	10	760	7600	2026-03-17 09:09:57.080319	2026-03-17 09:09:57.080319
2603	694	23120	6	2190	13140	2026-03-17 09:09:57.082013	2026-03-17 09:09:57.082013
2604	694	20960	1	2256	2256	2026-03-17 09:09:57.08377	2026-03-17 09:09:57.08377
2605	694	22711	4	5150	20600	2026-03-17 09:09:57.086374	2026-03-17 09:09:57.086374
2606	694	22618	7	1380	9660	2026-03-17 09:09:57.087942	2026-03-17 09:09:57.087942
2607	694	20994	4	5004	20016	2026-03-17 09:09:57.08945	2026-03-17 09:09:57.08945
2608	695	23227	4	10150	40600	2026-03-17 09:09:57.100633	2026-03-17 09:09:57.100633
2609	695	21700	1	3783	3783	2026-03-17 09:09:57.102128	2026-03-17 09:09:57.102128
2610	695	21277	8	1790	14320	2026-03-17 09:09:57.103779	2026-03-17 09:09:57.103779
2611	695	23195	7	2350	16450	2026-03-17 09:09:57.106264	2026-03-17 09:09:57.106264
2612	695	21529	8	6371	50968	2026-03-17 09:09:57.10794	2026-03-17 09:09:57.10794
2613	696	21689	8	5630	45040	2026-03-17 09:09:57.118726	2026-03-17 09:09:57.118726
2614	696	22152	2	7353	14706	2026-03-17 09:09:57.120468	2026-03-17 09:09:57.120468
2615	696	20873	6	730	4380	2026-03-17 09:09:57.122343	2026-03-17 09:09:57.122343
2616	696	21419	3	6371	19113	2026-03-17 09:09:57.124018	2026-03-17 09:09:57.124018
2617	696	20816	3	3630	10890	2026-03-17 09:09:57.126352	2026-03-17 09:09:57.126352
2618	696	23167	11	750	8250	2026-03-17 09:09:57.128011	2026-03-17 09:09:57.128011
2619	697	21172	12	1566	18792	2026-03-17 09:09:57.136086	2026-03-17 09:09:57.136086
2620	697	21120	6	850	5100	2026-03-17 09:09:57.137744	2026-03-17 09:09:57.137744
2621	697	22725	1	5780	5780	2026-03-17 09:09:57.139674	2026-03-17 09:09:57.139674
2622	697	21896	1	9928	9928	2026-03-17 09:09:57.141307	2026-03-17 09:09:57.141307
2623	697	21791	4	2880	11520	2026-03-17 09:09:57.143147	2026-03-17 09:09:57.143147
2624	697	21593	5	1590	7950	2026-03-17 09:09:57.144858	2026-03-17 09:09:57.144858
2625	698	23147	11	225	2475	2026-03-17 09:09:57.153609	2026-03-17 09:09:57.153609
2626	698	21898	8	2995	23960	2026-03-17 09:09:57.155757	2026-03-17 09:09:57.155757
2627	699	21633	5	2020	10100	2026-03-17 09:09:57.166195	2026-03-17 09:09:57.166195
2628	699	21922	6	4800	28800	2026-03-17 09:09:57.16808	2026-03-17 09:09:57.16808
2629	700	22081	9	82800	745200	2026-03-17 09:09:57.180988	2026-03-17 09:09:57.180988
2630	700	22417	4	4513	18052	2026-03-17 09:09:57.182934	2026-03-17 09:09:57.182934
2631	700	23347	4	5350	21400	2026-03-17 09:09:57.184603	2026-03-17 09:09:57.184603
2632	700	23229	1	15000	15000	2026-03-17 09:09:57.186462	2026-03-17 09:09:57.186462
2633	700	22318	10	5250	52500	2026-03-17 09:09:57.188098	2026-03-17 09:09:57.188098
2634	701	21142	5	1978	9890	2026-03-17 09:09:57.202139	2026-03-17 09:09:57.202139
2635	701	21700	3	3783	11349	2026-03-17 09:09:57.204071	2026-03-17 09:09:57.204071
2636	701	22155	5	1964	9820	2026-03-17 09:09:57.205733	2026-03-17 09:09:57.205733
2637	702	23309	2	950	1900	2026-03-17 09:09:57.216528	2026-03-17 09:09:57.216528
2638	702	21592	2	8250	16500	2026-03-17 09:09:57.218216	2026-03-17 09:09:57.218216
2639	703	23355	2	44500	89000	2026-03-17 09:09:57.224797	2026-03-17 09:09:57.224797
2640	703	22246	2	540	1080	2026-03-17 09:09:57.226443	2026-03-17 09:09:57.226443
2641	704	22458	4	11932	47728	2026-03-17 09:09:57.23475	2026-03-17 09:09:57.23475
2642	704	23081	1	2050	2050	2026-03-17 09:09:57.236382	2026-03-17 09:09:57.236382
2643	705	21284	8	2700	21600	2026-03-17 09:09:57.246877	2026-03-17 09:09:57.246877
2644	705	23212	5	10200	51000	2026-03-17 09:09:57.248518	2026-03-17 09:09:57.248518
2645	705	22217	8	1725	13800	2026-03-17 09:09:57.250341	2026-03-17 09:09:57.250341
2646	706	21917	8	3350	26800	2026-03-17 09:09:57.258444	2026-03-17 09:09:57.258444
2647	706	21604	1	3716	3716	2026-03-17 09:09:57.260077	2026-03-17 09:09:57.260077
2648	706	23004	3	1890	5670	2026-03-17 09:09:57.261709	2026-03-17 09:09:57.261709
2649	706	23110	1	2044	2044	2026-03-17 09:09:57.263857	2026-03-17 09:09:57.263857
2650	706	20891	4	4380	17520	2026-03-17 09:09:57.265544	2026-03-17 09:09:57.265544
2651	707	21539	9	3252	29268	2026-03-17 09:09:57.278274	2026-03-17 09:09:57.278274
2652	707	23349	1	63500	63500	2026-03-17 09:09:57.279904	2026-03-17 09:09:57.279904
2653	707	22104	8	4510	36080	2026-03-17 09:09:57.281539	2026-03-17 09:09:57.281539
2654	707	22062	1	5890	5890	2026-03-17 09:09:57.283681	2026-03-17 09:09:57.283681
2655	707	22083	7	82800	579600	2026-03-17 09:09:57.285315	2026-03-17 09:09:57.285315
2656	708	20841	1	2760	2760	2026-03-17 09:09:57.297802	2026-03-17 09:09:57.297802
2657	708	22300	5	431	2155	2026-03-17 09:09:57.299434	2026-03-17 09:09:57.299434
2658	709	21202	11	2750	30250	2026-03-17 09:09:57.313419	2026-03-17 09:09:57.313419
2659	709	23078	10	3750	37500	2026-03-17 09:09:57.315109	2026-03-17 09:09:57.315109
2660	709	21119	1	836	836	2026-03-17 09:09:57.316858	2026-03-17 09:09:57.316858
2661	709	21537	2	2700	5400	2026-03-17 09:09:57.31921	2026-03-17 09:09:57.31921
2662	710	21159	7	3750	26250	2026-03-17 09:09:57.332857	2026-03-17 09:09:57.332857
2663	710	22056	4	1394	5576	2026-03-17 09:09:57.334688	2026-03-17 09:09:57.334688
2664	710	20820	2	4850	9700	2026-03-17 09:09:57.336306	2026-03-17 09:09:57.336306
2665	710	22397	3	1924	5772	2026-03-17 09:09:57.338625	2026-03-17 09:09:57.338625
2666	710	22559	4	1301	5204	2026-03-17 09:09:57.340278	2026-03-17 09:09:57.340278
2667	710	21886	11	8550	94050	2026-03-17 09:09:57.342414	2026-03-17 09:09:57.342414
2668	711	23263	3	1680	5040	2026-03-17 09:09:57.356284	2026-03-17 09:09:57.356284
2669	711	21813	1	14500	14500	2026-03-17 09:09:57.3579	2026-03-17 09:09:57.3579
2670	711	21964	4	194	776	2026-03-17 09:09:57.360187	2026-03-17 09:09:57.360187
2671	712	23010	8	490	3920	2026-03-17 09:09:57.370542	2026-03-17 09:09:57.370542
2672	712	22397	12	1924	23088	2026-03-17 09:09:57.37249	2026-03-17 09:09:57.37249
2673	712	22576	1	6900	6900	2026-03-17 09:09:57.374143	2026-03-17 09:09:57.374143
2674	713	23342	1	4000	4000	2026-03-17 09:09:57.380264	2026-03-17 09:09:57.380264
2675	713	23156	1	4600	4600	2026-03-17 09:09:57.382403	2026-03-17 09:09:57.382403
2676	713	21380	4	4785	19140	2026-03-17 09:09:57.384035	2026-03-17 09:09:57.384035
2677	713	20970	6	3695	22170	2026-03-17 09:09:57.385663	2026-03-17 09:09:57.385663
2678	714	22670	1	750	750	2026-03-17 09:09:57.394569	2026-03-17 09:09:57.394569
2679	714	20904	11	7698	84678	2026-03-17 09:09:57.396195	2026-03-17 09:09:57.396195
2680	715	21149	1	1526	1526	2026-03-17 09:09:57.408321	2026-03-17 09:09:57.408321
2681	715	21200	9	785	7065	2026-03-17 09:09:57.410732	2026-03-17 09:09:57.410732
2682	715	23044	1	340	340	2026-03-17 09:09:57.412459	2026-03-17 09:09:57.412459
2683	715	21113	2	730	1460	2026-03-17 09:09:57.414463	2026-03-17 09:09:57.414463
2684	715	22674	1	750	750	2026-03-17 09:09:57.416101	2026-03-17 09:09:57.416101
2685	716	20865	4	10000	40000	2026-03-17 09:09:57.429919	2026-03-17 09:09:57.429919
2686	716	21879	9	2390	21510	2026-03-17 09:09:57.432114	2026-03-17 09:09:57.432114
2687	717	21217	11	2430	26730	2026-03-17 09:09:57.438221	2026-03-17 09:09:57.438221
2688	717	22314	2	1430	2860	2026-03-17 09:09:57.440078	2026-03-17 09:09:57.440078
2689	718	21882	3	1460	4380	2026-03-17 09:09:57.448219	2026-03-17 09:09:57.448219
2690	718	21439	2	6503	13006	2026-03-17 09:09:57.449875	2026-03-17 09:09:57.449875
2691	718	22969	7	1995	13965	2026-03-17 09:09:57.451519	2026-03-17 09:09:57.451519
2692	719	21204	1	2760	2760	2026-03-17 09:09:57.458097	2026-03-17 09:09:57.458097
2693	719	21518	7	5004	35028	2026-03-17 09:09:57.459728	2026-03-17 09:09:57.459728
2694	719	22488	2	6437	12874	2026-03-17 09:09:57.461567	2026-03-17 09:09:57.461567
2695	719	21503	3	1125	3375	2026-03-17 09:09:57.463207	2026-03-17 09:09:57.463207
2696	719	21661	11	1394	15334	2026-03-17 09:09:57.465538	2026-03-17 09:09:57.465538
2697	720	22489	11	6930	76230	2026-03-17 09:09:57.47413	2026-03-17 09:09:57.47413
2698	720	20906	1	1460	1460	2026-03-17 09:09:57.475789	2026-03-17 09:09:57.475789
2699	720	22989	9	920	8280	2026-03-17 09:09:57.477922	2026-03-17 09:09:57.477922
2700	720	22151	11	1820	20020	2026-03-17 09:09:57.479544	2026-03-17 09:09:57.479544
2701	720	21569	8	2896	23168	2026-03-17 09:09:57.481179	2026-03-17 09:09:57.481179
2702	721	23062	4	1800	7200	2026-03-17 09:09:57.495659	2026-03-17 09:09:57.495659
2703	721	22596	8	3960	31680	2026-03-17 09:09:57.497297	2026-03-17 09:09:57.497297
2704	721	22367	2	2800	5600	2026-03-17 09:09:57.499245	2026-03-17 09:09:57.499245
2705	721	22678	8	2149	17192	2026-03-17 09:09:57.500884	2026-03-17 09:09:57.500884
2706	722	22544	6	19643	117858	2026-03-17 09:09:57.50923	2026-03-17 09:09:57.50923
2707	722	21684	6	5667	34002	2026-03-17 09:09:57.510856	2026-03-17 09:09:57.510856
2708	722	22209	10	2190	21900	2026-03-17 09:09:57.512505	2026-03-17 09:09:57.512505
2709	723	21637	4	3670	14680	2026-03-17 09:09:57.523022	2026-03-17 09:09:57.523022
2710	723	21671	2	5500	11000	2026-03-17 09:09:57.52491	2026-03-17 09:09:57.52491
2711	723	23101	3	1250	3750	2026-03-17 09:09:57.526565	2026-03-17 09:09:57.526565
2712	723	22704	10	8950	89500	2026-03-17 09:09:57.528882	2026-03-17 09:09:57.528882
2713	723	20952	9	12490	112410	2026-03-17 09:09:57.530565	2026-03-17 09:09:57.530565
2714	724	22952	3	2100	6300	2026-03-17 09:09:57.541641	2026-03-17 09:09:57.541641
2715	724	20843	6	8250	49500	2026-03-17 09:09:57.543257	2026-03-17 09:09:57.543257
2716	724	21492	11	1990	21890	2026-03-17 09:09:57.545224	2026-03-17 09:09:57.545224
2717	724	22255	3	3590	10770	2026-03-17 09:09:57.547115	2026-03-17 09:09:57.547115
2718	724	23096	7	1450	10150	2026-03-17 09:09:57.548785	2026-03-17 09:09:57.548785
2719	724	21829	10	2030	20300	2026-03-17 09:09:57.551153	2026-03-17 09:09:57.551153
2720	725	22445	5	2509	12545	2026-03-17 09:09:57.563603	2026-03-17 09:09:57.563603
2721	725	22688	6	1830	10980	2026-03-17 09:09:57.565299	2026-03-17 09:09:57.565299
2722	725	22592	2	1659	3318	2026-03-17 09:09:57.566935	2026-03-17 09:09:57.566935
2723	726	20863	2	2104	4208	2026-03-17 09:09:57.580791	2026-03-17 09:09:57.580791
2724	726	23078	4	3750	15000	2026-03-17 09:09:57.58247	2026-03-17 09:09:57.58247
2725	726	21635	7	2330	16310	2026-03-17 09:09:57.584402	2026-03-17 09:09:57.584402
2726	726	23293	11	1440	15840	2026-03-17 09:09:57.586063	2026-03-17 09:09:57.586063
2727	727	20935	4	883	3532	2026-03-17 09:09:57.594443	2026-03-17 09:09:57.594443
2728	727	22726	5	7230	36150	2026-03-17 09:09:57.596083	2026-03-17 09:09:57.596083
2729	727	22229	5	3318	16590	2026-03-17 09:09:57.597733	2026-03-17 09:09:57.597733
2730	727	23172	9	4400	39600	2026-03-17 09:09:57.599363	2026-03-17 09:09:57.599363
2731	727	22621	12	7034	84408	2026-03-17 09:09:57.601515	2026-03-17 09:09:57.601515
2732	727	21429	11	982	10802	2026-03-17 09:09:57.603161	2026-03-17 09:09:57.603161
2733	728	22729	6	11150	66900	2026-03-17 09:09:57.611452	2026-03-17 09:09:57.611452
2734	728	21751	8	540	4320	2026-03-17 09:09:57.613777	2026-03-17 09:09:57.613777
2735	728	21593	7	1590	11130	2026-03-17 09:09:57.615431	2026-03-17 09:09:57.615431
2736	729	22858	5	6450	32250	2026-03-17 09:09:57.629328	2026-03-17 09:09:57.629328
2737	729	22372	3	4995	14985	2026-03-17 09:09:57.631191	2026-03-17 09:09:57.631191
2738	729	22892	3	1290	3870	2026-03-17 09:09:57.632884	2026-03-17 09:09:57.632884
2739	729	22546	9	3517	31653	2026-03-17 09:09:57.635211	2026-03-17 09:09:57.635211
2740	730	21450	8	2590	20720	2026-03-17 09:09:57.641142	2026-03-17 09:09:57.641142
2741	730	22213	11	2854	31394	2026-03-17 09:09:57.643296	2026-03-17 09:09:57.643296
2742	730	23320	7	220	1540	2026-03-17 09:09:57.644972	2026-03-17 09:09:57.644972
2743	731	22255	4	3590	14360	2026-03-17 09:09:57.659122	2026-03-17 09:09:57.659122
2744	731	23299	6	1100	6600	2026-03-17 09:09:57.660806	2026-03-17 09:09:57.660806
2745	731	22012	1	5820	5820	2026-03-17 09:09:57.662468	2026-03-17 09:09:57.662468
2746	731	23169	6	1240	7440	2026-03-17 09:09:57.664638	2026-03-17 09:09:57.664638
2747	731	22763	2	1620	3240	2026-03-17 09:09:57.666281	2026-03-17 09:09:57.666281
2748	732	21723	11	6570	72270	2026-03-17 09:09:57.672562	2026-03-17 09:09:57.672562
2749	732	22549	5	5973	29865	2026-03-17 09:09:57.67446	2026-03-17 09:09:57.67446
2750	732	22353	1	1150	1150	2026-03-17 09:09:57.676202	2026-03-17 09:09:57.676202
2751	732	23084	7	1980	13860	2026-03-17 09:09:57.678422	2026-03-17 09:09:57.678422
2752	732	22901	2	4200	8400	2026-03-17 09:09:57.680056	2026-03-17 09:09:57.680056
2753	733	21437	9	1168	10512	2026-03-17 09:09:57.688706	2026-03-17 09:09:57.688706
2754	733	21873	8	9755	78040	2026-03-17 09:09:57.690647	2026-03-17 09:09:57.690647
2755	733	23097	7	4690	32830	2026-03-17 09:09:57.69231	2026-03-17 09:09:57.69231
2756	733	23142	10	540	5400	2026-03-17 09:09:57.694164	2026-03-17 09:09:57.694164
2757	734	22819	11	3451	37961	2026-03-17 09:09:57.703148	2026-03-17 09:09:57.703148
2758	734	22344	2	1875	3750	2026-03-17 09:09:57.704792	2026-03-17 09:09:57.704792
2759	735	23002	1	830	830	2026-03-17 09:09:57.713079	2026-03-17 09:09:57.713079
2760	735	22402	12	4513	54156	2026-03-17 09:09:57.714945	2026-03-17 09:09:57.714945
2761	735	21364	3	2580	7740	2026-03-17 09:09:57.716579	2026-03-17 09:09:57.716579
2762	736	20839	1	2600	2600	2026-03-17 09:09:57.731058	2026-03-17 09:09:57.731058
2763	736	23056	6	1490	8940	2026-03-17 09:09:57.733039	2026-03-17 09:09:57.733039
2764	736	22275	5	730	3650	2026-03-17 09:09:57.7347	2026-03-17 09:09:57.7347
2765	737	22049	5	319	1595	2026-03-17 09:09:57.743571	2026-03-17 09:09:57.743571
2766	737	22206	5	1995	9975	2026-03-17 09:09:57.745241	2026-03-17 09:09:57.745241
2767	737	21013	11	2000	22000	2026-03-17 09:09:57.746908	2026-03-17 09:09:57.746908
2768	737	22643	11	431	4741	2026-03-17 09:09:57.748571	2026-03-17 09:09:57.748571
2769	738	22697	3	2390	7170	2026-03-17 09:09:57.760906	2026-03-17 09:09:57.760906
2770	738	23051	6	2190	13140	2026-03-17 09:09:57.763256	2026-03-17 09:09:57.763256
2771	738	23342	9	4000	36000	2026-03-17 09:09:57.76489	2026-03-17 09:09:57.76489
2772	738	22597	10	5950	59500	2026-03-17 09:09:57.766546	2026-03-17 09:09:57.766546
2773	738	21939	11	1261	13871	2026-03-17 09:09:57.76817	2026-03-17 09:09:57.76817
2774	739	22587	8	1950	15600	2026-03-17 09:09:57.780655	2026-03-17 09:09:57.780655
2775	739	22018	2	870	1740	2026-03-17 09:09:57.782347	2026-03-17 09:09:57.782347
2776	739	22582	2	2320	4640	2026-03-17 09:09:57.784661	2026-03-17 09:09:57.784661
2777	739	22650	1	540	540	2026-03-17 09:09:57.786311	2026-03-17 09:09:57.786311
2778	739	21251	3	2600	7800	2026-03-17 09:09:57.787932	2026-03-17 09:09:57.787932
2779	739	22204	1	1128	1128	2026-03-17 09:09:57.789555	2026-03-17 09:09:57.789555
2780	740	21846	1	1161	1161	2026-03-17 09:09:57.802067	2026-03-17 09:09:57.802067
2781	740	22613	8	212	1696	2026-03-17 09:09:57.803803	2026-03-17 09:09:57.803803
2782	740	22748	7	2450	17150	2026-03-17 09:09:57.806038	2026-03-17 09:09:57.806038
2783	741	21120	5	850	4250	2026-03-17 09:09:57.819794	2026-03-17 09:09:57.819794
2784	741	22669	2	750	1500	2026-03-17 09:09:57.821675	2026-03-17 09:09:57.821675
2785	741	21504	8	1125	9000	2026-03-17 09:09:57.823331	2026-03-17 09:09:57.823331
2786	741	21181	5	1852	9260	2026-03-17 09:09:57.825634	2026-03-17 09:09:57.825634
2787	741	20884	10	795	7950	2026-03-17 09:09:57.827309	2026-03-17 09:09:57.827309
2788	741	22434	2	950	1900	2026-03-17 09:09:57.828944	2026-03-17 09:09:57.828944
2789	742	21843	2	3150	6300	2026-03-17 09:09:57.842831	2026-03-17 09:09:57.842831
2790	742	21337	4	1550	6200	2026-03-17 09:09:57.844447	2026-03-17 09:09:57.844447
2791	742	20897	9	1780	16020	2026-03-17 09:09:57.846772	2026-03-17 09:09:57.846772
2792	742	21068	5	4552	22760	2026-03-17 09:09:57.848397	2026-03-17 09:09:57.848397
2793	743	20832	9	9730	87570	2026-03-17 09:09:57.862135	2026-03-17 09:09:57.862135
2794	743	22714	7	6500	45500	2026-03-17 09:09:57.864246	2026-03-17 09:09:57.864246
2795	744	22803	10	5890	58900	2026-03-17 09:09:57.874644	2026-03-17 09:09:57.874644
2796	744	21404	12	9500	114000	2026-03-17 09:09:57.876829	2026-03-17 09:09:57.876829
2797	745	21879	2	2390	4780	2026-03-17 09:09:57.889358	2026-03-17 09:09:57.889358
2798	745	22295	12	2309	27708	2026-03-17 09:09:57.891001	2026-03-17 09:09:57.891001
2799	745	22663	3	2600	7800	2026-03-17 09:09:57.892647	2026-03-17 09:09:57.892647
2800	745	22881	2	7500	15000	2026-03-17 09:09:57.894271	2026-03-17 09:09:57.894271
2801	745	21854	7	995	6965	2026-03-17 09:09:57.89642	2026-03-17 09:09:57.89642
2802	746	21160	11	2000	22000	2026-03-17 09:09:57.91056	2026-03-17 09:09:57.91056
2803	746	21265	12	2460	29520	2026-03-17 09:09:57.912203	2026-03-17 09:09:57.912203
2804	746	21742	4	540	2160	2026-03-17 09:09:57.913833	2026-03-17 09:09:57.913833
2805	746	21209	3	3750	11250	2026-03-17 09:09:57.91547	2026-03-17 09:09:57.91547
2806	746	22121	5	3013	15065	2026-03-17 09:09:57.917636	2026-03-17 09:09:57.917636
2807	747	23142	10	540	5400	2026-03-17 09:09:57.925619	2026-03-17 09:09:57.925619
2808	747	22463	3	1168	3504	2026-03-17 09:09:57.92725	2026-03-17 09:09:57.92725
2809	747	22156	5	2380	11900	2026-03-17 09:09:57.929105	2026-03-17 09:09:57.929105
2810	747	22951	11	13450	147950	2026-03-17 09:09:57.931344	2026-03-17 09:09:57.931344
2811	748	21810	10	465	4650	2026-03-17 09:09:57.945144	2026-03-17 09:09:57.945144
2812	748	22238	7	39900	279300	2026-03-17 09:09:57.946993	2026-03-17 09:09:57.946993
2813	749	21633	1	2020	2020	2026-03-17 09:09:57.955787	2026-03-17 09:09:57.955787
2814	749	21621	1	995	995	2026-03-17 09:09:57.957461	2026-03-17 09:09:57.957461
2815	749	22703	8	1720	13760	2026-03-17 09:09:57.9596	2026-03-17 09:09:57.9596
2816	749	22714	3	6500	19500	2026-03-17 09:09:57.961262	2026-03-17 09:09:57.961262
2817	749	23121	7	2190	15330	2026-03-17 09:09:57.962878	2026-03-17 09:09:57.962878
2818	749	21185	8	690	5520	2026-03-17 09:09:57.964783	2026-03-17 09:09:57.964783
2819	750	21043	10	2720	27200	2026-03-17 09:09:57.975351	2026-03-17 09:09:57.975351
2820	750	23321	11	670	7370	2026-03-17 09:09:57.977	2026-03-17 09:09:57.977
2821	750	23123	10	1360	13600	2026-03-17 09:09:57.978667	2026-03-17 09:09:57.978667
2822	751	21630	4	1555	6220	2026-03-17 09:09:57.992474	2026-03-17 09:09:57.992474
2823	751	23029	11	2800	30800	2026-03-17 09:09:57.994531	2026-03-17 09:09:57.994531
2824	751	22695	1	3500	3500	2026-03-17 09:09:57.996193	2026-03-17 09:09:57.996193
2825	751	22720	2	1300	2600	2026-03-17 09:09:57.997613	2026-03-17 09:09:57.997613
2826	751	22710	3	2790	8370	2026-03-17 09:09:57.999072	2026-03-17 09:09:57.999072
2827	751	21070	2	3650	7300	2026-03-17 09:09:58.000988	2026-03-17 09:09:58.000988
2828	752	21880	7	2400	16800	2026-03-17 09:09:58.011332	2026-03-17 09:09:58.011332
2829	752	22161	3	2700	8100	2026-03-17 09:09:58.013716	2026-03-17 09:09:58.013716
2830	752	22558	2	995	1990	2026-03-17 09:09:58.015403	2026-03-17 09:09:58.015403
2831	752	22523	3	2530	7590	2026-03-17 09:09:58.017057	2026-03-17 09:09:58.017057
2832	753	23126	1	11600	11600	2026-03-17 09:09:58.0251	2026-03-17 09:09:58.0251
2833	753	22698	7	2350	16450	2026-03-17 09:09:58.027095	2026-03-17 09:09:58.027095
2834	753	22841	10	1490	14900	2026-03-17 09:09:58.028782	2026-03-17 09:09:58.028782
2835	753	22163	1	1210	1210	2026-03-17 09:09:58.030714	2026-03-17 09:09:58.030714
2836	753	21725	4	3716	14864	2026-03-17 09:09:58.032353	2026-03-17 09:09:58.032353
2837	754	22081	9	82800	745200	2026-03-17 09:09:58.047137	2026-03-17 09:09:58.047137
2838	754	21465	3	1350	4050	2026-03-17 09:09:58.048772	2026-03-17 09:09:58.048772
2839	754	21889	5	32500	162500	2026-03-17 09:09:58.050407	2026-03-17 09:09:58.050407
2840	754	22610	10	7141	71410	2026-03-17 09:09:58.052237	2026-03-17 09:09:58.052237
2841	755	23139	7	540	3780	2026-03-17 09:09:58.061	2026-03-17 09:09:58.061
2842	755	22913	10	420	4200	2026-03-17 09:09:58.062657	2026-03-17 09:09:58.062657
2843	755	21528	1	2350	2350	2026-03-17 09:09:58.064966	2026-03-17 09:09:58.064966
2844	755	21949	5	4900	24500	2026-03-17 09:09:58.066598	2026-03-17 09:09:58.066598
2845	755	22338	7	1991	13937	2026-03-17 09:09:58.068534	2026-03-17 09:09:58.068534
2846	755	21984	7	9556	66892	2026-03-17 09:09:58.070191	2026-03-17 09:09:58.070191
2847	756	21524	4	2350	9400	2026-03-17 09:09:58.079302	2026-03-17 09:09:58.079302
2848	756	22502	10	4600	46000	2026-03-17 09:09:58.081079	2026-03-17 09:09:58.081079
2849	756	22837	5	7300	36500	2026-03-17 09:09:58.082731	2026-03-17 09:09:58.082731
2850	756	21262	9	2600	23400	2026-03-17 09:09:58.084388	2026-03-17 09:09:58.084388
2851	757	22080	4	392	1568	2026-03-17 09:09:58.095558	2026-03-17 09:09:58.095558
2852	757	22137	7	3895	27265	2026-03-17 09:09:58.097186	2026-03-17 09:09:58.097186
2853	757	21945	7	1080	7560	2026-03-17 09:09:58.099514	2026-03-17 09:09:58.099514
2854	757	23024	2	1550	3100	2026-03-17 09:09:58.10125	2026-03-17 09:09:58.10125
2855	758	22515	2	5500	11000	2026-03-17 09:09:58.109233	2026-03-17 09:09:58.109233
2856	758	21800	2	2960	5920	2026-03-17 09:09:58.111175	2026-03-17 09:09:58.111175
2857	758	22417	11	4513	49643	2026-03-17 09:09:58.112811	2026-03-17 09:09:58.112811
2858	759	23177	2	4800	9600	2026-03-17 09:09:58.121869	2026-03-17 09:09:58.121869
2859	759	21776	12	1195	14340	2026-03-17 09:09:58.12376	2026-03-17 09:09:58.12376
2860	759	21798	1	2760	2760	2026-03-17 09:09:58.125373	2026-03-17 09:09:58.125373
2861	759	22818	11	7280	80080	2026-03-17 09:09:58.126998	2026-03-17 09:09:58.126998
2862	759	21429	12	982	11784	2026-03-17 09:09:58.129141	2026-03-17 09:09:58.129141
2863	759	21018	8	3165	25320	2026-03-17 09:09:58.130824	2026-03-17 09:09:58.130824
2864	760	22424	2	1141	2282	2026-03-17 09:09:58.138747	2026-03-17 09:09:58.138747
2865	760	22478	6	850	5100	2026-03-17 09:09:58.140381	2026-03-17 09:09:58.140381
2866	760	22114	6	1300	7800	2026-03-17 09:09:58.142772	2026-03-17 09:09:58.142772
2867	760	21396	12	186	2232	2026-03-17 09:09:58.144392	2026-03-17 09:09:58.144392
2868	760	22193	8	2800	22400	2026-03-17 09:09:58.146076	2026-03-17 09:09:58.146076
2869	760	21655	3	883	2649	2026-03-17 09:09:58.147724	2026-03-17 09:09:58.147724
2870	761	22371	4	3074	12296	2026-03-24 08:19:41.646728	2026-03-24 08:19:41.646728
2871	762	22371	2	3074	6148	2026-04-10 17:19:03.319693	2026-04-10 17:19:03.319693
2872	762	20875	3	792	2376	2026-04-10 17:19:03.328204	2026-04-10 17:19:03.328204
2873	762	23358	3	3824	11472	2026-04-10 17:19:03.330355	2026-04-10 17:19:03.330355
2874	762	22027	2	2040	4080	2026-04-10 17:19:03.332372	2026-04-10 17:19:03.332372
2875	762	20874	3	1794	5382	2026-04-10 17:19:03.334284	2026-04-10 17:19:03.334284
2876	762	21782	3	2830	8490	2026-04-10 17:19:03.336448	2026-04-10 17:19:03.336448
2877	762	22029	3	510	1530	2026-04-10 17:19:03.338206	2026-04-10 17:19:03.338206
2878	762	22308	1	11784	11784	2026-04-10 17:19:03.34034	2026-04-10 17:19:03.34034
2879	762	22064	1	3360	3360	2026-04-10 17:19:03.342264	2026-04-10 17:19:03.342264
2880	762	21912	1	712	712	2026-04-10 17:19:03.344171	2026-04-10 17:19:03.344171
2881	763	22820	1	944	944	2026-04-10 17:23:18.02918	2026-04-10 17:23:18.02918
2882	763	20875	1	792	792	2026-04-10 17:23:18.031688	2026-04-10 17:23:18.031688
2883	763	23177	1	3840	3840	2026-04-10 17:23:18.033767	2026-04-10 17:23:18.033767
2884	763	22029	1	510	510	2026-04-10 17:23:18.035576	2026-04-10 17:23:18.035576
2885	764	22371	4	3074	12296	2026-06-30 15:17:58.123836	2026-06-30 15:17:58.123836
\.


--
-- Data for Name: order_status_histories; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.order_status_histories (id, order_id, changed_by_id, from_status, to_status, note, created_at, updated_at) FROM stdin;
974	561	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.063227	2026-03-17 09:09:55.063227
975	561	176	2	4	Započeta priprema robe.	2026-03-17 09:09:55.066619	2026-03-17 09:09:55.066619
976	562	210	0	7	Narudžba otkazana.	2026-03-17 09:09:55.084892	2026-03-17 09:09:55.084892
977	563	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.097898	2026-03-17 09:09:55.097898
978	563	176	2	4	Započeta priprema robe.	2026-03-17 09:09:55.099702	2026-03-17 09:09:55.099702
979	566	201	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.149527	2026-03-17 09:09:55.149527
980	567	176	1	3	Narudžba odbijena.	2026-03-17 09:09:55.165173	2026-03-17 09:09:55.165173
981	568	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.18319	2026-03-17 09:09:55.18319
982	568	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.185351	2026-03-17 09:09:55.185351
983	568	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.187172	2026-03-17 09:09:55.187172
984	568	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.188765	2026-03-17 09:09:55.188765
985	569	197	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.200735	2026-03-17 09:09:55.200735
986	570	211	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.216151	2026-03-17 09:09:55.216151
987	572	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.238556	2026-03-17 09:09:55.238556
988	573	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.250954	2026-03-17 09:09:55.250954
989	573	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.25258	2026-03-17 09:09:55.25258
990	573	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.254457	2026-03-17 09:09:55.254457
991	573	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.256779	2026-03-17 09:09:55.256779
992	574	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.272455	2026-03-17 09:09:55.272455
993	574	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.274066	2026-03-17 09:09:55.274066
994	574	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.276345	2026-03-17 09:09:55.276345
995	575	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.286818	2026-03-17 09:09:55.286818
996	575	176	2	4	Započeta priprema robe.	2026-03-17 09:09:55.2887	2026-03-17 09:09:55.2887
997	576	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.305861	2026-03-17 09:09:55.305861
998	576	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.30748	2026-03-17 09:09:55.30748
999	576	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.309345	2026-03-17 09:09:55.309345
1000	576	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.311004	2026-03-17 09:09:55.311004
1001	578	176	1	3	Narudžba odbijena.	2026-03-17 09:09:55.332958	2026-03-17 09:09:55.332958
1002	580	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.366249	2026-03-17 09:09:55.366249
1003	583	214	0	7	Narudžba otkazana.	2026-03-17 09:09:55.404868	2026-03-17 09:09:55.404868
1004	584	187	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.419874	2026-03-17 09:09:55.419874
1005	585	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.430507	2026-03-17 09:09:55.430507
1006	586	216	0	7	Narudžba otkazana.	2026-03-17 09:09:55.444197	2026-03-17 09:09:55.444197
1007	587	219	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.45804	2026-03-17 09:09:55.45804
1008	589	196	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.481466	2026-03-17 09:09:55.481466
1009	590	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.49408	2026-03-17 09:09:55.49408
1010	590	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.495722	2026-03-17 09:09:55.495722
1011	590	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.497869	2026-03-17 09:09:55.497869
1012	590	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.49948	2026-03-17 09:09:55.49948
1013	591	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.509558	2026-03-17 09:09:55.509558
1014	591	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.511891	2026-03-17 09:09:55.511891
1015	591	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.513564	2026-03-17 09:09:55.513564
1016	592	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.528174	2026-03-17 09:09:55.528174
1017	593	179	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.539676	2026-03-17 09:09:55.539676
1018	594	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.554451	2026-03-17 09:09:55.554451
1019	594	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.556071	2026-03-17 09:09:55.556071
1020	594	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.557675	2026-03-17 09:09:55.557675
1021	594	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.559261	2026-03-17 09:09:55.559261
1022	595	216	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.570331	2026-03-17 09:09:55.570331
1023	596	201	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.583954	2026-03-17 09:09:55.583954
1024	597	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.601805	2026-03-17 09:09:55.601805
1025	597	176	2	4	Započeta priprema robe.	2026-03-17 09:09:55.603893	2026-03-17 09:09:55.603893
1026	598	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.618037	2026-03-17 09:09:55.618037
1027	599	203	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.627936	2026-03-17 09:09:55.627936
1028	600	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.643728	2026-03-17 09:09:55.643728
1029	600	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.645883	2026-03-17 09:09:55.645883
1030	600	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.647492	2026-03-17 09:09:55.647492
1031	600	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.649098	2026-03-17 09:09:55.649098
1032	601	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.66023	2026-03-17 09:09:55.66023
1033	602	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.670527	2026-03-17 09:09:55.670527
1034	603	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.688414	2026-03-17 09:09:55.688414
1035	603	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.690026	2026-03-17 09:09:55.690026
1036	603	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.691612	2026-03-17 09:09:55.691612
1037	604	202	0	7	Narudžba otkazana.	2026-03-17 09:09:55.703563	2026-03-17 09:09:55.703563
1038	605	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.714228	2026-03-17 09:09:55.714228
1039	605	176	2	4	Započeta priprema robe.	2026-03-17 09:09:55.715855	2026-03-17 09:09:55.715855
1040	606	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.733106	2026-03-17 09:09:55.733106
1041	606	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.734767	2026-03-17 09:09:55.734767
1042	606	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.736678	2026-03-17 09:09:55.736678
1043	606	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.738338	2026-03-17 09:09:55.738338
1044	607	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.750676	2026-03-17 09:09:55.750676
1045	607	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.75278	2026-03-17 09:09:55.75278
1046	607	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.75439	2026-03-17 09:09:55.75439
1047	607	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.756011	2026-03-17 09:09:55.756011
1048	608	214	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.771188	2026-03-17 09:09:55.771188
1049	610	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.799424	2026-03-17 09:09:55.799424
1050	610	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.801052	2026-03-17 09:09:55.801052
1051	610	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.802868	2026-03-17 09:09:55.802868
1052	611	176	1	3	Narudžba odbijena.	2026-03-17 09:09:55.81429	2026-03-17 09:09:55.81429
1053	612	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.825101	2026-03-17 09:09:55.825101
1054	612	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.826705	2026-03-17 09:09:55.826705
1055	612	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.828995	2026-03-17 09:09:55.828995
1056	612	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.830607	2026-03-17 09:09:55.830607
1057	613	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.841124	2026-03-17 09:09:55.841124
1058	613	176	2	4	Započeta priprema robe.	2026-03-17 09:09:55.842732	2026-03-17 09:09:55.842732
1059	614	178	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.861105	2026-03-17 09:09:55.861105
1060	615	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.875398	2026-03-17 09:09:55.875398
1061	616	223	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.886968	2026-03-17 09:09:55.886968
1062	617	176	1	3	Narudžba odbijena.	2026-03-17 09:09:55.900282	2026-03-17 09:09:55.900282
1063	618	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.918546	2026-03-17 09:09:55.918546
1064	618	176	2	4	Započeta priprema robe.	2026-03-17 09:09:55.920172	2026-03-17 09:09:55.920172
1065	619	189	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.937537	2026-03-17 09:09:55.937537
1066	620	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.954847	2026-03-17 09:09:55.954847
1067	621	224	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:55.96878	2026-03-17 09:09:55.96878
1068	622	176	1	2	Narudžba odobrena.	2026-03-17 09:09:55.983423	2026-03-17 09:09:55.983423
1069	622	176	2	4	Roba u pripremi.	2026-03-17 09:09:55.985065	2026-03-17 09:09:55.985065
1070	622	176	4	5	Narudžba poslana.	2026-03-17 09:09:55.987196	2026-03-17 09:09:55.987196
1071	622	176	5	6	Narudžba isporučena.	2026-03-17 09:09:55.988818	2026-03-17 09:09:55.988818
1072	623	189	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.002987	2026-03-17 09:09:56.002987
1073	624	176	1	3	Narudžba odbijena.	2026-03-17 09:09:56.018275	2026-03-17 09:09:56.018275
1074	625	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.033222	2026-03-17 09:09:56.033222
1075	626	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.047523	2026-03-17 09:09:56.047523
1076	627	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.061984	2026-03-17 09:09:56.061984
1077	627	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.064345	2026-03-17 09:09:56.064345
1078	628	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.080027	2026-03-17 09:09:56.080027
1079	629	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.094629	2026-03-17 09:09:56.094629
1080	629	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.096249	2026-03-17 09:09:56.096249
1081	629	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.098114	2026-03-17 09:09:56.098114
1082	629	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.099758	2026-03-17 09:09:56.099758
1083	630	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.113705	2026-03-17 09:09:56.113705
1084	631	192	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.125719	2026-03-17 09:09:56.125719
1085	633	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.15429	2026-03-17 09:09:56.15429
1086	634	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.168325	2026-03-17 09:09:56.168325
1087	634	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.17006	2026-03-17 09:09:56.17006
1088	634	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.172272	2026-03-17 09:09:56.172272
1089	634	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.173881	2026-03-17 09:09:56.173881
1090	636	217	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.195744	2026-03-17 09:09:56.195744
1091	637	199	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.21073	2026-03-17 09:09:56.21073
1092	638	198	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.220538	2026-03-17 09:09:56.220538
1093	639	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.231165	2026-03-17 09:09:56.231165
1094	639	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.232849	2026-03-17 09:09:56.232849
1095	639	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.235214	2026-03-17 09:09:56.235214
1096	640	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.246688	2026-03-17 09:09:56.246688
1097	640	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.248644	2026-03-17 09:09:56.248644
1098	640	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.250573	2026-03-17 09:09:56.250573
1099	640	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.252449	2026-03-17 09:09:56.252449
1100	641	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.267214	2026-03-17 09:09:56.267214
1101	641	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.2689	2026-03-17 09:09:56.2689
1102	641	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.270879	2026-03-17 09:09:56.270879
1103	642	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.28889	2026-03-17 09:09:56.28889
1104	642	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.290799	2026-03-17 09:09:56.290799
1105	643	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.304932	2026-03-17 09:09:56.304932
1106	643	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.306596	2026-03-17 09:09:56.306596
1107	644	210	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.31917	2026-03-17 09:09:56.31917
1108	645	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.331816	2026-03-17 09:09:56.331816
1109	645	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.333428	2026-03-17 09:09:56.333428
1110	646	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.347816	2026-03-17 09:09:56.347816
1111	646	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.349445	2026-03-17 09:09:56.349445
1112	647	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.36566	2026-03-17 09:09:56.36566
1113	647	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.36737	2026-03-17 09:09:56.36737
1114	648	209	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.382549	2026-03-17 09:09:56.382549
1115	649	224	0	7	Narudžba otkazana.	2026-03-17 09:09:56.394544	2026-03-17 09:09:56.394544
1116	650	185	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.405682	2026-03-17 09:09:56.405682
1117	651	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.420171	2026-03-17 09:09:56.420171
1118	652	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.432554	2026-03-17 09:09:56.432554
1119	652	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.434192	2026-03-17 09:09:56.434192
1120	652	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.436337	2026-03-17 09:09:56.436337
1121	652	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.437948	2026-03-17 09:09:56.437948
1122	653	176	1	3	Narudžba odbijena.	2026-03-17 09:09:56.453342	2026-03-17 09:09:56.453342
1123	654	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.47137	2026-03-17 09:09:56.47137
1124	654	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.473034	2026-03-17 09:09:56.473034
1125	654	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.474628	2026-03-17 09:09:56.474628
1126	654	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.476256	2026-03-17 09:09:56.476256
1127	655	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.488667	2026-03-17 09:09:56.488667
1128	656	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.501243	2026-03-17 09:09:56.501243
1129	656	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.503169	2026-03-17 09:09:56.503169
1130	656	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.504762	2026-03-17 09:09:56.504762
1131	656	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.506355	2026-03-17 09:09:56.506355
1132	657	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.517364	2026-03-17 09:09:56.517364
1133	657	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.518996	2026-03-17 09:09:56.518996
1134	657	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.52128	2026-03-17 09:09:56.52128
1135	657	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.522873	2026-03-17 09:09:56.522873
1136	658	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.540482	2026-03-17 09:09:56.540482
1137	658	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.542752	2026-03-17 09:09:56.542752
1138	658	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.54435	2026-03-17 09:09:56.54435
1139	658	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.546255	2026-03-17 09:09:56.546255
1140	659	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.562719	2026-03-17 09:09:56.562719
1141	659	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.564347	2026-03-17 09:09:56.564347
1142	660	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.578079	2026-03-17 09:09:56.578079
1143	660	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.579836	2026-03-17 09:09:56.579836
1144	660	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.581447	2026-03-17 09:09:56.581447
1145	661	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.593808	2026-03-17 09:09:56.593808
1146	661	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.59551	2026-03-17 09:09:56.59551
1147	661	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.59772	2026-03-17 09:09:56.59772
1148	664	217	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.633264	2026-03-17 09:09:56.633264
1149	665	176	1	3	Narudžba odbijena.	2026-03-17 09:09:56.643446	2026-03-17 09:09:56.643446
1150	666	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.657692	2026-03-17 09:09:56.657692
1151	666	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.659297	2026-03-17 09:09:56.659297
1152	666	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.661634	2026-03-17 09:09:56.661634
1153	667	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.6756	2026-03-17 09:09:56.6756
1154	667	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.677417	2026-03-17 09:09:56.677417
1155	667	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.679063	2026-03-17 09:09:56.679063
1156	667	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.680659	2026-03-17 09:09:56.680659
1157	668	198	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.694617	2026-03-17 09:09:56.694617
1158	669	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.71097	2026-03-17 09:09:56.71097
1159	670	193	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.72058	2026-03-17 09:09:56.72058
1160	671	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.73473	2026-03-17 09:09:56.73473
1161	671	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.736634	2026-03-17 09:09:56.736634
1162	673	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.765514	2026-03-17 09:09:56.765514
1163	673	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.76771	2026-03-17 09:09:56.76771
1164	674	223	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.782977	2026-03-17 09:09:56.782977
1165	675	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.799059	2026-03-17 09:09:56.799059
1166	675	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.800684	2026-03-17 09:09:56.800684
1167	675	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.802272	2026-03-17 09:09:56.802272
1168	675	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.803973	2026-03-17 09:09:56.803973
1169	676	194	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.81368	2026-03-17 09:09:56.81368
1170	677	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.825975	2026-03-17 09:09:56.825975
1171	678	179	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:56.836513	2026-03-17 09:09:56.836513
1172	679	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.854911	2026-03-17 09:09:56.854911
1173	679	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.856554	2026-03-17 09:09:56.856554
1174	680	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.873508	2026-03-17 09:09:56.873508
1175	680	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.875022	2026-03-17 09:09:56.875022
1176	680	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.876592	2026-03-17 09:09:56.876592
1177	680	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.87823	2026-03-17 09:09:56.87823
1178	681	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.889551	2026-03-17 09:09:56.889551
1179	681	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.891185	2026-03-17 09:09:56.891185
1180	681	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.892838	2026-03-17 09:09:56.892838
1181	681	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.895152	2026-03-17 09:09:56.895152
1182	682	221	0	7	Narudžba otkazana.	2026-03-17 09:09:56.908456	2026-03-17 09:09:56.908456
1183	683	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.926376	2026-03-17 09:09:56.926376
1184	684	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.93723	2026-03-17 09:09:56.93723
1185	685	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.949319	2026-03-17 09:09:56.949319
1186	685	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.950934	2026-03-17 09:09:56.950934
1187	685	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.952736	2026-03-17 09:09:56.952736
1188	686	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.967163	2026-03-17 09:09:56.967163
1189	686	176	2	4	Roba u pripremi.	2026-03-17 09:09:56.968807	2026-03-17 09:09:56.968807
1190	686	176	4	5	Narudžba poslana.	2026-03-17 09:09:56.9707	2026-03-17 09:09:56.9707
1191	686	176	5	6	Narudžba isporučena.	2026-03-17 09:09:56.972297	2026-03-17 09:09:56.972297
1192	687	176	1	2	Narudžba odobrena.	2026-03-17 09:09:56.983098	2026-03-17 09:09:56.983098
1193	687	176	2	4	Započeta priprema robe.	2026-03-17 09:09:56.984719	2026-03-17 09:09:56.984719
1194	688	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.000953	2026-03-17 09:09:57.000953
1195	688	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.002575	2026-03-17 09:09:57.002575
1196	689	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.014728	2026-03-17 09:09:57.014728
1197	690	180	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.026773	2026-03-17 09:09:57.026773
1198	691	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.045119	2026-03-17 09:09:57.045119
1199	692	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.062571	2026-03-17 09:09:57.062571
1200	693	178	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.076567	2026-03-17 09:09:57.076567
1201	694	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.094046	2026-03-17 09:09:57.094046
1202	694	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.09557	2026-03-17 09:09:57.09557
1203	694	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.097339	2026-03-17 09:09:57.097339
1204	695	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.113427	2026-03-17 09:09:57.113427
1205	695	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.115158	2026-03-17 09:09:57.115158
1206	696	176	1	3	Narudžba odbijena.	2026-03-17 09:09:57.132157	2026-03-17 09:09:57.132157
1207	697	199	0	7	Narudžba otkazana.	2026-03-17 09:09:57.150077	2026-03-17 09:09:57.150077
1208	698	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.160945	2026-03-17 09:09:57.160945
1209	698	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.162572	2026-03-17 09:09:57.162572
1210	699	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.17368	2026-03-17 09:09:57.17368
1211	699	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.175358	2026-03-17 09:09:57.175358
1212	699	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.177031	2026-03-17 09:09:57.177031
1213	700	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.193353	2026-03-17 09:09:57.193353
1214	700	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.194952	2026-03-17 09:09:57.194952
1215	700	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.19657	2026-03-17 09:09:57.19657
1216	700	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.198697	2026-03-17 09:09:57.198697
1217	701	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.210807	2026-03-17 09:09:57.210807
1218	701	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.213124	2026-03-17 09:09:57.213124
1219	703	214	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.230641	2026-03-17 09:09:57.230641
1220	704	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.240979	2026-03-17 09:09:57.240979
1221	704	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.243185	2026-03-17 09:09:57.243185
1222	705	182	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.255028	2026-03-17 09:09:57.255028
1223	706	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.270461	2026-03-17 09:09:57.270461
1224	706	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.27227	2026-03-17 09:09:57.27227
1225	706	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.273886	2026-03-17 09:09:57.273886
1226	707	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.290155	2026-03-17 09:09:57.290155
1227	707	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.292103	2026-03-17 09:09:57.292103
1228	707	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.293704	2026-03-17 09:09:57.293704
1229	708	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.304075	2026-03-17 09:09:57.304075
1230	708	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.306249	2026-03-17 09:09:57.306249
1231	708	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.307881	2026-03-17 09:09:57.307881
1232	708	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.309807	2026-03-17 09:09:57.309807
1233	709	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.323907	2026-03-17 09:09:57.323907
1234	709	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.32602	2026-03-17 09:09:57.32602
1235	709	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.327632	2026-03-17 09:09:57.327632
1236	709	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.329214	2026-03-17 09:09:57.329214
1237	710	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.347636	2026-03-17 09:09:57.347636
1238	710	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.349275	2026-03-17 09:09:57.349275
1239	710	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.35117	2026-03-17 09:09:57.35117
1240	710	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.352741	2026-03-17 09:09:57.352741
1241	711	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.364905	2026-03-17 09:09:57.364905
1242	711	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.366568	2026-03-17 09:09:57.366568
1243	713	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.390892	2026-03-17 09:09:57.390892
1244	714	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.400965	2026-03-17 09:09:57.400965
1245	714	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.40328	2026-03-17 09:09:57.40328
1246	714	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.404876	2026-03-17 09:09:57.404876
1247	715	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.420979	2026-03-17 09:09:57.420979
1248	715	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.422708	2026-03-17 09:09:57.422708
1249	715	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.424913	2026-03-17 09:09:57.424913
1250	715	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.426521	2026-03-17 09:09:57.426521
1251	717	176	1	3	Narudžba odbijena.	2026-03-17 09:09:57.444181	2026-03-17 09:09:57.444181
1252	719	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.470215	2026-03-17 09:09:57.470215
1253	720	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.486248	2026-03-17 09:09:57.486248
1254	720	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.488516	2026-03-17 09:09:57.488516
1255	720	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.490122	2026-03-17 09:09:57.490122
1256	720	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.491719	2026-03-17 09:09:57.491719
1257	721	213	0	7	Narudžba otkazana.	2026-03-17 09:09:57.505112	2026-03-17 09:09:57.505112
1258	722	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.517729	2026-03-17 09:09:57.517729
1259	722	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.519363	2026-03-17 09:09:57.519363
1260	723	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.535562	2026-03-17 09:09:57.535562
1261	723	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.537882	2026-03-17 09:09:57.537882
1262	724	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.555926	2026-03-17 09:09:57.555926
1263	724	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.557585	2026-03-17 09:09:57.557585
1264	724	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.559819	2026-03-17 09:09:57.559819
1265	725	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.571985	2026-03-17 09:09:57.571985
1266	725	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.57429	2026-03-17 09:09:57.57429
1267	725	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.575761	2026-03-17 09:09:57.575761
1268	725	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.577182	2026-03-17 09:09:57.577182
1269	726	180	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.590302	2026-03-17 09:09:57.590302
1270	727	182	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.607531	2026-03-17 09:09:57.607531
1271	728	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.620171	2026-03-17 09:09:57.620171
1272	728	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.622336	2026-03-17 09:09:57.622336
1273	728	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.623949	2026-03-17 09:09:57.623949
1274	728	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.62557	2026-03-17 09:09:57.62557
1275	730	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.649941	2026-03-17 09:09:57.649941
1276	730	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.651767	2026-03-17 09:09:57.651767
1277	730	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.65338	2026-03-17 09:09:57.65338
1278	730	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.654977	2026-03-17 09:09:57.654977
1279	732	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.685254	2026-03-17 09:09:57.685254
1280	733	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.699664	2026-03-17 09:09:57.699664
1281	734	184	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.709361	2026-03-17 09:09:57.709361
1282	735	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.722229	2026-03-17 09:09:57.722229
1283	735	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.723905	2026-03-17 09:09:57.723905
1284	735	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.72554	2026-03-17 09:09:57.72554
1285	735	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.727153	2026-03-17 09:09:57.727153
1286	736	182	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.739416	2026-03-17 09:09:57.739416
1287	737	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.75403	2026-03-17 09:09:57.75403
1288	737	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.755659	2026-03-17 09:09:57.755659
1289	737	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.757279	2026-03-17 09:09:57.757279
1290	738	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.773444	2026-03-17 09:09:57.773444
1291	738	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.775396	2026-03-17 09:09:57.775396
1292	738	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.777001	2026-03-17 09:09:57.777001
1293	739	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.794711	2026-03-17 09:09:57.794711
1294	739	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.796592	2026-03-17 09:09:57.796592
1295	739	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.798189	2026-03-17 09:09:57.798189
1296	740	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.810755	2026-03-17 09:09:57.810755
1297	740	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.81286	2026-03-17 09:09:57.81286
1298	740	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.814527	2026-03-17 09:09:57.814527
1299	740	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.816133	2026-03-17 09:09:57.816133
1300	741	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.834102	2026-03-17 09:09:57.834102
1301	741	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.835731	2026-03-17 09:09:57.835731
1302	741	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.83762	2026-03-17 09:09:57.83762
1303	741	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.839209	2026-03-17 09:09:57.839209
1304	742	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.853219	2026-03-17 09:09:57.853219
1305	742	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.855313	2026-03-17 09:09:57.855313
1306	742	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.856925	2026-03-17 09:09:57.856925
1307	742	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.85873	2026-03-17 09:09:57.85873
1308	743	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.869617	2026-03-17 09:09:57.869617
1309	743	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.871227	2026-03-17 09:09:57.871227
1310	744	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.881722	2026-03-17 09:09:57.881722
1311	744	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.883327	2026-03-17 09:09:57.883327
1312	744	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.885131	2026-03-17 09:09:57.885131
1313	745	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.90143	2026-03-17 09:09:57.90143
1314	745	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.903032	2026-03-17 09:09:57.903032
1315	745	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.904824	2026-03-17 09:09:57.904824
1316	745	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.906431	2026-03-17 09:09:57.906431
1317	746	221	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:57.921965	2026-03-17 09:09:57.921965
1318	747	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.936087	2026-03-17 09:09:57.936087
1319	747	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.937703	2026-03-17 09:09:57.937703
1320	747	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.939839	2026-03-17 09:09:57.939839
1321	747	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.941434	2026-03-17 09:09:57.941434
1322	748	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.95234	2026-03-17 09:09:57.95234
1323	749	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.969629	2026-03-17 09:09:57.969629
1324	749	176	2	4	Započeta priprema robe.	2026-03-17 09:09:57.971229	2026-03-17 09:09:57.971229
1325	750	176	1	2	Narudžba odobrena.	2026-03-17 09:09:57.984019	2026-03-17 09:09:57.984019
1326	750	176	2	4	Roba u pripremi.	2026-03-17 09:09:57.985941	2026-03-17 09:09:57.985941
1327	750	176	4	5	Narudžba poslana.	2026-03-17 09:09:57.987544	2026-03-17 09:09:57.987544
1328	750	176	5	6	Narudžba isporučena.	2026-03-17 09:09:57.989218	2026-03-17 09:09:57.989218
1329	751	176	1	2	Narudžba odobrena.	2026-03-17 09:09:58.005957	2026-03-17 09:09:58.005957
1330	751	176	2	4	Započeta priprema robe.	2026-03-17 09:09:58.007597	2026-03-17 09:09:58.007597
1331	752	214	0	7	Narudžba otkazana.	2026-03-17 09:09:58.021597	2026-03-17 09:09:58.021597
1332	753	176	1	2	Narudžba odobrena.	2026-03-17 09:09:58.037958	2026-03-17 09:09:58.037958
1333	753	176	2	4	Roba u pripremi.	2026-03-17 09:09:58.039622	2026-03-17 09:09:58.039622
1334	753	176	4	5	Narudžba poslana.	2026-03-17 09:09:58.041241	2026-03-17 09:09:58.041241
1335	753	176	5	6	Narudžba isporučena.	2026-03-17 09:09:58.043419	2026-03-17 09:09:58.043419
1336	754	185	0	7	Narudžba otkazana.	2026-03-17 09:09:58.057228	2026-03-17 09:09:58.057228
1337	755	176	1	2	Narudžba odobrena.	2026-03-17 09:09:58.075117	2026-03-17 09:09:58.075117
1338	756	176	1	2	Narudžba odobrena.	2026-03-17 09:09:58.090195	2026-03-17 09:09:58.090195
1339	756	176	2	4	Započeta priprema robe.	2026-03-17 09:09:58.091842	2026-03-17 09:09:58.091842
1340	757	176	1	3	Narudžba odbijena.	2026-03-17 09:09:58.105299	2026-03-17 09:09:58.105299
1341	758	176	1	2	Narudžba odobrena.	2026-03-17 09:09:58.117764	2026-03-17 09:09:58.117764
1342	759	189	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:58.135138	2026-03-17 09:09:58.135138
1343	760	227	0	1	Narudžba poslana od strane partnera.	2026-03-17 09:09:58.152329	2026-03-17 09:09:58.152329
1344	616	177	1	2	\N	2026-03-24 08:12:19.984615	2026-03-24 08:12:19.984615
1345	616	177	2	4	\N	2026-03-24 08:12:31.191822	2026-03-24 08:12:31.191822
1346	616	177	4	5	\N	2026-03-24 08:12:40.600224	2026-03-24 08:12:40.600224
1347	616	177	5	6	\N	2026-03-24 08:12:46.837098	2026-03-24 08:12:46.837098
1348	693	177	1	2	\N	2026-03-24 08:13:49.715327	2026-03-24 08:13:49.715327
1349	599	177	1	2	\N	2026-04-11 18:23:22.014586	2026-04-11 18:23:22.014586
1350	614	177	1	2	\N	2026-05-05 10:50:50.617446	2026-05-05 10:50:50.617446
1351	631	177	1	2	\N	2026-06-30 15:10:24.171508	2026-06-30 15:10:24.171508
1352	631	177	2	4	\N	2026-06-30 15:10:31.757414	2026-06-30 15:10:31.757414
1353	631	177	4	5	\N	2026-06-30 15:10:34.716761	2026-06-30 15:10:34.716761
1354	631	177	5	6	\N	2026-06-30 15:10:39.666148	2026-06-30 15:10:39.666148
1355	593	177	1	2	\N	2026-06-30 15:11:18.649609	2026-06-30 15:11:18.649609
1356	593	177	2	4	\N	2026-06-30 15:11:19.51754	2026-06-30 15:11:19.51754
1357	593	177	4	5	\N	2026-06-30 15:11:20.105923	2026-06-30 15:11:20.105923
1358	593	177	5	6	\N	2026-06-30 15:11:20.824511	2026-06-30 15:11:20.824511
1359	764	178	0	1	Partner poslao narudžbu	2026-06-30 15:18:34.169637	2026-06-30 15:18:34.169637
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.orders (id, company_id, created_by_id, status, total_cents, notes, created_at, updated_at, subtotal_cents, discount_cents, vat_cents, due_date, paid_at, approved_at, delivered_at, delivery_address) FROM stdin;
561	166	193	4	119141	\N	2026-03-14 09:09:55.017378	2026-03-17 09:09:55.057086	100330	5017	23828	\N	\N	2026-03-15 09:09:55.017378	\N	Ulica Ivana Kukuljevića 9, 42000 Varaždin
562	183	210	7	214861	Kontaktirati prije dostave.	2026-02-22 09:09:55.068503	2026-03-17 09:09:55.083396	202222	30333	42972	\N	\N	\N	\N	Koprivnička 30, 42000 Varaždin
580	165	192	2	46920	Isporuka u jutarnjim satima.	2026-03-01 09:09:55.349976	2026-03-17 09:09:55.365495	41707	4171	9384	\N	\N	2026-03-03 09:09:55.349976	\N	Radićeva 27, 10000 Zagreb
563	199	226	4	51255	Adresa dostave: Trg slobode 3, 31000 Osijek	2025-12-11 09:09:55.088584	2026-03-17 09:09:55.097171	41004	0	10251	\N	\N	2025-12-13 09:09:55.088584	\N	Trg slobode 3, 31000 Osijek
564	170	197	0	128886	Isporuka na stražnji ulaz objekta.	2026-02-21 09:09:55.102283	2026-03-17 09:09:55.118339	114566	11457	25777	\N	\N	\N	\N	Ante Starčevića 14, 23000 Zadar
565	188	215	0	54590	Račun poslati elektroničkom poštom.	2026-01-25 09:09:55.11969	2026-03-17 09:09:55.130558	48524	4852	10918	\N	\N	\N	\N	Kumičićeva 16, 51000 Rijeka
566	174	201	1	98895	Kontaktirati prije dostave.	2025-12-16 09:09:55.131898	2026-03-17 09:09:55.147261	93078	13962	19779	\N	\N	\N	\N	Trakošćanska 11, 42000 Varaždin
567	192	219	3	681989	Standardna veleprodajna narudžba.	2026-02-04 09:09:55.151303	2026-03-17 09:09:55.16359	545591	0	136398	\N	\N	\N	\N	Gajeva 18, 10000 Zagreb
568	180	207	6	117099	Kontaktirati prije dostave.	2025-12-02 09:09:55.166734	2026-03-17 09:09:55.18245	104088	10409	23420	\N	2025-12-17 09:09:55.166734	2025-12-04 09:09:55.166734	2025-12-07 09:09:55.166734	Bakačeva 9, 10000 Zagreb
569	170	197	1	66848	Molimo pažljivo zapakirati artikle.	2025-12-25 09:09:55.190302	2026-03-17 09:09:55.199348	59420	5942	13370	\N	\N	\N	\N	Ante Starčevića 14, 23000 Zadar
570	184	211	1	64525	Standardna veleprodajna narudžba.	2026-02-02 09:09:55.202304	2026-03-17 09:09:55.21476	60730	9110	12905	\N	\N	\N	\N	Cvjetna cesta 5, 10000 Zagreb
571	170	197	0	32548	Kontaktirati prije dostave.	2025-12-19 09:09:55.217734	2026-03-17 09:09:55.228081	28931	2893	6510	\N	\N	\N	\N	Ante Starčevića 14, 23000 Zadar
581	184	211	0	36448	Isporuka na stražnji ulaz objekta.	2026-02-11 09:09:55.368367	2026-03-17 09:09:55.376751	34303	5145	7290	\N	\N	\N	\N	Cvjetna cesta 5, 10000 Zagreb
572	182	209	2	73350	Račun poslati elektroničkom poštom.	2026-02-24 09:09:55.229605	2026-03-17 09:09:55.237832	58680	0	14670	\N	\N	2026-02-27 09:09:55.229605	\N	Kačićeva 21, 10000 Zagreb
573	165	192	6	41061	Isporuka na stražnji ulaz objekta.	2026-02-27 09:09:55.240124	2026-03-17 09:09:55.250056	36499	3650	8212	\N	2026-03-06 09:09:55.240124	2026-03-01 09:09:55.240124	2026-03-05 09:09:55.240124	Radićeva 27, 10000 Zagreb
582	153	180	0	217633	Molimo pažljivo zapakirati artikle.	2026-02-06 09:09:55.378058	2026-03-17 09:09:55.390777	183270	9164	43527	\N	\N	\N	\N	Maksimirska 41, 10000 Zagreb
574	164	191	5	108233	\N	2026-02-10 09:09:55.25832	2026-03-17 09:09:55.271757	98393	11807	21647	\N	\N	2026-02-11 09:09:55.25832	\N	Matije Gupca 19, 43000 Bjelovar
575	191	218	4	11111	Standardna veleprodajna narudžba.	2025-12-29 09:09:55.277946	2026-03-17 09:09:55.286119	10101	1212	2222	\N	\N	2026-01-01 09:09:55.277946	\N	Martićeva 67, 10000 Zagreb
583	187	214	7	123083	Kontaktirati prije dostave.	2025-12-14 09:09:55.392108	2026-03-17 09:09:55.402901	98466	0	24617	\N	\N	\N	\N	Heinzelova 44, 10000 Zagreb
576	182	209	6	93645	Adresa dostave: Kačićeva 21, 10000 Zagreb	2025-12-28 09:09:55.290212	2026-03-17 09:09:55.305137	74916	0	18729	\N	2026-01-07 09:09:55.290212	2025-12-31 09:09:55.290212	2026-01-04 09:09:55.290212	Kačićeva 21, 10000 Zagreb
577	188	215	0	95209	Molimo pažljivo zapakirati artikle.	2026-01-20 09:09:55.312539	2026-03-17 09:09:55.32327	84630	8463	19042	\N	\N	\N	\N	Kumičićeva 16, 51000 Rijeka
578	169	196	3	28733	Standardna veleprodajna narudžba.	2025-12-05 09:09:55.324602	2026-03-17 09:09:55.331581	25540	2554	5747	\N	\N	\N	\N	Kralja Tomislava 6, 35000 Slavonski Brod
579	176	203	0	118755	Standardna veleprodajna narudžba.	2026-02-19 09:09:55.334682	2026-03-17 09:09:55.348666	111770	16766	23751	\N	\N	\N	\N	Eufrazijeva 13, 52440 Poreč
584	160	187	1	72905	Molimo pažljivo zapakirati artikle.	2026-01-05 09:09:55.406435	2026-03-17 09:09:55.418467	61394	3070	14581	\N	\N	\N	\N	Osječka 44, 31000 Osijek
585	184	211	2	34095	Kontaktirati prije dostave.	2026-01-19 09:09:55.42163	2026-03-17 09:09:55.429814	32090	4814	6819	\N	\N	2026-01-22 09:09:55.42163	\N	Cvjetna cesta 5, 10000 Zagreb
586	189	216	7	90184	Molimo pažljivo zapakirati artikle.	2026-01-10 09:09:55.432067	2026-03-17 09:09:55.442825	81985	9838	18037	\N	\N	\N	\N	Šetalište Franje Tuđmana 8, 23000 Zadar
587	192	219	1	98606	Isporuka na stražnji ulaz objekta.	2025-12-05 09:09:55.445765	2026-03-17 09:09:55.456669	78885	0	19721	\N	\N	\N	\N	Gajeva 18, 10000 Zagreb
588	181	208	0	73518	Standardna veleprodajna narudžba.	2026-02-13 09:09:55.459903	2026-03-17 09:09:55.470254	61910	3096	14704	\N	\N	\N	\N	Ulica Stjepana Radića 18, 40000 Čakovec
589	169	196	1	110124	Standardna veleprodajna narudžba.	2025-12-01 09:09:55.471548	2026-03-17 09:09:55.480091	97888	9789	22025	\N	\N	\N	\N	Kralja Tomislava 6, 35000 Slavonski Brod
591	162	189	5	18141	Standardna veleprodajna narudžba.	2026-01-23 09:09:55.501025	2026-03-17 09:09:55.508852	16126	1613	3628	\N	\N	2026-01-26 09:09:55.501025	\N	Gundulićeva 17, 10000 Zagreb
590	172	199	6	58606	Standardna veleprodajna narudžba.	2025-12-13 09:09:55.483022	2026-03-17 09:09:55.493358	46885	0	11721	\N	\N	2025-12-16 09:09:55.483022	2025-12-21 09:09:55.483022	Riva 10, 21000 Split
596	174	201	1	36199	Molimo pažljivo zapakirati artikle.	2026-01-14 09:09:55.571729	2026-03-17 09:09:55.582575	34070	5111	7240	\N	\N	\N	\N	Trakošćanska 11, 42000 Varaždin
592	162	189	2	90585	\N	2026-02-05 09:09:55.515108	2026-03-17 09:09:55.527448	80520	8052	18117	\N	\N	2026-02-07 09:09:55.515108	\N	Gundulićeva 17, 10000 Zagreb
594	200	227	6	37653	Molimo pažljivo zapakirati artikle.	2026-02-15 09:09:55.541724	2026-03-17 09:09:55.553689	35438	5316	7531	\N	\N	2026-02-17 09:09:55.541724	2026-02-19 09:09:55.541724	Ulica kralja Petra Krešimira IV 6, 35000 Slavonski Brod
595	189	216	1	20084	Račun poslati elektroničkom poštom.	2026-02-05 09:09:55.561305	2026-03-17 09:09:55.569123	18258	2191	4017	\N	\N	\N	\N	Šetalište Franje Tuđmana 8, 23000 Zadar
597	159	186	4	90061	Kontaktirati prije dostave.	2026-03-09 09:09:55.585791	2026-03-17 09:09:55.601112	80055	8006	18012	\N	\N	2026-03-12 09:09:55.585791	\N	Poljička cesta 20, 21000 Split
598	167	194	2	144725	Standardna veleprodajna narudžba.	2026-02-09 09:09:55.605479	2026-03-17 09:09:55.617343	128644	12864	28945	\N	\N	2026-02-12 09:09:55.605479	\N	Savska cesta 101, 10000 Zagreb
600	154	181	6	142595	Isporuka u jutarnjim satima.	2025-11-28 09:09:55.62954	2026-03-17 09:09:55.642993	120080	6004	28519	\N	\N	2025-11-30 09:09:55.62954	2025-12-03 09:09:55.62954	Korzo 12, 51000 Rijeka
601	170	197	2	77378	Isporuka na stražnji ulaz objekta.	2026-01-06 09:09:55.650944	2026-03-17 09:09:55.659542	68780	6878	15476	\N	\N	2026-01-07 09:09:55.650944	\N	Ante Starčevića 14, 23000 Zadar
602	159	186	2	34151	Molimo pažljivo zapakirati artikle.	2026-02-19 09:09:55.661775	2026-03-17 09:09:55.669824	30357	3036	6830	\N	\N	2026-02-22 09:09:55.661775	\N	Poljička cesta 20, 21000 Split
603	160	187	5	179503	Račun poslati elektroničkom poštom.	2026-02-27 09:09:55.67235	2026-03-17 09:09:55.687725	151160	7558	35901	\N	\N	2026-02-28 09:09:55.67235	\N	Osječka 44, 31000 Osijek
604	175	202	7	156548	Isporuka u jutarnjim satima.	2026-02-28 09:09:55.693425	2026-03-17 09:09:55.702182	131830	6592	31310	\N	\N	\N	\N	Ciottina 7, 51000 Rijeka
605	163	190	4	117920	Standardna veleprodajna narudžba.	2026-01-08 09:09:55.705162	2026-03-17 09:09:55.713529	107200	12864	23584	\N	\N	2026-01-10 09:09:55.705162	\N	Zrinsko Frankopanska 5, 21000 Split
697	172	199	7	73838	Molimo pažljivo zapakirati artikle.	2025-12-25 09:09:57.134203	2026-03-17 09:09:57.148614	59070	0	14768	\N	\N	\N	\N	Riva 10, 21000 Split
606	188	215	6	175981	Račun poslati elektroničkom poštom.	2026-02-13 09:09:55.717597	2026-03-17 09:09:55.731579	156428	15643	35196	\N	\N	2026-02-15 09:09:55.717597	2026-02-21 09:09:55.717597	Kumičićeva 16, 51000 Rijeka
640	159	186	6	17001	Isporuka na stražnji ulaz objekta.	2025-12-25 09:09:56.236818	2026-03-17 09:09:56.245919	15112	1511	3400	\N	\N	2025-12-27 09:09:56.236818	2025-12-31 09:09:56.236818	Poljička cesta 20, 21000 Split
607	171	198	6	100298	\N	2026-03-03 09:09:55.740071	2026-03-17 09:09:55.749951	91180	10942	20060	\N	\N	2026-03-06 09:09:55.740071	2026-03-11 09:09:55.740071	Carrarina 2, 52100 Pula
608	187	214	1	63183	Kontaktirati prije dostave.	2025-12-17 09:09:55.75782	2026-03-17 09:09:55.769808	50546	0	12637	\N	\N	\N	\N	Heinzelova 44, 10000 Zagreb
609	158	185	0	125409	Isporuka na stražnji ulaz objekta.	2025-12-22 09:09:55.77332	2026-03-17 09:09:55.783556	111474	11147	25082	\N	\N	\N	\N	Ulica grada Vukovara 12, 10000 Zagreb
625	175	202	2	36814	Račun poslati elektroničkom poštom.	2025-12-06 09:09:56.020603	2026-03-17 09:09:56.03249	31001	1550	7363	\N	\N	2025-12-08 09:09:56.020603	\N	Ciottina 7, 51000 Rijeka
610	168	195	5	496053	Isporuka na stražnji ulaz objekta.	2026-02-26 09:09:55.784843	2026-03-17 09:09:55.798719	417728	20886	99211	\N	\N	2026-03-01 09:09:55.784843	\N	Riječka 28, 21000 Split
611	191	218	3	80908	Isporuka u jutarnjim satima.	2026-02-15 09:09:55.804427	2026-03-17 09:09:55.812923	73552	8826	16182	\N	\N	\N	\N	Martićeva 67, 10000 Zagreb
612	166	193	6	84916	Standardna veleprodajna narudžba.	2025-12-12 09:09:55.816326	2026-03-17 09:09:55.824379	71508	3575	16983	\N	2025-12-17 09:09:55.816326	2025-12-14 09:09:55.816326	2025-12-16 09:09:55.816326	Ulica Ivana Kukuljevića 9, 42000 Varaždin
634	180	207	6	73803	Standardna veleprodajna narudžba.	2026-02-20 09:09:56.155881	2026-03-17 09:09:56.16759	65602	6560	14761	\N	2026-03-04 09:09:56.155881	2026-02-21 09:09:56.155881	2026-02-28 09:09:56.155881	Bakačeva 9, 10000 Zagreb
613	157	184	4	9093	Kontaktirati prije dostave.	2026-02-11 09:09:55.83213	2026-03-17 09:09:55.840431	8558	1284	1819	\N	\N	2026-02-13 09:09:55.83213	\N	Kapucinska 33, 42000 Varaždin
626	180	207	2	158738	Isporuka na stražnji ulaz objekta.	2026-01-14 09:09:56.034827	2026-03-17 09:09:56.046806	141100	14110	31748	\N	\N	2026-01-16 09:09:56.034827	\N	Bakačeva 9, 10000 Zagreb
615	151	178	2	71528	Isporuka u jutarnjim satima.	2026-03-10 09:09:55.862936	2026-03-17 09:09:55.87469	67320	10098	14306	\N	\N	2026-03-12 09:09:55.862936	\N	Ilica 15, 10000 Zagreb
617	176	203	3	28175	Kontaktirati prije dostave.	2026-03-16 09:09:55.888724	2026-03-17 09:09:55.898903	26518	3978	5635	\N	\N	\N	\N	Eufrazijeva 13, 52440 Poreč
618	162	189	4	83419	Adresa dostave: Gundulićeva 17, 10000 Zagreb	2026-02-15 09:09:55.902365	2026-03-17 09:09:55.91784	74150	7415	16684	\N	\N	2026-02-18 09:09:55.902365	\N	Gundulićeva 17, 10000 Zagreb
619	162	189	1	261366	Molimo pažljivo zapakirati artikle.	2025-12-24 09:09:55.922215	2026-03-17 09:09:55.936138	232326	23233	52273	\N	\N	\N	\N	Gundulićeva 17, 10000 Zagreb
620	191	218	2	74018	Isporuka na stražnji ulaz objekta.	2026-01-05 09:09:55.939103	2026-03-17 09:09:55.954162	67289	8075	14804	\N	\N	2026-01-07 09:09:55.939103	\N	Martićeva 67, 10000 Zagreb
621	197	224	1	66634	Kontaktirati prije dostave.	2025-12-02 09:09:55.957077	2026-03-17 09:09:55.967138	60576	7269	13327	\N	\N	\N	\N	Samoborska cesta 90, 10000 Zagreb
627	162	189	4	75004	Standardna veleprodajna narudžba.	2025-12-05 09:09:56.049098	2026-03-17 09:09:56.061292	66670	6667	15001	\N	\N	2025-12-06 09:09:56.049098	\N	Gundulićeva 17, 10000 Zagreb
622	171	198	6	247209	Isporuka na stražnji ulaz objekta.	2026-03-06 09:09:55.970331	2026-03-17 09:09:55.982227	224735	26968	49442	\N	\N	2026-03-07 09:09:55.970331	2026-03-10 09:09:55.970331	Carrarina 2, 52100 Pula
623	162	189	1	77815	Isporuka na stražnji ulaz objekta.	2026-01-27 09:09:55.990741	2026-03-17 09:09:56.001572	69169	6917	15563	\N	\N	\N	\N	Gundulićeva 17, 10000 Zagreb
624	170	197	3	78598	Adresa dostave: Ante Starčevića 14, 23000 Zadar	2026-01-07 09:09:56.004464	2026-03-17 09:09:56.016869	69865	6987	15720	\N	\N	\N	\N	Ante Starčevića 14, 23000 Zadar
635	171	198	0	127435	Adresa dostave: Carrarina 2, 52100 Pula	2026-01-06 09:09:56.175413	2026-03-17 09:09:56.184331	115850	13902	25487	\N	\N	\N	\N	Carrarina 2, 52100 Pula
628	167	194	2	134086	Isporuka u jutarnjim satima.	2025-11-29 09:09:56.065987	2026-03-17 09:09:56.079335	119188	11919	26817	\N	\N	2025-11-30 09:09:56.065987	\N	Savska cesta 101, 10000 Zagreb
629	194	221	6	54125	Isporuka na stražnji ulaz objekta.	2026-03-04 09:09:56.081838	2026-03-17 09:09:56.093906	48111	4811	10825	\N	2026-03-20 09:09:56.081838	2026-03-07 09:09:56.081838	2026-03-11 09:09:56.081838	Palmotićeva 12, 10000 Zagreb
636	190	217	1	31336	Adresa dostave: Radnička cesta 52, 10000 Zagreb	2025-12-11 09:09:56.185633	2026-03-17 09:09:56.19437	27854	2785	6267	\N	\N	\N	\N	Radnička cesta 52, 10000 Zagreb
630	176	203	2	62008	Molimo pažljivo zapakirati artikle.	2026-02-13 09:09:56.101305	2026-03-17 09:09:56.112988	58360	8754	12402	\N	\N	2026-02-15 09:09:56.101305	\N	Eufrazijeva 13, 52440 Poreč
631	165	192	6	171118	\N	2026-03-06 09:09:56.115667	2026-06-30 15:10:39.663403	152105	15211	34224	2026-07-21	\N	2026-06-30 15:10:24.167272	2026-06-30 15:10:39.66306	Radićeva 27, 10000 Zagreb
632	175	202	0	56845	\N	2026-01-30 09:09:56.128004	2026-03-17 09:09:56.136507	47870	2394	11369	\N	\N	\N	\N	Ciottina 7, 51000 Rijeka
633	175	202	2	206209	Isporuka na stražnji ulaz objekta.	2026-02-05 09:09:56.137836	2026-03-17 09:09:56.153593	173650	8683	41242	\N	\N	2026-02-06 09:09:56.137836	\N	Ciottina 7, 51000 Rijeka
637	172	199	1	184358	Adresa dostave: Riva 10, 21000 Split	2025-11-24 09:09:56.197291	2026-03-17 09:09:56.209365	147486	0	36872	\N	\N	\N	\N	Riva 10, 21000 Split
638	171	198	1	96430	Adresa dostave: Carrarina 2, 52100 Pula	2025-11-21 09:09:56.21227	2026-03-17 09:09:56.219172	87664	10520	19286	\N	\N	\N	\N	Carrarina 2, 52100 Pula
639	190	217	5	52684	Kontaktirati prije dostave.	2026-03-08 09:09:56.222587	2026-03-17 09:09:56.230439	46830	4683	10537	\N	\N	2026-03-10 09:09:56.222587	\N	Radnička cesta 52, 10000 Zagreb
644	183	210	1	65120	Kontaktirati prije dostave.	2026-01-17 09:09:56.30869	2026-03-17 09:09:56.31773	61290	9194	13024	\N	\N	\N	\N	Koprivnička 30, 42000 Varaždin
641	160	187	5	252956	\N	2025-12-13 09:09:56.253997	2026-03-17 09:09:56.266463	213016	10651	50591	\N	\N	2025-12-16 09:09:56.253997	\N	Osječka 44, 31000 Osijek
642	175	202	4	139804	\N	2026-01-20 09:09:56.272454	2026-03-17 09:09:56.288184	117730	5887	27961	\N	\N	2026-01-23 09:09:56.272454	\N	Ciottina 7, 51000 Rijeka
643	152	179	4	82760	Račun poslati elektroničkom poštom.	2026-02-03 09:09:56.292396	2026-03-17 09:09:56.30423	66208	0	16552	\N	\N	2026-02-05 09:09:56.292396	\N	Vukovarska 88, 10000 Zagreb
645	194	221	4	43536	\N	2026-02-17 09:09:56.320738	2026-03-17 09:09:56.331118	38699	3870	8707	\N	\N	2026-02-20 09:09:56.320738	\N	Palmotićeva 12, 10000 Zagreb
646	157	184	4	45394	Isporuka na stražnji ulaz objekta.	2026-02-12 09:09:56.335287	2026-03-17 09:09:56.347125	42724	6409	9079	\N	\N	2026-02-13 09:09:56.335287	\N	Kapucinska 33, 42000 Varaždin
647	161	188	4	216840	Adresa dostave: Strossmayerova 8, 31000 Osijek	2025-11-27 09:09:56.351497	2026-03-17 09:09:56.364956	197127	23655	43368	\N	\N	2025-11-28 09:09:56.351497	\N	Strossmayerova 8, 31000 Osijek
648	182	209	1	94921	Adresa dostave: Kačićeva 21, 10000 Zagreb	2025-11-23 09:09:56.368942	2026-03-17 09:09:56.380928	75937	0	18984	\N	\N	\N	\N	Kačićeva 21, 10000 Zagreb
649	197	224	7	25135	Isporuka na stražnji ulaz objekta.	2025-12-03 09:09:56.384102	2026-03-17 09:09:56.392633	22850	2742	5027	\N	\N	\N	\N	Samoborska cesta 90, 10000 Zagreb
650	158	185	1	36963	Kontaktirati prije dostave.	2025-12-13 09:09:56.396104	2026-03-17 09:09:56.404311	32856	3286	7393	\N	\N	\N	\N	Ulica grada Vukovara 12, 10000 Zagreb
651	195	222	2	140535	Adresa dostave: Bosutska 14, 31000 Osijek	2025-11-18 09:09:56.407945	2026-03-17 09:09:56.419471	124920	12492	28107	\N	\N	2025-11-21 09:09:56.407945	\N	Bosutska 14, 31000 Osijek
614	151	178	2	96990	Isporuka u jutarnjim satima.	2026-01-10 09:09:55.845029	2026-05-05 10:50:50.613238	91285	13693	19398	2026-06-04	\N	2026-05-05 10:50:50.611471	\N	Ilica 15, 10000 Zagreb
652	151	178	6	145223	Račun poslati elektroničkom poštom.	2026-02-09 09:09:56.421697	2026-03-17 09:09:56.4317	136680	20502	29045	\N	\N	2026-02-12 09:09:56.421697	2026-02-15 09:09:56.421697	Ilica 15, 10000 Zagreb
653	183	210	3	103861	Račun poslati elektroničkom poštom.	2026-01-20 09:09:56.439473	2026-03-17 09:09:56.451963	97752	14663	20772	\N	\N	\N	\N	Koprivnička 30, 42000 Varaždin
669	198	225	2	60441	Molimo pažljivo zapakirati artikle.	2025-11-24 09:09:56.69617	2026-03-17 09:09:56.709781	53726	5373	12088	\N	\N	2025-11-26 09:09:56.69617	\N	Ljudevita Gaja 31, 49000 Krapina
654	155	182	6	325153	Adresa dostave: Obala kneza Branimira 9, 23000 Zadar	2025-12-07 09:09:56.454906	2026-03-17 09:09:56.470655	289024	28902	65031	\N	2025-12-19 09:09:56.454906	2025-12-08 09:09:56.454906	2025-12-11 09:09:56.454906	Obala kneza Branimira 9, 23000 Zadar
655	175	202	2	45793	Standardna veleprodajna narudžba.	2026-01-13 09:09:56.478353	2026-03-17 09:09:56.487975	38562	1928	9159	\N	\N	2026-01-16 09:09:56.478353	\N	Ciottina 7, 51000 Rijeka
670	166	193	1	156418	Isporuka na stražnji ulaz objekta.	2025-11-27 09:09:56.712518	2026-03-17 09:09:56.719209	131720	6586	31284	\N	\N	\N	\N	Ulica Ivana Kukuljevića 9, 42000 Varaždin
656	171	198	6	164945	Isporuka u jutarnjim satima.	2025-11-19 09:09:56.490901	2026-03-17 09:09:56.500523	149950	17994	32989	\N	\N	2025-11-22 09:09:56.490901	2025-11-28 09:09:56.490901	Carrarina 2, 52100 Pula
657	180	207	6	11846	Kontaktirati prije dostave.	2025-12-26 09:09:56.50809	2026-03-17 09:09:56.51664	10530	1053	2369	\N	\N	2025-12-28 09:09:56.50809	2025-12-30 09:09:56.50809	Bakačeva 9, 10000 Zagreb
679	163	190	4	246903	Molimo pažljivo zapakirati artikle.	2026-03-03 09:09:56.838649	2026-03-17 09:09:56.854183	224457	26935	49381	\N	\N	2026-03-04 09:09:56.838649	\N	Zrinsko Frankopanska 5, 21000 Split
658	170	197	6	73534	Isporuka na stražnji ulaz objekta.	2026-03-13 09:09:56.524737	2026-03-17 09:09:56.539784	65363	6536	14707	\N	\N	2026-03-14 09:09:56.524737	2026-03-16 09:09:56.524737	Ante Starčevića 14, 23000 Zadar
671	164	191	4	127898	Isporuka u jutarnjim satima.	2025-12-14 09:09:56.722116	2026-03-17 09:09:56.734029	116271	13953	25580	\N	\N	2025-12-17 09:09:56.722116	\N	Matije Gupca 19, 43000 Bjelovar
659	182	209	4	131900	Isporuka na stražnji ulaz objekta.	2025-12-16 09:09:56.547889	2026-03-17 09:09:56.561425	105520	0	26380	\N	\N	2025-12-19 09:09:56.547889	\N	Kačićeva 21, 10000 Zagreb
660	161	188	5	49451	Račun poslati elektroničkom poštom.	2026-02-24 09:09:56.565909	2026-03-17 09:09:56.57738	44956	5395	9890	\N	\N	2026-02-26 09:09:56.565909	\N	Strossmayerova 8, 31000 Osijek
672	164	191	0	248130	Kontaktirati prije dostave.	2025-11-24 09:09:56.73817	2026-03-17 09:09:56.751774	225573	27069	49626	\N	\N	\N	\N	Matije Gupca 19, 43000 Bjelovar
661	199	226	5	53170	Standardna veleprodajna narudžba.	2026-01-09 09:09:56.583488	2026-03-17 09:09:56.593113	42536	0	10634	\N	\N	2026-01-10 09:09:56.583488	\N	Trg slobode 3, 31000 Osijek
662	172	199	0	41764	Kontaktirati prije dostave.	2025-11-29 09:09:56.599264	2026-03-17 09:09:56.607974	33411	0	8353	\N	\N	\N	\N	Riva 10, 21000 Split
663	180	207	0	67246	Isporuka u jutarnjim satima.	2026-01-16 09:09:56.609555	2026-03-17 09:09:56.620382	59775	5978	13449	\N	\N	\N	\N	Bakačeva 9, 10000 Zagreb
664	190	217	1	46024	Račun poslati elektroničkom poštom.	2026-01-29 09:09:56.621694	2026-03-17 09:09:56.631893	40910	4091	9205	\N	\N	\N	\N	Radnička cesta 52, 10000 Zagreb
665	162	189	3	8724	Isporuka u jutarnjim satima.	2026-01-06 09:09:56.635038	2026-03-17 09:09:56.642085	7755	776	1745	\N	\N	\N	\N	Gundulićeva 17, 10000 Zagreb
666	192	219	5	123323	\N	2026-02-25 09:09:56.644996	2026-03-17 09:09:56.656987	98658	0	24665	\N	\N	2026-02-28 09:09:56.644996	\N	Gajeva 18, 10000 Zagreb
667	180	207	6	63551	Kontaktirati prije dostave.	2026-01-15 09:09:56.663163	2026-03-17 09:09:56.674872	56490	5649	12710	\N	\N	2026-01-18 09:09:56.663163	2026-01-23 09:09:56.663163	Bakačeva 9, 10000 Zagreb
668	171	198	1	197995	Isporuka u jutarnjim satima.	2025-11-19 09:09:56.682957	2026-03-17 09:09:56.692989	179995	21599	39599	\N	\N	\N	\N	Carrarina 2, 52100 Pula
690	153	180	1	143841	Kontaktirati prije dostave.	2026-02-08 09:09:57.016468	2026-03-17 09:09:57.025259	121129	6056	28768	\N	\N	\N	\N	Maksimirska 41, 10000 Zagreb
673	194	221	4	17779	Molimo pažljivo zapakirati artikle.	2026-01-01 09:09:56.753537	2026-03-17 09:09:56.764671	15803	1580	3556	\N	\N	2026-01-02 09:09:56.753537	\N	Palmotićeva 12, 10000 Zagreb
674	196	223	1	43493	Kontaktirati prije dostave.	2026-01-06 09:09:56.769516	2026-03-17 09:09:56.781378	38660	3866	8699	\N	\N	\N	\N	Kaštelanska 25, 21000 Split
680	171	198	6	71693	\N	2025-12-27 09:09:56.858128	2026-03-17 09:09:56.872913	65175	7821	14339	\N	\N	2025-12-28 09:09:56.858128	2026-01-04 09:09:56.858128	Carrarina 2, 52100 Pula
675	158	185	6	39511	Isporuka u jutarnjim satima.	2026-01-15 09:09:56.784528	2026-03-17 09:09:56.798089	35121	3512	7902	\N	\N	2026-01-17 09:09:56.784528	2026-01-21 09:09:56.784528	Ulica grada Vukovara 12, 10000 Zagreb
676	167	194	1	59103	Račun poslati elektroničkom poštom.	2025-12-24 09:09:56.80549	2026-03-17 09:09:56.812316	52536	5254	11821	\N	\N	\N	\N	Savska cesta 101, 10000 Zagreb
677	194	221	2	78340	Račun poslati elektroničkom poštom.	2026-03-17 09:09:56.815694	2026-03-17 09:09:56.825299	69636	6964	15668	\N	\N	2026-03-20 09:09:56.815694	\N	Palmotićeva 12, 10000 Zagreb
678	152	179	1	148870	Kontaktirati prije dostave.	2026-02-27 09:09:56.827524	2026-03-17 09:09:56.83516	119096	0	29774	\N	\N	\N	\N	Vukovarska 88, 10000 Zagreb
685	172	199	5	80085	Isporuka na stražnji ulaz objekta.	2026-01-17 09:09:56.938789	2026-03-17 09:09:56.948685	64068	0	16017	\N	\N	2026-01-20 09:09:56.938789	\N	Riva 10, 21000 Split
681	155	182	6	12605	\N	2025-11-18 09:09:56.880301	2026-03-17 09:09:56.88857	11205	1121	2521	\N	2025-11-26 09:09:56.880301	2025-11-20 09:09:56.880301	2025-11-24 09:09:56.880301	Obala kneza Branimira 9, 23000 Zadar
682	194	221	7	63326	Isporuka na stražnji ulaz objekta.	2026-03-10 09:09:56.896696	2026-03-17 09:09:56.907073	56290	5629	12665	\N	\N	\N	\N	Palmotićeva 12, 10000 Zagreb
688	165	192	4	80848	Molimo pažljivo zapakirati artikle.	2026-02-18 09:09:56.986741	2026-03-17 09:09:57.000247	71864	7186	16170	\N	\N	2026-02-20 09:09:56.986741	\N	Radićeva 27, 10000 Zagreb
683	198	225	2	131844	Adresa dostave: Ljudevita Gaja 31, 49000 Krapina	2025-11-18 09:09:56.910235	2026-03-17 09:09:56.925686	117195	11720	26369	\N	\N	2025-11-20 09:09:56.910235	\N	Ljudevita Gaja 31, 49000 Krapina
686	172	199	6	200945	Molimo pažljivo zapakirati artikle.	2026-03-10 09:09:56.954517	2026-03-17 09:09:56.966444	160756	0	40189	\N	2026-03-20 09:09:56.954517	2026-03-13 09:09:56.954517	2026-03-18 09:09:56.954517	Riva 10, 21000 Split
684	163	190	2	26581	Standardna veleprodajna narudžba.	2026-02-23 09:09:56.928163	2026-03-17 09:09:56.936524	24165	2900	5316	\N	\N	2026-02-26 09:09:56.928163	\N	Zrinsko Frankopanska 5, 21000 Split
687	176	203	4	30175	Adresa dostave: Eufrazijeva 13, 52440 Poreč	2025-12-27 09:09:56.973833	2026-03-17 09:09:56.982398	28400	4260	6035	\N	\N	2025-12-28 09:09:56.973833	\N	Eufrazijeva 13, 52440 Poreč
689	153	180	2	25976	Kontaktirati prije dostave.	2026-02-20 09:09:57.004098	2026-03-17 09:09:57.014037	21875	1094	5195	\N	\N	2026-02-23 09:09:57.004098	\N	Maksimirska 41, 10000 Zagreb
691	166	193	2	619766	Račun poslati elektroničkom poštom.	2026-01-01 09:09:57.02833	2026-03-17 09:09:57.044429	521908	26095	123953	\N	\N	2026-01-02 09:09:57.02833	\N	Ulica Ivana Kukuljevića 9, 42000 Varaždin
692	178	205	2	233405	Adresa dostave: Europske avenije 6, 31000 Osijek	2025-12-05 09:09:57.046732	2026-03-17 09:09:57.061879	196552	9828	46681	\N	\N	2025-12-07 09:09:57.046732	\N	Europske avenije 6, 31000 Osijek
694	185	212	5	77851	Standardna veleprodajna narudžba.	2026-01-23 09:09:57.078153	2026-03-17 09:09:57.093473	73272	10991	15570	\N	\N	2026-01-25 09:09:57.078153	\N	Dubrovačka 7, 20000 Dubrovnik
695	152	179	4	157651	Kontaktirati prije dostave.	2026-01-03 09:09:57.098719	2026-03-17 09:09:57.112143	126121	0	31530	\N	\N	2026-01-05 09:09:57.098719	\N	Vukovarska 88, 10000 Zagreb
696	190	217	3	115176	Isporuka u jutarnjim satima.	2026-01-10 09:09:57.116564	2026-03-17 09:09:57.130733	102379	10238	23035	\N	\N	\N	\N	Radnička cesta 52, 10000 Zagreb
693	151	178	2	54659	\N	2026-02-25 09:09:57.064852	2026-03-24 08:13:49.710678	51444	7717	10932	2026-04-23	\N	2026-03-24 08:13:49.706976	\N	Ilica 15, 10000 Zagreb
698	159	186	4	29739	Račun poslati elektroničkom poštom.	2026-02-13 09:09:57.151712	2026-03-17 09:09:57.160219	26435	2644	5948	\N	\N	2026-02-15 09:09:57.151712	\N	Poljička cesta 20, 21000 Split
714	152	179	5	106785	Molimo pažljivo zapakirati artikle.	2026-02-16 09:09:57.392436	2026-03-17 09:09:57.400275	85428	0	21357	\N	\N	2026-02-19 09:09:57.392436	\N	Vukovarska 88, 10000 Zagreb
699	161	188	5	42790	Adresa dostave: Strossmayerova 8, 31000 Osijek	2025-11-18 09:09:57.164118	2026-03-17 09:09:57.172928	38900	4668	8558	\N	\N	2025-11-21 09:09:57.164118	\N	Strossmayerova 8, 31000 Osijek
700	161	188	6	937368	Adresa dostave: Strossmayerova 8, 31000 Osijek	2025-12-16 09:09:57.179119	2026-03-17 09:09:57.192786	852152	102258	187474	\N	\N	2025-12-17 09:09:57.179119	2025-12-21 09:09:57.179119	Strossmayerova 8, 31000 Osijek
724	178	205	5	141205	Adresa dostave: Europske avenije 6, 31000 Osijek	2025-11-21 09:09:57.539413	2026-03-17 09:09:57.555198	118910	5946	28241	\N	\N	2025-11-22 09:09:57.539413	\N	Europske avenije 6, 31000 Osijek
701	191	218	4	34165	\N	2025-11-23 09:09:57.200251	2026-03-17 09:09:57.210118	31059	3727	6833	\N	\N	2025-11-25 09:09:57.200251	\N	Martićeva 67, 10000 Zagreb
702	184	211	0	19550	Standardna veleprodajna narudžba.	2026-02-08 09:09:57.214668	2026-03-17 09:09:57.22134	18400	2760	3910	\N	\N	\N	\N	Cvjetna cesta 5, 10000 Zagreb
703	187	214	1	112600	Standardna veleprodajna narudžba.	2026-02-02 09:09:57.222637	2026-03-17 09:09:57.229252	90080	0	22520	\N	\N	\N	\N	Heinzelova 44, 10000 Zagreb
715	184	211	6	11838	Račun poslati elektroničkom poštom.	2026-01-20 09:09:57.406446	2026-03-17 09:09:57.420255	11141	1671	2368	\N	\N	2026-01-22 09:09:57.406446	2026-01-25 09:09:57.406446	Cvjetna cesta 5, 10000 Zagreb
704	153	180	4	59111	\N	2025-12-22 09:09:57.232305	2026-03-17 09:09:57.240283	49778	2489	11822	\N	\N	2025-12-25 09:09:57.232305	\N	Maksimirska 41, 10000 Zagreb
705	155	182	1	97200	Molimo pažljivo zapakirati artikle.	2025-12-09 09:09:57.244712	2026-03-17 09:09:57.252953	86400	8640	19440	\N	\N	\N	\N	Obala kneza Branimira 9, 23000 Zadar
706	198	225	5	62719	Adresa dostave: Ljudevita Gaja 31, 49000 Krapina	2026-01-17 09:09:57.25658	2026-03-17 09:09:57.269777	55750	5575	12544	\N	\N	2026-01-20 09:09:57.25658	\N	Ljudevita Gaja 31, 49000 Krapina
716	196	223	0	69199	Standardna veleprodajna narudžba.	2025-12-20 09:09:57.428047	2026-03-17 09:09:57.434761	61510	6151	13840	\N	\N	\N	\N	Kaštelanska 25, 21000 Split
707	154	181	5	848276	Standardna veleprodajna narudžba.	2026-03-03 09:09:57.27613	2026-03-17 09:09:57.289467	714338	35717	169655	\N	\N	2026-03-05 09:09:57.27613	\N	Korzo 12, 51000 Rijeka
708	183	210	6	5223	Isporuka u jutarnjim satima.	2026-01-13 09:09:57.295228	2026-03-17 09:09:57.303368	4915	737	1045	\N	\N	2026-01-14 09:09:57.295228	2026-01-16 09:09:57.295228	Koprivnička 30, 42000 Varaždin
717	157	184	3	31439	Račun poslati elektroničkom poštom.	2026-02-14 09:09:57.43634	2026-03-17 09:09:57.442693	29590	4439	6288	\N	\N	\N	\N	Kapucinska 33, 42000 Varaždin
709	160	187	6	87859	Adresa dostave: Osječka 44, 31000 Osijek	2026-02-22 09:09:57.311338	2026-03-17 09:09:57.323199	73986	3699	17572	\N	\N	2026-02-24 09:09:57.311338	2026-02-26 09:09:57.311338	Osječka 44, 31000 Osijek
710	178	205	6	174030	Isporuka na stražnji ulaz objekta.	2025-12-27 09:09:57.330999	2026-03-17 09:09:57.346911	146552	7328	34806	\N	2026-01-05 09:09:57.330999	2025-12-30 09:09:57.330999	2026-01-04 09:09:57.330999	Europske avenije 6, 31000 Osijek
718	182	209	0	39189	Kontaktirati prije dostave.	2026-02-02 09:09:57.446328	2026-03-17 09:09:57.454618	31351	0	7838	\N	\N	\N	\N	Kačićeva 21, 10000 Zagreb
711	175	202	4	24125	\N	2025-11-29 09:09:57.354235	2026-03-17 09:09:57.364168	20316	1016	4825	\N	\N	2025-12-02 09:09:57.354235	\N	Ciottina 7, 51000 Rijeka
712	166	193	0	40266	Kontaktirati prije dostave.	2026-01-17 09:09:57.36864	2026-03-17 09:09:57.376995	33908	1695	8053	\N	\N	\N	\N	Ulica Ivana Kukuljevića 9, 42000 Varaždin
713	170	197	2	56149	Molimo pažljivo zapakirati artikle.	2025-12-27 09:09:57.378285	2026-03-17 09:09:57.390191	49910	4991	11230	\N	\N	2025-12-29 09:09:57.378285	\N	Ante Starčevića 14, 23000 Zadar
730	157	184	6	57008	Molimo pažljivo zapakirati artikle.	2025-12-23 09:09:57.639238	2026-03-17 09:09:57.649219	53654	8048	11402	\N	2026-01-05 09:09:57.639238	2025-12-24 09:09:57.639238	2025-12-27 09:09:57.639238	Kapucinska 33, 42000 Varaždin
719	152	179	2	86714	Molimo pažljivo zapakirati artikle.	2025-11-21 09:09:57.455936	2026-03-17 09:09:57.469508	69371	0	17343	\N	\N	2025-11-23 09:09:57.455936	\N	Vukovarska 88, 10000 Zagreb
725	161	188	6	29528	Standardna veleprodajna narudžba.	2026-01-09 09:09:57.561366	2026-03-17 09:09:57.571122	26843	3221	5906	\N	2026-01-21 09:09:57.561366	2026-01-10 09:09:57.561366	2026-01-16 09:09:57.561366	Strossmayerova 8, 31000 Osijek
720	156	183	6	137230	Isporuka u jutarnjim satima.	2025-12-28 09:09:57.471749	2026-03-17 09:09:57.485391	129158	19374	27446	\N	2026-01-10 09:09:57.471749	2025-12-30 09:09:57.471749	2026-01-03 09:09:57.471749	Frankopanska 22, 10000 Zagreb
721	186	213	7	67839	Isporuka na stražnji ulaz objekta.	2026-01-21 09:09:57.493278	2026-03-17 09:09:57.503738	61672	7401	13568	\N	\N	\N	\N	Stonska 2, 20250 Orebić
722	161	188	4	191136	Kontaktirati prije dostave.	2026-02-02 09:09:57.506654	2026-03-17 09:09:57.517005	173760	20851	38227	\N	\N	2026-02-03 09:09:57.506654	\N	Strossmayerova 8, 31000 Osijek
726	153	180	1	60988	Račun poslati elektroničkom poštom.	2025-12-18 09:09:57.578562	2026-03-17 09:09:57.58893	51358	2568	12198	\N	\N	\N	\N	Maksimirska 41, 10000 Zagreb
723	153	180	4	274716	Isporuka u jutarnjim satima.	2025-12-22 09:09:57.521176	2026-03-17 09:09:57.53483	231340	11567	54943	\N	\N	2025-12-24 09:09:57.521176	\N	Maksimirska 41, 10000 Zagreb
727	155	182	1	214968	Molimo pažljivo zapakirati artikle.	2025-12-24 09:09:57.591966	2026-03-17 09:09:57.606111	191082	19108	42994	\N	\N	\N	\N	Obala kneza Branimira 9, 23000 Zadar
731	182	209	0	46825	Adresa dostave: Kačićeva 21, 10000 Zagreb	2025-12-12 09:09:57.657239	2026-03-17 09:09:57.669185	37460	0	9365	\N	\N	\N	\N	Kačićeva 21, 10000 Zagreb
728	164	191	6	90585	Kontaktirati prije dostave.	2026-03-17 09:09:57.609544	2026-03-17 09:09:57.61943	82350	9882	18117	\N	2026-03-27 09:09:57.609544	2026-03-19 09:09:57.609544	2026-03-24 09:09:57.609544	Matije Gupca 19, 43000 Bjelovar
729	175	202	0	98275	Molimo pažljivo zapakirati artikle.	2026-02-11 09:09:57.627362	2026-03-17 09:09:57.637921	82758	4138	19655	\N	\N	\N	\N	Ciottina 7, 51000 Rijeka
734	157	184	1	44318	Adresa dostave: Kapucinska 33, 42000 Varaždin	2025-12-02 09:09:57.701236	2026-03-17 09:09:57.707982	41711	6257	8864	\N	\N	\N	\N	Kapucinska 33, 42000 Varaždin
732	175	202	2	149085	Standardna veleprodajna narudžba.	2026-02-21 09:09:57.670475	2026-03-17 09:09:57.684046	125545	6277	29817	\N	\N	2026-02-23 09:09:57.670475	\N	Ciottina 7, 51000 Rijeka
733	157	184	2	134706	Standardna veleprodajna narudžba.	2025-12-05 09:09:57.686825	2026-03-17 09:09:57.69896	126782	19017	26941	\N	\N	2025-12-07 09:09:57.686825	\N	Kapucinska 33, 42000 Varaždin
736	155	182	1	17089	Adresa dostave: Obala kneza Branimira 9, 23000 Zadar	2025-12-19 09:09:57.729178	2026-03-17 09:09:57.738043	15190	1519	3418	\N	\N	\N	\N	Obala kneza Branimira 9, 23000 Zadar
735	151	178	6	66646	Isporuka na stražnji ulaz objekta.	2026-01-26 09:09:57.711229	2026-03-17 09:09:57.721497	62726	9409	13329	\N	2026-02-05 09:09:57.711229	2026-01-27 09:09:57.711229	2026-02-01 09:09:57.711229	Ilica 15, 10000 Zagreb
737	199	226	5	47889	Račun poslati elektroničkom poštom.	2026-02-20 09:09:57.740964	2026-03-17 09:09:57.753047	38311	0	9578	\N	\N	2026-02-21 09:09:57.740964	\N	Trg slobode 3, 31000 Osijek
738	178	205	5	153996	Isporuka na stražnji ulaz objekta.	2026-02-19 09:09:57.759017	2026-03-17 09:09:57.772707	129681	6484	30799	\N	\N	2026-02-21 09:09:57.759017	\N	Europske avenije 6, 31000 Osijek
739	184	211	5	33414	Isporuka na stražnji ulaz objekta.	2025-12-30 09:09:57.77855	2026-03-17 09:09:57.794013	31448	4717	6683	\N	\N	2026-01-02 09:09:57.77855	\N	Cvjetna cesta 5, 10000 Zagreb
740	165	192	6	22508	\N	2025-12-25 09:09:57.799934	2026-03-17 09:09:57.810037	20007	2001	4502	\N	\N	2025-12-26 09:09:57.799934	2025-12-29 09:09:57.799934	Radićeva 27, 10000 Zagreb
741	188	215	6	38093	Standardna veleprodajna narudžba.	2026-01-09 09:09:57.817937	2026-03-17 09:09:57.833347	33860	3386	7619	\N	2026-01-18 09:09:57.817937	2026-01-10 09:09:57.817937	2026-01-12 09:09:57.817937	Kumičićeva 16, 51000 Rijeka
742	197	224	6	56408	Isporuka na stražnji ulaz objekta.	2025-12-23 09:09:57.840758	2026-03-17 09:09:57.852477	51280	6154	11282	\N	2026-01-03 09:09:57.840758	2025-12-24 09:09:57.840758	2025-12-28 09:09:57.840758	Samoborska cesta 90, 10000 Zagreb
743	174	201	4	141386	\N	2026-03-11 09:09:57.860274	2026-03-17 09:09:57.868911	133070	19961	28277	\N	\N	2026-03-14 09:09:57.860274	\N	Trakošćanska 11, 42000 Varaždin
758	179	206	2	73219	Isporuka u jutarnjim satima.	2026-03-05 09:09:58.107323	2026-03-17 09:09:58.117067	66563	7988	14644	\N	\N	2026-03-07 09:09:58.107323	\N	Put Supavla 3, 21000 Split
744	185	212	5	183706	\N	2026-02-22 09:09:57.872761	2026-03-17 09:09:57.881016	172900	25935	36741	\N	\N	2026-02-25 09:09:57.872761	\N	Dubrovačka 7, 20000 Dubrovnik
745	155	182	6	70035	Isporuka na stražnji ulaz objekta.	2026-01-01 09:09:57.886785	2026-03-17 09:09:57.900715	62253	6225	14007	\N	2026-01-08 09:09:57.886785	2026-01-02 09:09:57.886785	2026-01-05 09:09:57.886785	Obala kneza Branimira 9, 23000 Zadar
746	194	221	1	89994	Isporuka na stražnji ulaz objekta.	2025-11-24 09:09:57.907968	2026-03-17 09:09:57.920325	79995	8000	17999	\N	\N	\N	\N	Palmotićeva 12, 10000 Zagreb
759	162	189	1	161870	\N	2026-01-04 09:09:58.119304	2026-03-17 09:09:58.133765	143884	14388	32374	\N	\N	\N	\N	Gundulićeva 17, 10000 Zagreb
747	151	178	6	179301	Standardna veleprodajna narudžba.	2026-01-14 09:09:57.923549	2026-03-17 09:09:57.935348	168754	25313	35860	\N	2026-01-26 09:09:57.923549	2026-01-15 09:09:57.923549	2026-01-20 09:09:57.923549	Ilica 15, 10000 Zagreb
748	178	205	2	337190	Adresa dostave: Europske avenije 6, 31000 Osijek	2025-11-22 09:09:57.943275	2026-03-17 09:09:57.95163	283950	14198	67438	\N	\N	2025-11-24 09:09:57.943275	\N	Europske avenije 6, 31000 Osijek
760	200	227	1	45118	Standardna veleprodajna narudžba.	2025-12-28 09:09:58.136884	2026-03-17 09:09:58.150882	42463	6369	9024	\N	\N	\N	\N	Ulica kralja Petra Krešimira IV 6, 35000 Slavonski Brod
749	158	185	4	64265	Adresa dostave: Ulica grada Vukovara 12, 10000 Zagreb	2026-01-07 09:09:57.953893	2026-03-17 09:09:57.968922	57125	5713	12853	\N	\N	2026-01-08 09:09:57.953893	\N	Ulica grada Vukovara 12, 10000 Zagreb
750	187	214	6	60213	Račun poslati elektroničkom poštom.	2025-12-14 09:09:57.973464	2026-03-17 09:09:57.983296	48170	0	12043	\N	\N	2025-12-16 09:09:57.973464	2025-12-23 09:09:57.973464	Heinzelova 44, 10000 Zagreb
751	188	215	4	66139	Isporuka u jutarnjim satima.	2026-01-02 09:09:57.990632	2026-03-17 09:09:58.005396	58790	5879	13228	\N	\N	2026-01-04 09:09:57.990632	\N	Kumičićeva 16, 51000 Rijeka
752	187	214	7	43100	Isporuka na stražnji ulaz objekta.	2026-03-13 09:09:58.009417	2026-03-17 09:09:58.019736	34480	0	8620	\N	\N	\N	\N	Heinzelova 44, 10000 Zagreb
753	155	182	6	66403	Kontaktirati prije dostave.	2026-02-28 09:09:58.02318	2026-03-17 09:09:58.037205	59024	5902	13281	\N	2026-03-11 09:09:58.02318	2026-03-01 09:09:58.02318	2026-03-03 09:09:58.02318	Obala kneza Branimira 9, 23000 Zadar
754	158	185	7	1106055	Isporuka na stražnji ulaz objekta.	2025-12-07 09:09:58.044951	2026-03-17 09:09:58.055027	983160	98316	221211	\N	\N	\N	\N	Ulica grada Vukovara 12, 10000 Zagreb
755	155	182	2	130116	Isporuka na stražnji ulaz objekta.	2025-12-12 09:09:58.058854	2026-03-17 09:09:58.074441	115659	11566	26023	\N	\N	2025-12-14 09:09:58.058854	\N	Obala kneza Branimira 9, 23000 Zadar
616	196	223	6	89100	Molimo pažljivo zapakirati artikle.	2026-03-08 09:09:55.876954	2026-03-24 08:12:46.833444	79200	7920	17820	2026-04-23	\N	2026-03-24 08:12:19.978056	2026-03-24 08:12:46.832941	Kaštelanska 25, 21000 Split
756	190	217	4	129713	Račun poslati elektroničkom poštom.	2026-01-01 09:09:58.076799	2026-03-17 09:09:58.089222	115300	11530	25943	\N	\N	2026-01-04 09:09:58.076799	\N	Radnička cesta 52, 10000 Zagreb
757	181	208	3	46898	Kontaktirati prije dostave.	2026-02-23 09:09:58.093399	2026-03-17 09:09:58.103914	39493	1975	9380	\N	\N	\N	\N	Ulica Stjepana Radića 18, 40000 Čakovec
761	151	178	0	13065	\N	2026-03-24 08:19:41.638958	2026-03-24 08:19:41.659679	12296	1844	2613	\N	\N	\N	\N	Ilica 15, 10000 Zagreb
762	151	178	0	58793	\N	2026-04-10 17:19:03.308762	2026-04-10 17:19:03.352167	55334	8300	11759	\N	\N	\N	\N	Ilica 15, 10000 Zagreb
599	176	203	2	34371	Adresa dostave: Eufrazijeva 13, 52440 Poreč	2026-03-07 09:09:55.619598	2026-04-11 18:23:22.011616	32350	4853	6874	2026-05-02	\N	2026-04-11 18:23:22.010096	\N	Eufrazijeva 13, 52440 Poreč
763	151	178	0	6466	\N	2026-04-10 17:23:18.025864	2026-06-30 13:49:04.994308	6086	913	1293	\N	\N	\N	\N	Ilica 20, 10000 Zagreb
593	152	179	6	32070	Adresa dostave: Vukovarska 88, 10000 Zagreb	2026-03-01 09:09:55.529729	2026-06-30 15:11:21.663579	25656	0	6414	2026-07-21	2026-06-30 15:11:21.662492	2026-06-30 15:11:18.643773	2026-06-30 15:11:20.817996	Vukovarska 88, 10000 Zagreb
764	151	178	1	13065	\N	2026-06-30 15:17:58.116029	2026-06-30 15:18:34.157733	12296	1844	2613	\N	\N	\N	\N	Ilica 20, 10000 Zagreb
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.products (id, name, sku, price_cents, active, created_at, updated_at, stock_quantity, category, image_url) FROM stdin;
20810	Antinori, Badia a Passignano Gran Selezione 	1VN840-0	4740	t	2026-03-17 09:09:43.554436	2026-03-17 09:09:43.554466	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN840.png
20811	Antinori, Villa Antinori Chianti Classico Riserva	1VN567-1	2320	t	2026-03-17 09:09:43.554476	2026-03-17 09:09:43.554479	111	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/VILLA-ANTINORI-CHIANTI-CLASSICO-RISERVA-W.jpg
20812	Antinori, Villa Rosso	1VANVA001-2	1700	t	2026-03-17 09:09:43.554485	2026-03-17 09:09:43.554487	269	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VANVA001.png
20813	Chateau du Beaucastel, Chateauneuf du Pape Rouge	1VN723-10-3	12850	t	2026-03-17 09:09:43.554493	2026-03-17 09:09:43.554495	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN723-3.png
20814	Bouvet Ladubay, Instinct Extra Brut	1ŠN61-4	2100	t	2026-03-17 09:09:43.554505	2026-03-17 09:09:43.554507	75	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-instinct-extra-brut-w.jpg
20815	Bouvet Ladubay, Excellence Brut Rose	1ŠN200-5	741	t	2026-03-17 09:09:43.554516	2026-03-17 09:09:43.554518	16	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/bouvet-rose-excell.jpg
20816	Graham's, Tawny Port 10 Y.O.	1PN45-6	3630	t	2026-03-17 09:09:43.554524	2026-03-17 09:09:43.554526	62	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/GRAHAMS-PORT-10-god.-20vol-075-L-vino-w.jpg
20817	Ferrari, Blanc de Blancs Maximum Brut Trento DOC Giftbox	1ŠN400-1-7	2995	t	2026-03-17 09:09:43.554532	2026-03-17 09:09:43.554534	33	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/FERRARI-MAXIMUM-Blanc-de-Blcs-BRUT-pjenusac-075-L.jpg
20818	Monte Zovo, Recioto della Valpolicella	1VN1095-8	2973	t	2026-03-17 09:09:43.55454	2026-03-17 09:09:43.554542	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN504.png
20819	Monte Zovo, Ripasso Valpolicella Superiore Magnum	1VN670-9	5540	t	2026-03-17 09:09:43.554548	2026-03-17 09:09:43.55455	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN674.png
20820	Henri Bourgeois, D'Antan (Silex) Sancerre	1VN1103-4-10	4850	t	2026-03-17 09:09:43.554556	2026-03-17 09:09:43.554558	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN816.jpg
20821	Masi, Amarone Costasera della Valpolicella Classico DOCG 0,375 L	1VN256-11	3000	t	2026-03-17 09:09:43.554564	2026-03-17 09:09:43.554566	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN4.png
20822	Masi, Campofiorin	1VN5-12	1500	t	2026-03-17 09:09:43.554572	2026-03-17 09:09:43.554574	402	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN5.jpg
20823	6 x Master's London Dry Gin 40%vol + 24 x Tonik 0,275l GRATIS	VIVAT0013-13	17244	t	2026-03-17 09:09:43.554581	2026-03-17 09:09:43.554583	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/master-tonic-promo1.jpg
20824	Col de'Salici, Prosecco Superiore Valdobbiadene Millesimato DOCG Extra Dry	1ŠN91-14	1295	t	2026-03-17 09:09:43.554589	2026-03-17 09:09:43.554592	140	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/col-de-salici-ex-dry-w.jpg
20825	Tenuta di Biserno, Il Pino di Biserno	1VN271-4-15	4900	t	2026-03-17 09:09:43.554597	2026-03-17 09:09:43.554599	80	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN271.jpg
20826	Tenuta di Biserno, Insoglio del Cinghiale 0,375 L	1VN1533-16	1380	t	2026-03-17 09:09:43.554605	2026-03-17 09:09:43.554607	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN272.png
20827	Prunotto, Barbaresco DOCG 2023	1VN901-9-17	3450	t	2026-03-17 09:09:43.554613	2026-03-17 09:09:43.554615	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN901-4-1.jpg
20828	Prunotto, Barolo DOCG	1VN954-8-18	4680	t	2026-03-17 09:09:43.55462	2026-03-17 09:09:43.554623	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN957-3-1.jpg
20829	Santa Cristina, Le Maestrelle Magnum	1VN662-19	2363	t	2026-03-17 09:09:43.554628	2026-03-17 09:09:43.55463	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN467.jpg
20830	Tenuta Tignanello, Solaia Magnum 2017	1VN1160-1-20	73794	t	2026-03-17 09:09:43.554636	2026-03-17 09:09:43.554638	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN713-3-1.jpg
20831	Nicolas Perrin, Cote Rotie Rouge	1VN719-2-21	5176	t	2026-03-17 09:09:43.554643	2026-03-17 09:09:43.554646	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/perrin-cote-rotie.jpg
20832	Domaine Laroche, Chablis Grand Cru Les Blanchots	1VN686-7-22	9730	t	2026-03-17 09:09:43.554651	2026-03-17 09:09:43.554653	31	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN6861.jpg
20833	La Braccesca, Achelo	1VN960-23	1560	t	2026-03-17 09:09:43.554658	2026-03-17 09:09:43.554661	66	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/achelo.jpg
20834	La Braccesca, Vino Nobile di Montepulciano	1VN29-24	1980	t	2026-03-17 09:09:43.554666	2026-03-17 09:09:43.554668	59	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN29-1.png
20835	Kracher, Noble Reserve Trockenbeerenauslese	1VN1021-25	2860	t	2026-03-17 09:09:43.554673	2026-03-17 09:09:43.554675	4	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1021.jpg
20837	Tormaresca, Torcicoda Primitivo	1VN633-27	1990	t	2026-03-17 09:09:43.554688	2026-03-17 09:09:43.554691	117	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN633-1.jpg
20838	Tenuta Bocca di Lupo, Trentangeli Castel del Monte D.O.C Magnum	1VN715-28	4180	t	2026-03-17 09:09:43.554696	2026-03-17 09:09:43.554698	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN634-1.jpg
20839	Wieninger, Pinot Noir Select	1VN863-3-29	2600	t	2026-03-17 09:09:43.554704	2026-03-17 09:09:43.55471	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN863-2-1.jpg
20840	Sattlerhof, Sauvignon Blanc Gamlitz Klassik	1VN810-9-30	2200	t	2026-03-17 09:09:43.554716	2026-03-17 09:09:43.554718	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN810-3-1.jpg
20841	Jako vino, Stina Plavac Mali Majstor	1V05788-1-31	2760	t	2026-03-17 09:09:43.554723	2026-03-17 09:09:43.554726	135	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0577-1.png
20842	Jako vino, Stina Plavac mali Magnum	1V02572-32	6650	t	2026-03-17 09:09:43.554731	2026-03-17 09:09:43.554734	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VO2054-1.jpg
20843	Jako vino, Stina Plavac mali Remek djelo	1V02576-33	8250	t	2026-03-17 09:09:43.554739	2026-03-17 09:09:43.554741	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V02576-1.png
20844	Chiavalon, Atilio 0,25 L	1H003651-34	1400	t	2026-03-17 09:09:43.554746	2026-03-17 09:09:43.554748	16	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H003652-1.jpg
20845	Chiavalon, Mlado 0,25 L	1H003305-35	1400	t	2026-03-17 09:09:43.554754	2026-03-17 09:09:43.554756	16	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H0003306-1.jpg
20846	Chiavalon, Organic 0,25 L	1H00364-36	1400	t	2026-03-17 09:09:43.554761	2026-03-17 09:09:43.554763	22	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H00365-1.jpg
20847	Salvela, Aurum 0,25 L	1H00450-37	1400	t	2026-03-17 09:09:43.554769	2026-03-17 09:09:43.554771	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/salvela-aurum-250-w.jpg
22880	Bolfan, Rajnski rizling	1V0372-2070	1215	t	2026-03-17 09:09:43.571705	2026-03-17 09:09:43.571707	11	VINO > BIJELA	
20848	Taittinger, Brut Reserve Champagne 0,375	1ŠN67-38	3000	t	2026-03-17 09:09:43.554777	2026-03-17 09:09:43.554779	40	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/TAITTINGER-BRUT-RESERVE-CHAMPAGNE-0375L.jpg
20849	Taittinger, Comtes de Champagne Rose Vintage Brut	1ŠN104-5-39	26100	t	2026-03-17 09:09:43.554784	2026-03-17 09:09:43.554786	9	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/taittinger-comtes-rose.jpg
20850	Taittinger, Prestige Rose Brut Champagne	1ŠN70-40	6620	t	2026-03-17 09:09:43.554792	2026-03-17 09:09:43.554794	19	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/taittinger-rose-prestige.jpg
20851	Kozlović, Malvazija 0,75L	KOZMALV-41	1540	t	2026-03-17 09:09:43.5548	2026-03-17 09:09:43.554802	31	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/KOZMALV.jpg
20852	Aura, Liker divlja jabuka 28.1%vol	1R208-42	2600	t	2026-03-17 09:09:43.554808	2026-03-17 09:09:43.55481	45	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R208-1.jpg
20853	Aura, Liker divlja kruška 29,50%vol	1R0212-43	2600	t	2026-03-17 09:09:43.554815	2026-03-17 09:09:43.554817	128	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0212-1.jpg
20854	Aura, Liker Drijen 24%vol	1R0213-44	2600	t	2026-03-17 09:09:43.554823	2026-03-17 09:09:43.554825	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0213-1.jpg
20855	Aura, Liker kadulja 33% vol	1R00218-45	2600	t	2026-03-17 09:09:43.55483	2026-03-17 09:09:43.554833	47	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00218-1.jpg
20856	Aura, Liker maslina I badem 25,8%vol	1R0207-46	2600	t	2026-03-17 09:09:43.554838	2026-03-17 09:09:43.55484	64	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0207-1.jpg
20857	Aura, Liker medimela 33,8%vol	1R0216-47	2600	t	2026-03-17 09:09:43.554845	2026-03-17 09:09:43.554848	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0216-1.jpg
20859	Aura, Rakija Biska 37,5% vol	1R202-49	2600	t	2026-03-17 09:09:43.55486	2026-03-17 09:09:43.554863	166	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R202.jpg
20860	Aura, Liker Medenica 29,3%	1R0206-50	2600	t	2026-03-17 09:09:43.554868	2026-03-17 09:09:43.55487	130	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0206.jpg
20861	Roxanich, SuperIstrian	1V0363-51	4100	t	2026-03-17 09:09:43.554875	2026-03-17 09:09:43.554878	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/RX_SUPIST2.jpg
20862	Košutić, Graševina Familia Magnum	1VN471501-52	1845	t	2026-03-17 09:09:43.554883	2026-03-17 09:09:43.554885	23	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/kosutic-gras-famil-magnum.jpg
20863	Coronica, Merlot	1V6632141-53	2104	t	2026-03-17 09:09:43.554891	2026-03-17 09:09:43.554893	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/coronica-merlot.jpg
20864	Nordés, Atlantic Galician Gin 40%vol	1R0354-54	3130	t	2026-03-17 09:09:43.554898	2026-03-17 09:09:43.5549	297	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0354-1.jpg
20865	Lazzaris, Mostarda Veneta 370 gr	GRUPA67-55	10000	t	2026-03-17 09:09:43.554906	2026-03-17 09:09:43.554908	39	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/lazzaris-mv.jpg
20866	Filipec, Bermet	1L0005-56	2400	t	2026-03-17 09:09:43.554914	2026-03-17 09:09:43.554916	2	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1L0007.jpg
20867	Silvio Carta, Limonello Ricetta Originale liquere liker	1R0502-57	2250	t	2026-03-17 09:09:43.554922	2026-03-17 09:09:43.554924	120	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/silvio-carta_HD_13-Limonello-2.jpg
20868	Pilloni Mirto liquere liker	1R0501-58	2500	t	2026-03-17 09:09:43.554929	2026-03-17 09:09:43.554933	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/silvio-carta_mini_16-mirto-pilloni.jpg
20869	Silvio Carta Bomba Carta Amaro	1R0525-59	4200	t	2026-03-17 09:09:43.55494	2026-03-17 09:09:43.554943	24	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bomba-s-carta-w.jpg
20870	Silvio Carta Vermouth Servito Bianco	1R0516-60	661	t	2026-03-17 09:09:43.554951	2026-03-17 09:09:43.554953	7	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0508.jpg
20871	Salentein, Barrel Selection Malbec	1VN990-61	1495	t	2026-03-17 09:09:43.55496	2026-03-17 09:09:43.554963	285	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN990.jpg
20872	Raventos i Blanc, De Nit Rose Extra Brut	1ŠN604-62	2130	t	2026-03-17 09:09:43.554971	2026-03-17 09:09:43.554974	53	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1ŠN604.jpg
20873	A Mano, Bianco	1VN209-63	730	t	2026-03-17 09:09:43.554981	2026-03-17 09:09:43.554983	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN209.png
20874	A Mano, Prima Mano Primitivo	1VN116-64	2243	t	2026-03-17 09:09:43.554989	2026-03-17 09:09:43.554992	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN116.png
20875	A Mano, Primitivo	1VN78-65	990	t	2026-03-17 09:09:43.554998	2026-03-17 09:09:43.555	372	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN78.png
20876	A Mano, Rosato	1VN418-66	928	t	2026-03-17 09:09:43.555006	2026-03-17 09:09:43.555009	38	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN418.png
20877	Anciano, Gran Reserva 7 Y.O.	1VN1011-67	883	t	2026-03-17 09:09:43.555015	2026-03-17 09:09:43.555017	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1011.jpg
20878	Anciano, Reserva 5 Y.O.	1VN1010-68	717	t	2026-03-17 09:09:43.555023	2026-03-17 09:09:43.555026	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1010.jpg
20879	Anciano, Reserva 7 Y.O. Magnum	1VN1009-69	1195	t	2026-03-17 09:09:43.555032	2026-03-17 09:09:43.555034	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1009.jpg
20880	Antinori, Peppoli, Chianti Classico	1VN87-70	1850	t	2026-03-17 09:09:43.55504	2026-03-17 09:09:43.555042	459	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN87.png
20881	Antinori, Villa Bianco	1VN196-71	1100	t	2026-03-17 09:09:43.555048	2026-03-17 09:09:43.55505	52	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN196.png
20882	Atalaya, Alaya Tierra	1VN804-72	3050	t	2026-03-17 09:09:43.555056	2026-03-17 09:09:43.555058	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/atalaya-ti.jpg
20883	Atalaya, La Atalaya del Camino	1VN1142-73	1580	t	2026-03-17 09:09:43.555064	2026-03-17 09:09:43.555067	28	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/il-camino.jpg
20884	Atalaya, Laya	1VN803-74	795	t	2026-03-17 09:09:43.555072	2026-03-17 09:09:43.555075	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/atalaya-laya.jpg
20885	Balthasar Ress, Orange	1VN1077-75	2854	t	2026-03-17 09:09:43.555081	2026-03-17 09:09:43.555083	1	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1077.jpg
20886	Balthasar Ress, Riesling "23"	1VN1076-76	2854	t	2026-03-17 09:09:43.555089	2026-03-17 09:09:43.555091	26	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1076.jpg
20887	Barbeito, Madeira Boal Reserva Velha 10 Y.O.	1PN13-77	3783	t	2026-03-17 09:09:43.555097	2026-03-17 09:09:43.555099	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN13.jpg
20888	Barbeito, Madeira Malvasia Reserva 5 Y.O.	1PN12-78	1128	t	2026-03-17 09:09:43.555105	2026-03-17 09:09:43.555108	50	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN12.jpg
20889	Barbeito, Madeira 3 Y.O. Medium Dry	1PN52-79	1281	t	2026-03-17 09:09:43.555114	2026-03-17 09:09:43.555116	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN52.jpg
20890	Barbeito, Madeira Rainwater Reserva 5 Y.O. Medium Dry	1PN50-80	1168	t	2026-03-17 09:09:43.555122	2026-03-17 09:09:43.555125	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN50.jpg
20891	Barbeito, Madeira Tinta Negra 3 Y.O. Medium Sweet	1PN51-81	4380	t	2026-03-17 09:09:43.55513	2026-03-17 09:09:43.555133	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN51.jpg
20892	Barbeito, Madeira Veramar Reserva 5 Y.O. Medium Sweet	1PN10-82	1261	t	2026-03-17 09:09:43.555139	2026-03-17 09:09:43.555141	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN10.jpg
20893	Chateau de Beaucastel, Chateauneuf du Pape Blanc	1VN722-83	7910	t	2026-03-17 09:09:43.555147	2026-03-17 09:09:43.555149	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN722.png
20894	Chateau de Beaucastel, Coudoulet de Beaucastel Blanc	1VN826-1-84	2767	t	2026-03-17 09:09:43.555155	2026-03-17 09:09:43.555157	30	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN826-1.png
20895	Chateau de Beaucastel, Cotes du Rhone Coudoulet de Beaucastel Rouge	1VN1113-7-85	3650	t	2026-03-17 09:09:43.555163	2026-03-17 09:09:43.555165	48	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1113.png
20896	Bouvet Brut Blanc 1851	1ŠN601-86	928	t	2026-03-17 09:09:43.555171	2026-03-17 09:09:43.555174	9	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/brut-1851.jpg
20897	Bouvet Ladubay, Zero Brut Nature Vintage	1ŠN116-87	1780	t	2026-03-17 09:09:43.55518	2026-03-17 09:09:43.555182	21	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-zero1.jpg
20898	Bouvet Ladubay, Le Nompareille blanc	1VN906-88	1845	t	2026-03-17 09:09:43.555188	2026-03-17 09:09:43.55519	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-blanc.jpg
20899	Bouvet Ladubay, Les Nonpareils rouge Saumur Champigny	1ŠN117-89	2416	t	2026-03-17 09:09:43.555196	2026-03-17 09:09:43.555199	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/saumur-champigny.jpg
20900	Bouvet Ladubay, Rubis Excellence Demi Sec	1ŠN56-90	1045	t	2026-03-17 09:09:43.555205	2026-03-17 09:09:43.555207	17	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-rubis.jpg
20901	Bouvet Ladubay, Saphir Brut Vintage Magnum	1ŠN82-91	3130	t	2026-03-17 09:09:43.555217	2026-03-17 09:09:43.55522	27	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-magnum-saphir.jpg
20902	Briottet, Armagnac VSOP 40%vol	1R0424-92	3119	t	2026-03-17 09:09:43.555226	2026-03-17 09:09:43.555228	38	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0424.jpg
20903	Briottet, Calvados VSOP 40%vol	1R0427-93	3700	t	2026-03-17 09:09:43.555234	2026-03-17 09:09:43.555237	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0427.jpg
20904	Briottet, Cognac XO Grande 40%vol	1R0426-94	7698	t	2026-03-17 09:09:43.555242	2026-03-17 09:09:43.555245	36	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0426.jpg
20905	Briottet, Creme a la Fraise Des Bois/Šum.JAGODE 18%vol	1R0409-95	1950	t	2026-03-17 09:09:43.555251	2026-03-17 09:09:43.555253	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0409.jpg
20906	Briottet, Creme d'Abricot/MARELICA liker	1R0400-96	1460	t	2026-03-17 09:09:43.555259	2026-03-17 09:09:43.555261	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0400.jpg
20907	Briottet, Creme de Banane/BANANA liker	1R0462-97	1566	t	2026-03-17 09:09:43.555267	2026-03-17 09:09:43.555269	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0462.jpg
20908	Briottet, Creme de Bergamote/BERGAMOT 18%vol	1R0401-98	1460	t	2026-03-17 09:09:43.555275	2026-03-17 09:09:43.555277	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0401.jpg
20909	Briottet, Creme de Cacao Blanc/KAKAO BIJELI 25%vol	1R0403-99	1460	t	2026-03-17 09:09:43.555283	2026-03-17 09:09:43.555285	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0403.jpg
20910	Briottet, Creme de Cassis de Dijon/CRNI RIBIZ 15%vol	1R0421-100	1320	t	2026-03-17 09:09:43.555291	2026-03-17 09:09:43.555294	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0421.jpg
20911	Briottet, Creme de Cassis de Dijon/CRNI RIBIZ 20%vol	1R0420-101	1850	t	2026-03-17 09:09:43.5553	2026-03-17 09:09:43.555302	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0420.jpg
20912	Briottet, Creme de Cerise/VIŠNJA 18%vol	1R0405-102	1394	t	2026-03-17 09:09:43.555308	2026-03-17 09:09:43.55531	28	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0405.jpg
20913	Briottet, Creme de Chataigne/KESTEN 18%vol	1R0407-103	1559	t	2026-03-17 09:09:43.555316	2026-03-17 09:09:43.555318	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0407.jpg
20914	Briottet, Creme De Melon/DINJA 16%vol	1R0411-104	1911	t	2026-03-17 09:09:43.555324	2026-03-17 09:09:43.555327	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0411.jpg
20915	Briottet, Creme de Mure/DUD 18%vol	1R0410-105	1559	t	2026-03-17 09:09:43.555333	2026-03-17 09:09:43.555335	28	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0410.jpg
20916	Briottet, Creme de Peche de Vigne/VINOGR.BRESKVA 18%vol	1R0413-106	1898	t	2026-03-17 09:09:43.555341	2026-03-17 09:09:43.555343	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0413.jpg
20917	Briottet, Curacao Bleu liker	1R0461-107	1394	t	2026-03-17 09:09:43.555349	2026-03-17 09:09:43.555351	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0461.jpg
20918	Briottet, Kirsch/RAKIJA OD TREŠANJA 45%vol	1R0433-108	2707	t	2026-03-17 09:09:43.555357	2026-03-17 09:09:43.55536	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0433.jpg
20919	Briottet, Liqueur Cactus Piment Figue/KAKTUS 18%vol	1R0402-109	1394	t	2026-03-17 09:09:43.555366	2026-03-17 09:09:43.555368	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0402.jpg
20920	Briottet, Liqueur de Caramel FdS/KARAMEL sa soli 18%vol	1R0404-110	1951	t	2026-03-17 09:09:43.555374	2026-03-17 09:09:43.555376	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0404.jpg
20921	Briottet, Liqueur de Coing/DUNJA 18%vol	1R0406-111	1805	t	2026-03-17 09:09:43.555382	2026-03-17 09:09:43.555385	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0406.jpg
20922	Briottet, Liqueur de Grenade/NAR ILI ŠIPAK18%vol	1R0422-112	1394	t	2026-03-17 09:09:43.55539	2026-03-17 09:09:43.555392	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0422.jpg
20923	Briottet, Liqueur de Menthe Blanche/BIJELA MENTA 24%vol	1R0435-113	1394	t	2026-03-17 09:09:43.555398	2026-03-17 09:09:43.555401	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0435.jpg
20924	Briottet, Liqueur de Pamplemousse/RUŽIČASTI GREJP 18%vol	1R0412-114	1566	t	2026-03-17 09:09:43.555407	2026-03-17 09:09:43.555409	30	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0412.jpg
20925	Briottet, Liqueur de Poire William/KRUŠKA VILJAMOVKA 25%vol	1R0414-115	2621	t	2026-03-17 09:09:43.555415	2026-03-17 09:09:43.555418	38	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0414.jpg
20926	Briottet, Liqueur de Sapin/BOROVI IZDANCI 40%vol	1R0434-116	2621	t	2026-03-17 09:09:43.555424	2026-03-17 09:09:43.555426	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0434.jpg
20927	Briottet, Liqueur de Sureau/BAZGA 18%vol	1R0417-117	2295	t	2026-03-17 09:09:43.555432	2026-03-17 09:09:43.555434	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0417.jpg
20928	Briottet, Liqueur de Violette/LJUBIČICA 18%vol	1R0419-118	1600	t	2026-03-17 09:09:43.55544	2026-03-17 09:09:43.555442	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0419.jpg
20929	Briottet, Liqueur The Vert Hibiscus/HIBISKUS I ZELENI ČAJ 18%vol	1R0418-119	1460	t	2026-03-17 09:09:43.555448	2026-03-17 09:09:43.55545	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0418.jpg
20930	Briottet, Tres Vieux Marc "Vrlo stara" burgundska komovica 43%vol	1R0423-120	2515	t	2026-03-17 09:09:43.555456	2026-03-17 09:09:43.555459	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0423.jpg
20931	Curatolo Arini, Marsala Superiore Dolce (slatko)	1PN18-121	1280	t	2026-03-17 09:09:43.555465	2026-03-17 09:09:43.555467	12	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN18.jpg
20932	Curatolo Arini, Marsala Superiore Riserva Storica 1995	1PN70-122	3570	t	2026-03-17 09:09:43.555473	2026-03-17 09:09:43.555476	20	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN20.jpg
20933	Cà dei Frati, Ronchedone	1VN370-123	2230	t	2026-03-17 09:09:43.555482	2026-03-17 09:09:43.555484	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN370.png
20934	Ca dei Frati, I Frati Lugana	1VN367-124	1500	t	2026-03-17 09:09:43.555491	2026-03-17 09:09:43.555493	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN367.png
20935	Aguilera, La Perra Gorda	1VN578-125	883	t	2026-03-17 09:09:43.555499	2026-03-17 09:09:43.555501	23	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN578.jpg
20936	Aguilera, Quinta Milu	1VN575-126	796	t	2026-03-17 09:09:43.555507	2026-03-17 09:09:43.555509	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN575.png
20937	Caliterra, Cabernet Sauvignon Reserva KARTON 6 x 0,75 - UŠTEDA!	VIVAT0127-127	5178	t	2026-03-17 09:09:43.555516	2026-03-17 09:09:43.555531	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/caliterra-cs-res-akcija-w.jpg
20938	Caliterra, Chardonnay Reserva	1VN191-128	890	t	2026-03-17 09:09:43.555539	2026-03-17 09:09:43.555542	502	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN191.png
20939	Caliterra, Edicion Limitada A	1VN716-129	1686	t	2026-03-17 09:09:43.555548	2026-03-17 09:09:43.555551	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN716.png
20940	Errazuriz, Cabernet Sauvignon Estate Reserva	1VN105-130	914	t	2026-03-17 09:09:43.555557	2026-03-17 09:09:43.555559	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/errazuriz-cs-estate-W.jpg
20941	Errazuriz, Max Cabernet Sauvignon "150 Edition Anniversary" 2018	1VN379-131	1447	t	2026-03-17 09:09:43.555565	2026-03-17 09:09:43.555568	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/errazuriz-max-cs-150-W.jpg
20942	Errazuriz, Don Maximiano Founder's	1VN750-2-132	6862	t	2026-03-17 09:09:43.555574	2026-03-17 09:09:43.555576	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN750-2.png
20943	Burg Ravensburg, Dicker Franz Blaufrankisch Grosses Gewachs	1VN1080-133	3053	t	2026-03-17 09:09:43.555584	2026-03-17 09:09:43.555587	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/RAVENSBURG-DICKER-FRANZ-w.jpg
20944	Burg Ravensburg, Pinot noir Lochle Grosses Gewachs	1VN1079-134	3053	t	2026-03-17 09:09:43.555593	2026-03-17 09:09:43.555595	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1079.jpg
20945	Heitlinger, Pinot Blanc Eichelberg Grosses Gewachs 2015	1VN1074-135	2641	t	2026-03-17 09:09:43.555601	2026-03-17 09:09:43.555603	27	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1074.jpg
20946	Heitlinger, Pinot Noir Baden	1VN1072-136	1860	t	2026-03-17 09:09:43.555609	2026-03-17 09:09:43.555611	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/heitlinger-pinot-noir-w.jpg
20947	Heitlinger, Pinot Noir Konigsbecher Grosses Gewachs	1VN1073-137	3053	t	2026-03-17 09:09:43.555617	2026-03-17 09:09:43.555619	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1073.jpg
20948	Heitlinger, Riesling Baden	1VN1078-138	1500	t	2026-03-17 09:09:43.555625	2026-03-17 09:09:43.555627	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1078.jpg
20949	Heitlinger, Riesling Schellenbrunnen Grosses Gewachs	1VN1075-139	2641	t	2026-03-17 09:09:43.555633	2026-03-17 09:09:43.555636	26	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1075.jpg
20950	Graham's, Malvedos Vintage Port	1PN32-5-140	4790	t	2026-03-17 09:09:43.555642	2026-03-17 09:09:43.555644	3	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN322.jpg
20951	Graham's, Tawny Port 20 Y.O.	1PN28-141	6690	t	2026-03-17 09:09:43.55565	2026-03-17 09:09:43.555653	39	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/GRAHAMS-PORT-20-god.-20vol-075-L-vino-w.jpg
20952	Graham's, Tawny Port 30 Y.O.	1PN29-142	12490	t	2026-03-17 09:09:43.555659	2026-03-17 09:09:43.555661	24	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/GRAHAMS-PORT-30-god.-20vol-075-L-vino-w.jpg
20953	Graham's, Tawny Port 40 Y.O.	1PN41-143	22690	t	2026-03-17 09:09:43.555668	2026-03-17 09:09:43.555671	10	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/GRAHAMS-PORT-40-god.20vol-075-L-vino-w.jpg
20954	Graham's, Port Extra Dry White	1PN33-144	1620	t	2026-03-17 09:09:43.555677	2026-03-17 09:09:43.555679	123	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN33.jpg
20955	Graham's, Port LBV 2019	1PN40-6-145	1930	t	2026-03-17 09:09:43.555685	2026-03-17 09:09:43.555688	9	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/grahams-lbv-2017.jpg
20956	Graham's, Port Royal Marriage Colheita 1982 4,5L	1PN61-146	57469	t	2026-03-17 09:09:43.555693	2026-03-17 09:09:43.555696	8	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN61.jpg
20957	Graham's, Port Single Harvest Tawny 1994	1PN60-147	11149	t	2026-03-17 09:09:43.555702	2026-03-17 09:09:43.555704	11	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN60.jpg
20958	Graham's, Port Six Grapes Reserve	1PN26-148	2190	t	2026-03-17 09:09:43.55571	2026-03-17 09:09:43.555713	190	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/six-grapes-gp-w.jpg
20959	Graham's, Port The Tawny Reserve	1PN27-149	2720	t	2026-03-17 09:09:43.555718	2026-03-17 09:09:43.555721	72	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/grahams-the-tawny-reserve-gp-w.jpg
20960	Limonio, Limonio 35%vol liquore	1RN027-150	2256	t	2026-03-17 09:09:43.555728	2026-03-17 09:09:43.55573	44	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/lim.jpg
20961	Prapian, Prosecco Valdobbiadene Superiore DOCG Brut COL DE L’UTIA	1ŠN210-151	1150	t	2026-03-17 09:09:43.555736	2026-03-17 09:09:43.555739	259	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN210.jpg
20962	Prapian, Prosecco Valdobbiadene Superiore DOCG Extra Dry COL DE L’UTIA	1ŠN68-152	1150	t	2026-03-17 09:09:43.555745	2026-03-17 09:09:43.555747	184	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/prapian-extra-dry.jpg
20963	Sacchetto, Marzemino Frizzante	1ŠN57-153	577	t	2026-03-17 09:09:43.555754	2026-03-17 09:09:43.555756	17	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN57.jpg
20964	Sacchetto, Glera "Etichetta nera" Millesimato Spumante Extra Dry	1ŠN89-154	790	t	2026-03-17 09:09:43.555762	2026-03-17 09:09:43.555765	359	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/et-nera.jpg
20965	Sacchetto, Prosecco Brut DOC	1ŠN80-155	783	t	2026-03-17 09:09:43.555771	2026-03-17 09:09:43.555773	22	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN80.jpg
20966	Sacchetto, Prosecco Frizzante DOC Piccolo 0,20	1ŠN94-1-156	370	t	2026-03-17 09:09:43.55578	2026-03-17 09:09:43.555782	403	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/1SN94-1.jpg
20967	Antinori, Montenisa Blanc de Blancs Brut Franciacorta	1ŠN756-157	3750	t	2026-03-17 09:09:43.555788	2026-03-17 09:09:43.555791	22	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bl-de-bl-montenisa.jpg
20968	Antinori, Montenisa Cuvee Royale Brut Franciacorta	1ŠN500-158	3100	t	2026-03-17 09:09:43.555797	2026-03-17 09:09:43.555799	99	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/cuvee-royale.jpg
20969	Antinori, Montenisa 'Donna Cora' Saten Brut Franciacorta	1ŠN501-159	4250	t	2026-03-17 09:09:43.555806	2026-03-17 09:09:43.555808	5	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/donna-cora.jpg
20970	Allart &amp; Fils, Brut Reserve**vidi pod Opis	VIVAT0160-160	3695	t	2026-03-17 09:09:43.555815	2026-03-17 09:09:43.555817	27	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN502.jpg
20971	Ferrari, Maximum Rose Brut DOC	1ŠN404-161	2522	t	2026-03-17 09:09:43.555823	2026-03-17 09:09:43.555826	15	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN404.jpg
20972	Ferrari, Perle Brut Vintage	1ŠN405-162	2966	t	2026-03-17 09:09:43.555832	2026-03-17 09:09:43.555834	19	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN405.jpg
20973	Louis Barthelemy, Amethyste Champagne Brut	1ŠN59-163	3695	t	2026-03-17 09:09:43.55584	2026-03-17 09:09:43.555842	83	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN59.jpg
20974	Louis Barthelemy, Rubis Champagne Brut	1ŠN71-164	4250	t	2026-03-17 09:09:43.555848	2026-03-17 09:09:43.55585	11	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN71.jpg
20975	Louis Barthelemy, Topaze Champagne Zero Dosage	1ŠN118-165	4250	t	2026-03-17 09:09:43.555856	2026-03-17 09:09:43.555858	6	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN118.jpg
20976	Monte Zovo, Amarone della Valpolicella DOCG	1VN503-166	4660	t	2026-03-17 09:09:43.555864	2026-03-17 09:09:43.555867	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN503.png
20977	Monte Zovo, Ca' Linverno Rosso	1VN672-167	2630	t	2026-03-17 09:09:43.555873	2026-03-17 09:09:43.555875	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN969.png
20978	Monte Zovo, Oltremonte Sauvignon blanc	1VN556-168	1740	t	2026-03-17 09:09:43.555881	2026-03-17 09:09:43.555883	52	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN556.png
20979	Alianca, Alabastro Reserva Tinto	1VN654-169	1062	t	2026-03-17 09:09:43.555889	2026-03-17 09:09:43.555891	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN654.jpg
20980	Alianca, Quatro Ventos Superior Duoro	1VN652-170	922	t	2026-03-17 09:09:43.555897	2026-03-17 09:09:43.555899	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN652.jpg
20981	Bacalhoa, JP Azeitao Tinto	1VN656-171	650	t	2026-03-17 09:09:43.555905	2026-03-17 09:09:43.555907	1395	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN656.jpg
20982	Alianca, Quinta da Garrida Branco	1VN835-172	836	t	2026-03-17 09:09:43.555914	2026-03-17 09:09:43.555917	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN835.jpg
20983	Bacalhoa, Quinta da Garrida Reserva Tinto Dao	1VN837-173	929	t	2026-03-17 09:09:43.555923	2026-03-17 09:09:43.555925	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN837.jpg
20984	Bacalhoa Quinta da Terrugem Alentejo	1VN655-174	1725	t	2026-03-17 09:09:43.555931	2026-03-17 09:09:43.555933	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/quintadaterrug-w.jpg
20985	Alianca, Casal Mendes Rose	1VN649-175	695	t	2026-03-17 09:09:43.555941	2026-03-17 09:09:43.555944	29	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/casal-mendes-rose-w.jpg
20986	Alianca, Casal Mendes Vinho Verde	1VN650-176	720	t	2026-03-17 09:09:43.555949	2026-03-17 09:09:43.555952	468	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/casal-mendes-v-verde-w.jpg
20987	Juan Gil, 12 Meses Silver label Monastrell	1VN802-177	1560	t	2026-03-17 09:09:43.555958	2026-03-17 09:09:43.55596	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/juan-gill-12-meses.jpg
20988	Juan Gil, Can Blau	1VN932-178	11500	t	2026-03-17 09:09:43.555966	2026-03-17 09:09:43.555968	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN932.png
20989	Henri Bourgeois, La Bourgeoise Sancerre	1VN180-179	3590	t	2026-03-17 09:09:43.555974	2026-03-17 09:09:43.555976	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN180.jpg
20990	Henri Bourgeois, Sancerre Blanc	1VN179-1-180	2790	t	2026-03-17 09:09:43.555982	2026-03-17 09:09:43.555985	141	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/henri-bourgeois-sancerre-blanc.jpg
20991	Henri Bourgeois, Petit Bourgeois Sauvignon Blanc	1VN817-181	1280	t	2026-03-17 09:09:43.555991	2026-03-17 09:09:43.555993	197	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/H.BOURGEOIS-PETIT-BOURGEOIS-SAUVIGNON-BLANC-w.jpg
20992	Jacopo Poli, Airone Aperitivo 17%vol liquore	1RN021-182	1590	t	2026-03-17 09:09:43.555999	2026-03-17 09:09:43.556001	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN021.jpg
20993	Jacopo Poli, Grappa Amorosa di Settembre	1RN019-183	5440	t	2026-03-17 09:09:43.556007	2026-03-17 09:09:43.55601	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN019.jpg
20994	Jacopo Poli, Arzente 40%vol	1RN037-184	5004	t	2026-03-17 09:09:43.556015	2026-03-17 09:09:43.556018	24	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN037.jpg
20995	Jacopo Poli, Baby Barrel PACK 3/1 40%vol grappa	1RN058-185	3590	t	2026-03-17 09:09:43.556024	2026-03-17 09:09:43.556026	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN058.jpg
20996	Jacopo Poli, Baby Barrel PACK 5/1 40%vol grappa	1RN023-186	5269	t	2026-03-17 09:09:43.556032	2026-03-17 09:09:43.556034	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN023.jpg
20997	Jacopo Poli, Barrique Solera 13 Y Solera 55%vol grappa	1RN003-187	5707	t	2026-03-17 09:09:43.55604	2026-03-17 09:09:43.556043	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN003.jpg
20998	Jacopo Poli, Bomb Crema All'uovo 17%vol liquore	1RN034-188	2190	t	2026-03-17 09:09:43.556048	2026-03-17 09:09:43.556051	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN034.jpg
20999	Jacopo Poli, Ciok 17%vol liquore al Cocao	1RN018-189	2190	t	2026-03-17 09:09:43.556056	2026-03-17 09:09:43.556059	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN018.jpg
21000	Jacopo Poli, Due Barili 40%vol grappa	1RN055-190	4340	t	2026-03-17 09:09:43.556065	2026-03-17 09:09:43.556067	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN055.jpg
21001	Jacopo Poli, Elisir Camomilla 30%vol liquore	1RN053-191	2350	t	2026-03-17 09:09:43.556073	2026-03-17 09:09:43.556075	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN053.jpg
21002	Jacopo Poli, Elixir Limone 27%vol liquore	1RN052-192	1890	t	2026-03-17 09:09:43.556081	2026-03-17 09:09:43.556084	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN052.jpg
21003	Jacopo Poli, Marconi 46 dry Gin 46%vol	1RN050-193	3690	t	2026-03-17 09:09:43.556089	2026-03-17 09:09:43.556092	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN050.jpg
21004	Jacopo Poli, El Barili di Sassicaia 40vol% grappa	1RN009-194	8100	t	2026-03-17 09:09:43.556098	2026-03-17 09:09:43.5561	30	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN009.jpg
21005	Jacopo Poli, La Première 46%vol grappa	1RN060-195	13936	t	2026-03-17 09:09:43.556107	2026-03-17 09:09:43.556109	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN060.jpg
21006	Jacopo Poli, 6 Poli Grappa na metalnom stalku	1RN059-196	15130	t	2026-03-17 09:09:43.556115	2026-03-17 09:09:43.556117	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN059.jpg
21007	Jacopo Poli, Miele 35%vol liquore	1RN015-197	2120	t	2026-03-17 09:09:43.556123	2026-03-17 09:09:43.556125	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN015.jpg
21008	Jacopo Poli, Mirtillo 28%vol liquore	1RN016-198	2000	t	2026-03-17 09:09:43.556131	2026-03-17 09:09:43.556133	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN016.jpg
21009	Jacopo Poli, Moka Crema Al Caffe 17%vol liquore	1RN014-199	2190	t	2026-03-17 09:09:43.556139	2026-03-17 09:09:43.556142	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN014.jpg
21010	Jacopo Poli, Pauillac 46%vol grappa	1RN036-200	9689	t	2026-03-17 09:09:43.556148	2026-03-17 09:09:43.55615	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN036.jpg
21011	Jacopo Poli, Pere di Polo 40%vol voćna rakija	1RN025-201	2986	t	2026-03-17 09:09:43.556156	2026-03-17 09:09:43.556158	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN025.jpg
21012	Jacopo Poli, PO di Poli' Morbida Moscato 40%vol grappa u metalnoj tubi	1RN004-202	3280	t	2026-03-17 09:09:43.556164	2026-03-17 09:09:43.556166	42	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/poli-morbidaW.jpg
21013	Jacopo Poli, Prugna Di Poli 40%vol liquore	1RN026-203	2000	t	2026-03-17 09:09:43.556172	2026-03-17 09:09:43.556174	89	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN026.jpg
21014	Jacopo Poli, Ruta 40%vol grappa	1RN017-204	2120	t	2026-03-17 09:09:43.55618	2026-03-17 09:09:43.556183	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN017.jpg
21015	Jacopo Poli, Sarpa di Poli 40%vol grappa u metalnoj tubi	1RN006-205	2840	t	2026-03-17 09:09:43.556189	2026-03-17 09:09:43.556191	30	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN006.jpg
21016	Jacopo Poli, Grappa Sarpa di Poli Big Mama 3l	1RN008-206	11000	t	2026-03-17 09:09:43.556197	2026-03-17 09:09:43.5562	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN008.jpg
21017	Jacopo Poli, Sarpa Oro di Poli Barrique 40%vol grappa u metalnoj tubi	1RN010-207	3060	t	2026-03-17 09:09:43.556205	2026-03-17 09:09:43.556208	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN010.jpg
21018	Jacopo Poli, UvaViva Rossa Americana 40%vol grappa	1RN057-208	3165	t	2026-03-17 09:09:43.556214	2026-03-17 09:09:43.556216	29	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN057.jpg
21019	Jacopo Poli, Vaca Mora Amaro 32%vol liquore	1RN051-209	2000	t	2026-03-17 09:09:43.556222	2026-03-17 09:09:43.556224	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN051.jpg
21020	Masi, Serego Alighieri Monte Piazzo Valpolicella Classico Superiore	1VN864-210	2740	t	2026-03-17 09:09:43.55623	2026-03-17 09:09:43.556233	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN864.png
21021	Masi, Toar Valpolicella Classico Superiore	1VN865-211	1792	t	2026-03-17 09:09:43.556238	2026-03-17 09:09:43.556241	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN865.png
21022	Masi, Amarone Costasera della Valpolicella Classico Riserva	1VN666-8-212	6560	t	2026-03-17 09:09:43.556247	2026-03-17 09:09:43.556249	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN666-3.png
21023	Masi, Angelorum Recioto della Valpolicella Classico	1VN507-213	3270	t	2026-03-17 09:09:43.556255	2026-03-17 09:09:43.556257	17	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN507.png
21024	Masi, Brolo di Campofiorin Oro	1VN552-214	1818	t	2026-03-17 09:09:43.556263	2026-03-17 09:09:43.556265	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN552.png
21025	Masi, Campolongo di Torbe Amarone della Valpolicella Classico	1VN1136-1-215	13339	t	2026-03-17 09:09:43.556271	2026-03-17 09:09:43.556273	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1136.png
21026	Masi, Grandarella	1VN67-216	2376	t	2026-03-17 09:09:43.556279	2026-03-17 09:09:43.556281	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN67.png
21027	Masi, Serego Alighieri Possessioni Bianco	1VN66-217	1270	t	2026-03-17 09:09:43.556289	2026-03-17 09:09:43.556291	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN66.png
21028	Masi, Serego Alighieri Vaio Amarone della Valpolicella Classico	1VN568-6-218	7480	t	2026-03-17 09:09:43.556297	2026-03-17 09:09:43.556299	47	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN568-2.png
21029	MG, Gin MG Rosa Strawberry 37,5%vol	1R03701-219	1261	t	2026-03-17 09:09:43.556305	2026-03-17 09:09:43.556308	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R03701.jpg
21030	MG, Master's Pink Rose Gin Strawberry-Raspberry 37,5%vol	1R03702-220	2124	t	2026-03-17 09:09:43.556314	2026-03-17 09:09:43.556317	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R03702.jpg
21031	Mg Spirit Gin Tonic 5,5%vol Ready to drink	1R0303-221	219	t	2026-03-17 09:09:43.556322	2026-03-17 09:09:43.556325	1276	DESTILATI > GIN	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/mg-spirit-gintonic.jpg
21032	Mg Spirit Mojito 5,5%vol Ready to drink	1R0304-222	219	t	2026-03-17 09:09:43.55633	2026-03-17 09:09:43.556333	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/mg-mojito.jpg
21033	MG, Mg Spirit Vodka Grapefruit 5,5%vol	1R0302-223	212	t	2026-03-17 09:09:43.556338	2026-03-17 09:09:43.556341	26	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0302.jpg
21034	Mg Spirit Vodka Lime 5,5%vol Ready to drink	1R0300-224	212	t	2026-03-17 09:09:43.556347	2026-03-17 09:09:43.55635	37	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0300.jpg
21035	Mg Tonica tonik - karton od 24 bočice 0,275L	VIVAT0225-225	4104	t	2026-03-17 09:09:43.556356	2026-03-17 09:09:43.556358	29	DESTILATI > GIN	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/MG-TONIC-KARTON-OD-24-KOM-W.jpg
21036	Ron Cana del Caribe aged Rum	1R0310-226	1113	t	2026-03-17 09:09:43.556364	2026-03-17 09:09:43.556366	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0310.jpg
21037	Ron Cana del Caribe white Rum	1R0309-227	995	t	2026-03-17 09:09:43.556372	2026-03-17 09:09:43.556375	267	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/ron-cana-del-caribe.jpg
21038	Col de'Salici, Prosecco Superiore Valdobbiadene Millesimato DOCG Brut	1ŠN90-228	1295	t	2026-03-17 09:09:43.55638	2026-03-17 09:09:43.556382	357	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/col-de-salici-brut-w.jpg
21039	Col de' Salici, Rose de' Salici Brut	1ŠN92-229	1030	t	2026-03-17 09:09:43.556388	2026-03-17 09:09:43.556391	18	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN92.png
21040	Tenuta di Biserno, Biserno	1VN512-10-230	14800	t	2026-03-17 09:09:43.556396	2026-03-17 09:09:43.556399	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN512-5.png
21041	Tenuta di Biserno, Lodovico 2021	1VN9810-231	49000	t	2026-03-17 09:09:43.556404	2026-03-17 09:09:43.556407	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN981-1.png
21042	Lustau, Dry Amontillado LOS ARCOS Solera Familiar sherry	1VNSHERRY18-232	995	t	2026-03-17 09:09:43.556412	2026-03-17 09:09:43.556415	24	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY18.png
21043	Lustau, Dry Oloroso 'DON NUNO' Solera Familiar Sherry	1VNSHERRY44-233	2720	t	2026-03-17 09:09:43.55642	2026-03-17 09:09:43.556422	58	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY23.jpg
21044	Lustau, Light Manzanilla "PAPIRUSA" Solera Reserva sherry	1VNSHERRY4-234	1620	t	2026-03-17 09:09:43.556428	2026-03-17 09:09:43.55643	101	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY4.png
21045	Lustau, Moscatel EMILIN Solera Familiar sherry	1VNSHERRY24-235	1526	t	2026-03-17 09:09:43.556436	2026-03-17 09:09:43.556438	39	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY24.png
21047	Lustau, Palo Cortado "PENINSULA" Sherry	1VNSHERRY16-237	2700	t	2026-03-17 09:09:43.556452	2026-03-17 09:09:43.556455	30	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY16.jpg
21048	Lustau, Vinagre de Jerez "Al Pedro Ximenez" Solera 1/5	1VINAGRE1-238	1260	t	2026-03-17 09:09:43.55646	2026-03-17 09:09:43.556462	3	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VINAGRE1.jpg
21049	Prunotto, Bansella Nizza Barbera	1VN1135-239	1780	t	2026-03-17 09:09:43.556468	2026-03-17 09:09:43.556471	118	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1135.jpg
21050	Prunotto, Barolo Bussia DOCG	1VN861-10-240	7130	t	2026-03-17 09:09:43.556476	2026-03-17 09:09:43.556478	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN861-5.jpg
21051	Prunotto, Mompertone Monferrato Magnum	1VN1061-241	3252	t	2026-03-17 09:09:43.556484	2026-03-17 09:09:43.556486	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1061.jpg
21052	Prunotto, Moscato d'Asti	1VN565-242	1450	t	2026-03-17 09:09:43.556492	2026-03-17 09:09:43.556494	587	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN565.jpg
21053	Santa Cristina, Toscana Rosso	1VANSC001-243	990	t	2026-03-17 09:09:43.5565	2026-03-17 09:09:43.556502	325	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VANSC001.jpg
21054	Santa Cristina, Vin Santo	1VN1333-244	1659	t	2026-03-17 09:09:43.556508	2026-03-17 09:09:43.55651	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN989-1.jpg
21055	Santa Cristina, Chianti Superiore DOCG	1VN480-245	1290	t	2026-03-17 09:09:43.556515	2026-03-17 09:09:43.556518	119	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/santa-cristina-ch-sup.jpg
21056	Tenuta Tignanello, Grappa Di Tignanello 42%vol	1RN001-246	4360	t	2026-03-17 09:09:43.556523	2026-03-17 09:09:43.556525	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN001.jpg
21057	Tenuta Tignanello, Chianti Classico Riserva	1VN581-247	3950	t	2026-03-17 09:09:43.556531	2026-03-17 09:09:43.556533	167	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN581.jpg
21058	Tenuta Tignanello, Tignanello 2022 ***	1VN862-10-248	14000	t	2026-03-17 09:09:43.556539	2026-03-17 09:09:43.556541	228	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN862-3.jpg
21059	Ducal, Laški Rizling 2012 - Arhiva!	1VN564-1-249	1546	t	2026-03-17 09:09:43.556546	2026-03-17 09:09:43.556549	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/ducal-laski.jpg
21060	Ducal, Renski Rizling 2012 - Arhiva!	1VN563-1-250	1971	t	2026-03-17 09:09:43.556555	2026-03-17 09:09:43.556557	29	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/ducal-renski.jpg
21061	Freixenet, Legero Alcohol-free	1ŠN510-251	757	t	2026-03-17 09:09:43.556563	2026-03-17 09:09:43.556565	17	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN510.png
21062	Freixenet, Italian Rose Extra Dry	1ŠN303-252	1141	t	2026-03-17 09:09:43.556571	2026-03-17 09:09:43.556573	20	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN303.png
21063	Freixenet, Mia Moscato Rose Dulce	1Š0265-253	670	t	2026-03-17 09:09:43.556579	2026-03-17 09:09:43.556582	39	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S0265.png
21064	Oroya Sushi wine	1VN89-254	795	t	2026-03-17 09:09:43.556587	2026-03-17 09:09:43.55659	213	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN89.jpg
21065	Segura Viudas, Aria Brut Nature	1Š0268-255	995	t	2026-03-17 09:09:43.556596	2026-03-17 09:09:43.556598	32	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S0268.jpg
21066	Senorio de Orgaz Brut	1Š0255-256	620	t	2026-03-17 09:09:43.556604	2026-03-17 09:09:43.556606	36	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/senorio-brut.jpg
21067	Senorio de Orgaz Semi Seco	1Š0256-257	570	t	2026-03-17 09:09:43.556612	2026-03-17 09:09:43.556615	22	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/orgaz-demi.jpg
21068	Nicolas Perrin, Hermitage Blanc	1VN818-258	4552	t	2026-03-17 09:09:43.556624	2026-03-17 09:09:43.556628	20	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN818.png
21069	Tenuta Sette Ponti, Orma	1VN561-259	5461	t	2026-03-17 09:09:43.556636	2026-03-17 09:09:43.556639	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN561.jpg
21070	Domaine Laroche, Chablis Premier Cru Vaucoupin	1VN928-260	3650	t	2026-03-17 09:09:43.556645	2026-03-17 09:09:43.556648	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN928.jpg
21071	Domaine Laroche, Chablis Premier Cru Les Fourchaumes	1VN75-3-261	5500	t	2026-03-17 09:09:43.556653	2026-03-17 09:09:43.556656	90	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN75.jpg
21072	Domaine Laroche, Chablis St Martin	1VN74-262	2440	t	2026-03-17 09:09:43.556661	2026-03-17 09:09:43.556664	558	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN74.jpg
21073	Laroche L'Avenir, Pinotage Provenance Rouge	1VN815-263	2117	t	2026-03-17 09:09:43.55667	2026-03-17 09:09:43.556672	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN815.jpg
21074	La Braccesca, Bramasole Syrah	1VN998-264	4650	t	2026-03-17 09:09:43.556678	2026-03-17 09:09:43.55668	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN998.png
21075	La Reserve de Sociando-Mallet rouge, Haut- Medoc	1VN1146-265	2588	t	2026-03-17 09:09:43.556686	2026-03-17 09:09:43.556689	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1146.png
21076	Freixenet, Ice Semi	1Š002204-266	1029	t	2026-03-17 09:09:43.556695	2026-03-17 09:09:43.556697	13	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S002204.png
21077	Freixenet, Ice Rose Semi	1Š002205-267	1029	t	2026-03-17 09:09:43.556703	2026-03-17 09:09:43.556705	26	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S002205.png
21078	Freixenet, Brut Vintage Reserva	1ŠBRNT-268	962	t	2026-03-17 09:09:43.556711	2026-03-17 09:09:43.556714	33	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SBRNT.png
21079	Perrin, Clos des Tourelles Gigondas Rouge	1VN915-2-269	8190	t	2026-03-17 09:09:43.55672	2026-03-17 09:09:43.556722	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/PERRIN-CLOS-DES-TOURELLES-GIGONDAS-ROUGE-w.jpg
21080	Perrin, Gigondas L'Argnee Vieilles Vignes Rouge	1VN916-1-270	5535	t	2026-03-17 09:09:43.556728	2026-03-17 09:09:43.556731	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN9161.jpg
21081	Perrin, Gigondas La Gille Rouge	1VN605-271	2840	t	2026-03-17 09:09:43.556736	2026-03-17 09:09:43.556739	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN605.jpg
21082	Perrin, L'Oustalet blanc	1VN606-272	782	t	2026-03-17 09:09:43.556745	2026-03-17 09:09:43.556747	18	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN606.jpg
21083	Perrin, L'Oustalet rouge	1VN607-273	782	t	2026-03-17 09:09:43.556753	2026-03-17 09:09:43.556756	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN607.jpg
21084	Gut Hermannsberg, Riesling Rotenberg GG	1VN1069-274	4500	t	2026-03-17 09:09:43.556762	2026-03-17 09:09:43.556764	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1069.jpg
21085	Gut Hermannsberg, Riesling Steinterrassen	1VN1067-275	2920	t	2026-03-17 09:09:43.55677	2026-03-17 09:09:43.556772	9	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1067.jpg
21086	Gut Hermannsberg, Riesling Vom Vulkan	1VN1066-276	2790	t	2026-03-17 09:09:43.556778	2026-03-17 09:09:43.55678	76	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1066.jpg
21087	Gut Hermannsberg, Weissburgunder Halbstuck	1VN1068-277	2495	t	2026-03-17 09:09:43.556786	2026-03-17 09:09:43.556788	1	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1068.jpg
21088	Castel Juval, Gneis	1VN518-278	1526	t	2026-03-17 09:09:43.556794	2026-03-17 09:09:43.556796	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN518.jpg
21089	Manincor, Cassiano 2021	1VN560-1-279	4295	t	2026-03-17 09:09:43.556802	2026-03-17 09:09:43.556804	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN560.jpg
21090	Manincor, Eichhorn Pinot Bianc	1VN559-280	2057	t	2026-03-17 09:09:43.556811	2026-03-17 09:09:43.556813	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN559.jpg
21091	Manincor, Reserve del Conte	1VN558-281	2300	t	2026-03-17 09:09:43.556819	2026-03-17 09:09:43.556821	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN558.png
21092	Manincor, La Contessa	1VN557-1-282	2420	t	2026-03-17 09:09:43.556827	2026-03-17 09:09:43.556829	43	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/manincor-la-contessa-w.jpg
21093	Matua, Lands &amp; Legends Central Otago Pinot Noir	1VN694-283	2104	t	2026-03-17 09:09:43.556835	2026-03-17 09:09:43.556837	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN694.png
21094	Matua, Marlborough Pinot Noir	1VN693-284	1420	t	2026-03-17 09:09:43.556843	2026-03-17 09:09:43.556845	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN693.png
21095	Monasterio, Crianza	1VN1045-285	703	t	2026-03-17 09:09:43.556851	2026-03-17 09:09:43.556854	25	VINO > CR(VE)NA	
21096	Monasterio, Garnacha Old Vine Special Selection	1VN1048-286	1128	t	2026-03-17 09:09:43.55686	2026-03-17 09:09:43.556862	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1045.png
21097	Monasterio, Gran Reserva	1VN1047-287	1128	t	2026-03-17 09:09:43.556868	2026-03-17 09:09:43.55687	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/monasterio-gran-reserva-w.jpg
21098	Kracher &amp; Liliac, Ice Wine	1VN1024-288	2495	t	2026-03-17 09:09:43.556876	2026-03-17 09:09:43.556878	25	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1024.jpg
21099	Kracher, Auslese Traminer	1VN1020-289	1480	t	2026-03-17 09:09:43.556884	2026-03-17 09:09:43.556886	3	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1020.jpg
21100	Kracher, Beerenauslese Cuvee	1VN1019-1-290	2130	t	2026-03-17 09:09:43.556892	2026-03-17 09:09:43.556895	8	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1019.jpg
21101	Maison Les Alexandrins, Condrieu	1VN1112-291	4420	t	2026-03-17 09:09:43.5569	2026-03-17 09:09:43.556903	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Condrieu_75_.jpg
21102	Maison Les Alexandrins, Hermitage Rouge	1VN720-2-292	6500	t	2026-03-17 09:09:43.556909	2026-03-17 09:09:43.556911	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/maison-les-alexan-hermitage-rouge-w.jpg
21103	Ghost Vodka, Silver 40%vol	1R0351-293	3185	t	2026-03-17 09:09:43.556917	2026-03-17 09:09:43.556919	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0351.jpg
21104	Ghost Vodka, Gold 40%vol	1R0350-294	3185	t	2026-03-17 09:09:43.556925	2026-03-17 09:09:43.556928	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0350.jpg
21105	Ghost Vodka, Union Jack 40%vol	1R0353-295	3185	t	2026-03-17 09:09:43.556933	2026-03-17 09:09:43.556936	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/ghost_vodka-jack.jpg
21106	Golles, Marielle / Rakija od marelice 43%vol	1R0701-296	9200	t	2026-03-17 09:09:43.556942	2026-03-17 09:09:43.556944	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0701.jpg
21107	Golles, Balsam Apfel Essig / Jabuka balzamičan ocat	1H017-297	1870	t	2026-03-17 09:09:43.55695	2026-03-17 09:09:43.556952	2	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H017.jpg
21108	Golles, Balsam Birnen Essig / Kruška balzamičan ocat	1H016-298	1550	t	2026-03-17 09:09:43.556958	2026-03-17 09:09:43.556961	7	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H016.jpg
21109	Golles, Balsam Wein Essig / Vinski TBA balzamičan ocat u raspršivaču	1H020-299	1168	t	2026-03-17 09:09:43.556967	2026-03-17 09:09:43.556969	40	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/goelles-weinessig.jpg
21110	Golles, Balsam Weisser Essig / Bijeli vinski balzamičan ocat	1H200-300	1095	t	2026-03-17 09:09:43.556975	2026-03-17 09:09:43.556977	5	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H200.jpg
21111	Golles, Balsam XA Apfel Essig / Balzamičan ocat	1H021-301	8229	t	2026-03-17 09:09:43.556985	2026-03-17 09:09:43.556987	6	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H021.jpg
21112	Golles, Balzamičan ocat od kruške	1H201-302	22500	t	2026-03-17 09:09:43.556993	2026-03-17 09:09:43.556995	32	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H201.jpg
21113	Golles, Essig Bier / Ocat od piva	1H054-303	730	t	2026-03-17 09:09:43.557001	2026-03-17 09:09:43.557004	2	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H054.jpg
21114	Golles, Essig Birnen / Ocat od kruške	1H058-304	730	t	2026-03-17 09:09:43.55701	2026-03-17 09:09:43.557012	1	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H058.jpg
21115	Golles, Essig Himbeer / Ocat od maline	1H053-305	1168	t	2026-03-17 09:09:43.557018	2026-03-17 09:09:43.55702	10	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H053.jpg
21116	Golles, Essig Jelly Apple / Gel (žele) od octa jabuke	1H006600-306	730	t	2026-03-17 09:09:43.557026	2026-03-17 09:09:43.557028	40	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H006600.jpg
21117	Golles, Essig Jelly Himbeer / Gel (žele) od octa maline	1H202-307	730	t	2026-03-17 09:09:43.557034	2026-03-17 09:09:43.557037	20	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H202.jpg
21118	Golles, Essig Marillen / Ocat od marelica	1H002360-308	836	t	2026-03-17 09:09:43.557043	2026-03-17 09:09:43.557045	11	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H002360.jpg
21119	Golles, Essig Quitten / Ocat od dunja	1H001970-309	836	t	2026-03-17 09:09:43.557051	2026-03-17 09:09:43.557054	27	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H001970.jpg
21120	Golles, Essig Rotwein Zweigelt / Vinski Zweigelt ocat	1H0600-310	850	t	2026-03-17 09:09:43.55706	2026-03-17 09:09:43.557062	6	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H0600.jpg
21121	Golles, Essig Tomaten/ Ocat od rajčice	1H703-311	1095	t	2026-03-17 09:09:43.557068	2026-03-17 09:09:43.557071	7	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H703.jpg
21122	Golles, Essig Zwetschken / Ocat od šljive	1H0601-312	836	t	2026-03-17 09:09:43.557077	2026-03-17 09:09:43.557079	31	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H0601.jpg
21123	Gölles, Hands On Gin 46,5%vol.	1R0700-313	4350	t	2026-03-17 09:09:43.557085	2026-03-17 09:09:43.557088	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0700.jpg
21124	Gölles, Set Mediteran (ocat od rajčice,masl.ulje, balz.ocat)	1H055-314	5773	t	2026-03-17 09:09:43.557094	2026-03-17 09:09:43.557096	1	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H055.jpg
21125	Gölles, Williams / Rakija od kruške 43%vol	10R0702-315	7990	t	2026-03-17 09:09:43.557102	2026-03-17 09:09:43.557105	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/10R0702.png
21126	Heinrich, Gabarinza	1VN250-316	4413	t	2026-03-17 09:09:43.557111	2026-03-17 09:09:43.557113	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/heinrich-gabarinza-w.jpg
21127	Heinrich, Graue Freyheit	1VN973-317	3238	t	2026-03-17 09:09:43.557119	2026-03-17 09:09:43.557122	18	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN973.jpg
21128	Heinrich, Pannobile	1VN246-318	3013	t	2026-03-17 09:09:43.557128	2026-03-17 09:09:43.55713	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN246.jpg
21129	Heinrich, Pinot Noir	1VN902-319	1301	t	2026-03-17 09:09:43.557136	2026-03-17 09:09:43.557138	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN902.jpg
21130	Heinrich, St. Laurent	1VN249-320	1798	t	2026-03-17 09:09:43.557144	2026-03-17 09:09:43.557147	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN249.jpg
21131	Heinrich, Zweigelt	1VN245-2-321	1460	t	2026-03-17 09:09:43.557153	2026-03-17 09:09:43.557155	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN245-1.jpg
21132	Ferdinand's, Saar Dry Gin Set/3 44%vol	1R0321-322	5083	t	2026-03-17 09:09:43.557161	2026-03-17 09:09:43.557163	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0321.jpg
21133	Ferdinand's, Saar Dry Riesling Vermouth 18%vol	1R0318-323	2243	t	2026-03-17 09:09:43.55717	2026-03-17 09:09:43.557172	4	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0318.png
21134	Ferdinand's, Saar Dry Riesling Gin 44%vol	1R0316-324	3876	t	2026-03-17 09:09:43.557178	2026-03-17 09:09:43.55718	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0316.jpg
21135	Ferdinand's, Saar Gin Quince/Dunja 30%vol	1R0317-325	3876	t	2026-03-17 09:09:43.557187	2026-03-17 09:09:43.557189	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0317.png
21136	Ferdinand's, Saar White Riesling Vermouth 18%vol	1R0319-326	2495	t	2026-03-17 09:09:43.557195	2026-03-17 09:09:43.557198	1	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0319.jpg
21137	Tormaresca, Bocca di Lupo Aglianico	1VN267-1-327	6250	t	2026-03-17 09:09:43.557203	2026-03-17 09:09:43.557206	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN267-1.jpg
21138	Tormaresca, Masseria Maime Negroamaro	1VN199-1-328	2750	t	2026-03-17 09:09:43.557211	2026-03-17 09:09:43.557213	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN199.jpg
21139	Wieninger, Nussberg Alte Reben (Stare sorte)	1VN585-329	2389	t	2026-03-17 09:09:43.557219	2026-03-17 09:09:43.557221	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN585.jpg
21140	Wieninger, Nussberg Riesling	1VN974-3-330	2480	t	2026-03-17 09:09:43.557227	2026-03-17 09:09:43.557229	82	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN974.jpg
21141	Wieninger, Pinot Noir Grand Select 2020	1VN623-3-331	6100	t	2026-03-17 09:09:43.557235	2026-03-17 09:09:43.557237	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN623-1.jpg
21142	Sattlerhof, RIED Kapellenweingarten Morillon (Chardonnay)	1VN975-332	1978	t	2026-03-17 09:09:43.557243	2026-03-17 09:09:43.557245	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN975.jpg
21143	Sattlerhof, Pfarrweingarten Morillon (Chardonnay)	1VN976-333	4314	t	2026-03-17 09:09:43.55725	2026-03-17 09:09:43.557252	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN976.jpg
21144	Sattlerhof, Sauvignon Blanc Sudsteiermark	1VN811-2-334	1500	t	2026-03-17 09:09:43.557258	2026-03-17 09:09:43.55726	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN811.jpg
21145	Sattlerhof, Sudsteiermark Weißburgunder (Pinot bijeli)	1VN1013-335	10500	t	2026-03-17 09:09:43.557265	2026-03-17 09:09:43.557268	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1013.jpg
21146	Loimer, Gruner Veltliner Kaferberg	1VN318-336	3384	t	2026-03-17 09:09:43.557273	2026-03-17 09:09:43.557275	32	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN318.jpg
21147	Loimer, Gumpoldskirchen	1VN971-337	1593	t	2026-03-17 09:09:43.557282	2026-03-17 09:09:43.557284	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN971.jpg
21148	Loimer, Riesling Loiserberg Langenlois	1VN679-338	1918	t	2026-03-17 09:09:43.557289	2026-03-17 09:09:43.557291	35	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN679.jpg
21149	Loimer, Riesling Langenlois	1VN315-339	1526	t	2026-03-17 09:09:43.557297	2026-03-17 09:09:43.557299	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN315.jpg
21150	Loimer, Riesling Reserve Steinmassl	1VN449-1-340	3199	t	2026-03-17 09:09:43.557305	2026-03-17 09:09:43.557307	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN449-1.jpg
21151	Loimer, Spiegel Erste Lage Gruner Veltliner	1VN970-341	3046	t	2026-03-17 09:09:43.557312	2026-03-17 09:09:43.557315	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN970.jpg
21152	Jako vino, Bogondon cuvee	1V02541-342	990	t	2026-03-17 09:09:43.55732	2026-03-17 09:09:43.557322	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bogondon.jpg
21153	Jako vino, Godiment cuvee	1V0257221-343	870	t	2026-03-17 09:09:43.55733	2026-03-17 09:09:43.557332	70	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/godiment.jpg
21154	Jako vino, Godiment Brut Nature	1Š05214-344	1150	t	2026-03-17 09:09:43.557338	2026-03-17 09:09:43.55734	24	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/godiment-pjenusavo.jpg
21155	Jako vino, Stina Opol	1V0025601-345	1530	t	2026-03-17 09:09:43.557347	2026-03-17 09:09:43.55735	5	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0025601.jpg
21156	Jako vino, Stina Pošip Majstor	1V662020-3-346	2760	t	2026-03-17 09:09:43.557355	2026-03-17 09:09:43.557357	57	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V6652114.jpg
21157	Jako vino, Stina Pošip	1VO2052-347	2010	t	2026-03-17 09:09:43.557363	2026-03-17 09:09:43.557365	103	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VO2052.jpg
21158	Jako vino, Stina Prošek	1V020057-348	4980	t	2026-03-17 09:09:43.55737	2026-03-17 09:09:43.557372	2	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V020057.jpg
21159	Jako vino, Stina Tribidrag	1V02596-349	3750	t	2026-03-17 09:09:43.557378	2026-03-17 09:09:43.55738	40	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V02596.png
21160	Galić, Pinot Crni	1V000591-350	2000	t	2026-03-17 09:09:43.557385	2026-03-17 09:09:43.557387	93	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V000591.png
21161	Galić, Graševina	1V00057-351	1200	t	2026-03-17 09:09:43.557393	2026-03-17 09:09:43.557395	39	VINO > BIJELA	
21162	Galić, Rose	1V000592-352	1249	t	2026-03-17 09:09:43.5574	2026-03-17 09:09:43.557402	76	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V000592.jpg
21163	Galić, Sauvignon	1V00058-353	1375	t	2026-03-17 09:09:43.557408	2026-03-17 09:09:43.55741	77	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/galic_sauvignon.jpg
21164	Domaine Koquelicot, Belaigra	1V00707-354	1800	t	2026-03-17 09:09:43.557416	2026-03-17 09:09:43.557418	80	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00707.jpg
21165	Domaine Koquelicot, Epicuria	1V00705-355	1800	t	2026-03-17 09:09:43.557423	2026-03-17 09:09:43.557425	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00705.jpg
21167	Domaine Koquelicot, Kontempo Blanc de Blancs Zero Dose	1V00708-357	2200	t	2026-03-17 09:09:43.557438	2026-03-17 09:09:43.557441	17	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00708.jpg
21168	Domaine Koquelicot, Luna Blanc de Blancs Extra Brut	1V00709-358	2200	t	2026-03-17 09:09:43.557446	2026-03-17 09:09:43.557448	12	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00709.jpg
21169	Domaine Koquelicot, Nomad	1V000711-359	1800	t	2026-03-17 09:09:43.557454	2026-03-17 09:09:43.557456	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V000711.jpg
21170	Domaine Koquelicot, Santa Chiara	1V00706-360	1800	t	2026-03-17 09:09:43.557461	2026-03-17 09:09:43.557464	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00706.jpg
21171	Feravino, Miraz Frankovka	1V2251-361	1750	t	2026-03-17 09:09:43.557471	2026-03-17 09:09:43.557474	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V2251.jpg
21172	Feravino, Miraz Pinot crni	1V326522-362	1566	t	2026-03-17 09:09:43.557481	2026-03-17 09:09:43.557484	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V326522.jpg
21173	Feravino, Miraz Syrah	1V22523-363	1168	t	2026-03-17 09:09:43.557491	2026-03-17 09:09:43.557495	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V22523.jpg
21174	Kutjevo, De Gotho Pinot crni	1V236-364	1500	t	2026-03-17 09:09:43.557502	2026-03-17 09:09:43.557505	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V236.jpg
21175	Kutjevo, De Gotho Graševina	1V239-365	1490	t	2026-03-17 09:09:43.557511	2026-03-17 09:09:43.557514	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V239.jpg
21176	Kutjevo, Graševina	1V000245-366	584	t	2026-03-17 09:09:43.55752	2026-03-17 09:09:43.557522	28	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V000245.jpg
21177	Kutjevo, Maximo Bianco	1V0275-367	1320	t	2026-03-17 09:09:43.557528	2026-03-17 09:09:43.557531	9	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0275.jpg
21178	Kutjevo, Maximo Nero	1V01581-368	1325	t	2026-03-17 09:09:43.557537	2026-03-17 09:09:43.557539	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V01581.jpg
21179	Pian delle Vigne, Vignaferrovia Brunello di Montalcino Riserva	1VN1240-3-369	12000	t	2026-03-17 09:09:43.557545	2026-03-17 09:09:43.557548	41	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1125.png
21180	Pian delle Vigne, Brunello di Montalcino	1VN642-9-370	5250	t	2026-03-17 09:09:43.557553	2026-03-17 09:09:43.557556	67	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN642-4.png
21181	Pian delle Vigne, Rosso di Montalcino	1VN900-371	1852	t	2026-03-17 09:09:43.557562	2026-03-17 09:09:43.557564	23	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN900.png
21182	Salvela, Buža 0,50 L	1H00460-372	2200	t	2026-03-17 09:09:43.55757	2026-03-17 09:09:43.557572	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/salvela-buza-250-w.jpg
21183	Salvela, Istarska Bjelica 0,25 L	1H00452-373	1400	t	2026-03-17 09:09:43.557583	2026-03-17 09:09:43.557586	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/salvela-bjelica-250-w.jpg
21184	Salvela, Punta Cissana ekstra djevičansko maslin. ulje	1H00465-374	2800	t	2026-03-17 09:09:43.557593	2026-03-17 09:09:43.557596	18	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H00465.jpg
21185	Salvela, Pendolino	1H00457-375	690	t	2026-03-17 09:09:43.557602	2026-03-17 09:09:43.557604	31	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H00457.png
21186	Tomac, Amfora Brut Nature	1Š3396-376	3890	t	2026-03-17 09:09:43.557611	2026-03-17 09:09:43.557613	12	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S0305.jpg
21187	Tomac, Amfora Rajnski Rizling	1VN00214-377	3700	t	2026-03-17 09:09:43.557619	2026-03-17 09:09:43.557621	9	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN00214.jpg
21188	Tomac, Millennium Extra Brut	1V0338-378	1800	t	2026-03-17 09:09:43.557627	2026-03-17 09:09:43.55763	97	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0338.jpg
21189	Tomac, Pinot Crni	1V00084-379	1918	t	2026-03-17 09:09:43.557636	2026-03-17 09:09:43.557638	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00084.jpg
21190	Tomac, Diplomat Brut Nature	1Š0279-380	2570	t	2026-03-17 09:09:43.557644	2026-03-17 09:09:43.557647	77	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S0279.jpg
21191	Tomac, Rose Extra Brut	1V0334-381	1949	t	2026-03-17 09:09:43.557653	2026-03-17 09:09:43.557655	86	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0334.png
21192	Tomac, Rajnski Rizling	1V0070-382	1115	t	2026-03-17 09:09:43.557661	2026-03-17 09:09:43.557663	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0070.jpg
21193	Medea, Chardonnay	1VN3261-383	785	t	2026-03-17 09:09:43.55767	2026-03-17 09:09:43.557672	161	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN3261.jpg
21194	Medea, Malvazija	1VN3262-1-384	900	t	2026-03-17 09:09:43.557679	2026-03-17 09:09:43.557682	228	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN3262.jpg
21195	Medea, Montiron Malvazija	1VN3268-385	1600	t	2026-03-17 09:09:43.557693	2026-03-17 09:09:43.557695	131	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN3268.jpg
21196	Medea, Malvazija Brut	1Š048889-386	1060	t	2026-03-17 09:09:43.557702	2026-03-17 09:09:43.557705	84	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S048889.jpg
21197	Medea, Punta Greca Merlot	1VN32691-4-387	6850	t	2026-03-17 09:09:43.557714	2026-03-17 09:09:43.557716	92	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/punta-greca-w.jpg
21198	Medea, Rose Cuvee	1VN3263-388	785	t	2026-03-17 09:09:43.557723	2026-03-17 09:09:43.557726	63	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN3263.jpg
21199	Medea, Teran	1VN3271-389	785	t	2026-03-17 09:09:43.557734	2026-03-17 09:09:43.557737	58	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN3271.jpg
21200	Medea, Cabernet Sauvignon	1VN3266-390	785	t	2026-03-17 09:09:43.557744	2026-03-17 09:09:43.557747	136	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN3266.jpg
21201	Medea, Merlot	1VN3276-391	785	t	2026-03-17 09:09:43.557754	2026-03-17 09:09:43.557756	187	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN3276.jpg
21202	Korak, Brut Nature	1Š002-392	2750	t	2026-03-17 09:09:43.557765	2026-03-17 09:09:43.557767	13	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S002.png
21203	Korak, Chardonnay Sur lie	1V293-393	2850	t	2026-03-17 09:09:43.557776	2026-03-17 09:09:43.557779	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V293.png
21204	Korak, Pinot crni	1V535-394	2760	t	2026-03-17 09:09:43.557788	2026-03-17 09:09:43.55779	27	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V535.png
21205	Korak, Rajnski rizling	1V538-1-395	2460	t	2026-03-17 09:09:43.557797	2026-03-17 09:09:43.5578	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V538.png
21206	Korak, Sauvignon Klemenka	1V00044-396	1900	t	2026-03-17 09:09:43.557807	2026-03-17 09:09:43.55781	52	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00044.jpg
21207	Benvenuti, Corona Grande	1V04335-397	1820	t	2026-03-17 09:09:43.557816	2026-03-17 09:09:43.557818	37	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V04335.jpg
21208	Benvenuti, Malvazija Livio	1V0433-1-398	1895	t	2026-03-17 09:09:43.557824	2026-03-17 09:09:43.557827	17	VINO > BIJELA	
21209	Benvenuti, San Salvatore Malvazija	1V04334-399	3750	t	2026-03-17 09:09:43.557833	2026-03-17 09:09:43.557835	44	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V04334.jpg
21210	Benvenuti, San Salvatore Muškat	1V04333-400	3750	t	2026-03-17 09:09:43.557841	2026-03-17 09:09:43.557843	61	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V04333.jpg
21211	Benvenuti, Teran Livio	1V0432-401	2300	t	2026-03-17 09:09:43.557849	2026-03-17 09:09:43.557852	59	VINO > CR(VE)NA	
21212	Benvenuti, San Salvatore Teran	1V566214-402	2986	t	2026-03-17 09:09:43.557858	2026-03-17 09:09:43.55786	7	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V566214.jpg
21213	Tomić, Plavac Mali barrique	1V56-403	2995	t	2026-03-17 09:09:43.557867	2026-03-17 09:09:43.557869	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V56.png
21214	Tomić, Beleca	1V398-404	1215	t	2026-03-17 09:09:43.557875	2026-03-17 09:09:43.557878	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Beleca.jpg
21215	Tomić, Caplar	1V00175-405	4300	t	2026-03-17 09:09:43.557884	2026-03-17 09:09:43.557886	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00175.png
21216	Tomić, Euforija 35%vol liker	1R00397-406	2430	t	2026-03-17 09:09:43.557892	2026-03-17 09:09:43.557894	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/euforija.jpg
21217	Tomić, Hektorović Prošek	1VD1-407	2430	t	2026-03-17 09:09:43.5579	2026-03-17 09:09:43.557903	24	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VD1.png
21218	Tomić, Plavac	1V64-408	1215	t	2026-03-17 09:09:43.557908	2026-03-17 09:09:43.557911	70	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V64.png
21219	Tomić, Pošip	1V06621-409	1181	t	2026-03-17 09:09:43.557917	2026-03-17 09:09:43.557919	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V06621.png
21220	Tomić, Opolo Nobile	1V270-410	1215	t	2026-03-17 09:09:43.557925	2026-03-17 09:09:43.557927	19	VINO > ROSE	
21221	Taittinger, Brut Reserve Champagne gift pack	1ŠN105-411	4639	t	2026-03-17 09:09:43.557933	2026-03-17 09:09:43.557936	18	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN105.jpg
21222	Taittinger, Prelude Grands Crus Brut Champagne	1ŠN342-412	7400	t	2026-03-17 09:09:43.557942	2026-03-17 09:09:43.557944	15	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/TAITTINGER-PRELUDE-GRANDS-CRUS-CHAMPAGNE-brut-075-w.jpg
21223	Taittinger, Comtes de Champagne Blanc de Blancs Vintage	1ŠN336-6-413	20500	t	2026-03-17 09:09:43.55795	2026-03-17 09:09:43.557953	12	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/TAITTINGER-COMTES-BLANC-DE-BLANCS.jpg
21224	Taittinger, Brut Millesime Champagne 2016	1ŠN98-1-414	7650	t	2026-03-17 09:09:43.557958	2026-03-17 09:09:43.557961	36	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/taittinger-millesime-brut-w.jpg
21225	Kozlović, Muškat Momjanski	1V02-415	1580	t	2026-03-17 09:09:43.557967	2026-03-17 09:09:43.557969	136	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V02.jpg
21226	Kozlović, Teran	1V311-416	1710	t	2026-03-17 09:09:43.557975	2026-03-17 09:09:43.557977	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V311.jpg
21227	Kozlović, Valle	1V0315-1-417	1480	t	2026-03-17 09:09:43.557984	2026-03-17 09:09:43.557986	76	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0315.jpg
21228	Krauthaker, Chardonnay Mitrovac	1V552155-418	1248	t	2026-03-17 09:09:43.557992	2026-03-17 09:09:43.557994	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Krauthaker-Chardonnay-Mitrovac.jpg
21229	Krauthaker, Chardonnay Rosenberg	1V262-419	1849	t	2026-03-17 09:09:43.558	2026-03-17 09:09:43.558003	56	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V262.jpg
21230	Krauthaker, Graševina	1V0007-420	1195	t	2026-03-17 09:09:43.558008	2026-03-17 09:09:43.558011	70	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0007.jpg
21231	Krauthaker, Graševina kasna berba	1V0038-421	1549	t	2026-03-17 09:09:43.558017	2026-03-17 09:09:43.558019	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0038.png
21232	Krauthaker, Graševina Kuvlakhe	1V033621-422	1995	t	2026-03-17 09:09:43.558025	2026-03-17 09:09:43.558027	9	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/kraut-kuvlake.jpg
21233	Krauthaker, Graševina Mitrovac	1V263-423	1549	t	2026-03-17 09:09:43.558033	2026-03-17 09:09:43.558035	51	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V263.png
21234	Krauthaker, Mercs	1v2624-424	1749	t	2026-03-17 09:09:43.558042	2026-03-17 09:09:43.558044	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1v2624.png
21235	Krauthaker, Merlot	1V2623-425	1649	t	2026-03-17 09:09:43.55805	2026-03-17 09:09:43.558052	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V2623.png
21236	Krauthaker, Nebbiolo	1V0552141-426	2149	t	2026-03-17 09:09:43.558058	2026-03-17 09:09:43.55806	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/krauthaker-nebbiolo.jpg
21237	Krauthaker, Pinot crni	1V0091-427	1749	t	2026-03-17 09:09:43.558068	2026-03-17 09:09:43.55807	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0091.png
21238	Krauthaker, Rose Cuvee	1VKRARO01-428	1049	t	2026-03-17 09:09:43.558076	2026-03-17 09:09:43.558079	5	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VKRARO01.png
21239	Krauthaker, Sauvignon Vidim	1V02224-429	1149	t	2026-03-17 09:09:43.558085	2026-03-17 09:09:43.558087	19	VINO > BIJELA	
21240	Krauthaker, Sauvignon Classic	1V0225-430	922	t	2026-03-17 09:09:43.558093	2026-03-17 09:09:43.558095	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0225.png
21241	Krauthaker, Pinot sivi	1VKRASIV-431	1149	t	2026-03-17 09:09:43.558101	2026-03-17 09:09:43.558103	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VKRASIV.png
21242	Krauthaker, Vinjak 9 YO 40,5%vol	1R411141-432	6349	t	2026-03-17 09:09:43.558109	2026-03-17 09:09:43.558112	9	DESTILATI > BRANDY/VINJAK	
21243	Krauthaker, Zelenac Kutjevo	1V0025-433	1135	t	2026-03-17 09:09:43.558118	2026-03-17 09:09:43.55812	20	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0025.png
21244	Aura, Rakija Bianca 40%	1R02005-434	2600	t	2026-03-17 09:09:43.558126	2026-03-17 09:09:43.558128	37	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R02005.jpg
21245	Aura, Rakija Moscato 40%	1R0052141-435	2600	t	2026-03-17 09:09:43.558134	2026-03-17 09:09:43.558137	41	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0052141.jpg
21246	Aura, Karbun Gin 39,2%vol	1R552141-436	3700	t	2026-03-17 09:09:43.558143	2026-03-17 09:09:43.558145	94	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R552141.jpg
21247	Aura, Liker divlje voće 24,7%vol	1R0219-437	2600	t	2026-03-17 09:09:43.558151	2026-03-17 09:09:43.558153	49	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0219.jpg
21248	Aura, Liker pepermint 31%vol	1R00215-438	2600	t	2026-03-17 09:09:43.558159	2026-03-17 09:09:43.558162	25	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00215.jpg
21249	Aura, Liker rogač 30,3%vol	1R00216-439	2600	t	2026-03-17 09:09:43.558168	2026-03-17 09:09:43.558171	65	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00216.jpg
21250	Aura, Liker ruža 34,9%vol	1R0218-440	2600	t	2026-03-17 09:09:43.558177	2026-03-17 09:09:43.558179	38	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0218.jpg
21251	Aura, Rakija travarica 33,8%	1R0217-441	2600	t	2026-03-17 09:09:43.558185	2026-03-17 09:09:43.558187	114	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0217.jpg
21252	Aura, Liker šipak 32,8%vol	1R0214-442	2400	t	2026-03-17 09:09:43.558194	2026-03-17 09:09:43.558197	39	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0214.jpg
21253	Aura, Rakija Millefrutti barrique 41,3%vol	1R002317-443	8000	t	2026-03-17 09:09:43.558202	2026-03-17 09:09:43.558205	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R002317.jpg
21254	Aura, Pljoska biska classic 37,47%vol	1R5500-444	2200	t	2026-03-17 09:09:43.558211	2026-03-17 09:09:43.558213	9	DESTILATI	
21255	Aura, Pljoska grappa bianca 40%vol	1R5524-445	2200	t	2026-03-17 09:09:43.55822	2026-03-17 09:09:43.558222	7	DESTILATI	
21256	Aura, Pljoska Medenica 29,31%vol	1R5521-446	2200	t	2026-03-17 09:09:43.558228	2026-03-17 09:09:43.55823	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/aura-pljo-mede.jpg
21257	Aura, Pljoska Teranino	1R5523-447	2200	t	2026-03-17 09:09:43.558236	2026-03-17 09:09:43.558239	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/aura-tenanino-pljo.jpg
21258	Aura, Poklon paket rakija 2/1	1R55005-448	1450	t	2026-03-17 09:09:43.558245	2026-03-17 09:09:43.558248	37	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R55005.jpg
21259	Aura, Poklon paket rakija 2/1	1R55007-449	2300	t	2026-03-17 09:09:43.558254	2026-03-17 09:09:43.558256	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R55007.jpg
21260	Aura, Rakija Extra Biska 39,8%vol	1R0251-450	7000	t	2026-03-17 09:09:43.558262	2026-03-17 09:09:43.558265	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0251.jpg
21261	Aura, Rakija Šljiva 39,9% alc	1R21447-451	2600	t	2026-03-17 09:09:43.558271	2026-03-17 09:09:43.558274	74	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R21447.jpg
21262	Aura, Liker Suha smokva 27,24% vol	1R22141-452	2600	t	2026-03-17 09:09:43.55828	2026-03-17 09:09:43.558282	67	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R22141.jpg
21263	Chiavalon, Eko pasirana rajčica 530 gr	1H55121-453	650	t	2026-03-17 09:09:43.558289	2026-03-17 09:09:43.558291	17	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H55121.jpg
21264	Matošević, Aura	1V2-454	1200	t	2026-03-17 09:09:43.558298	2026-03-17 09:09:43.558301	5	VINO > BIJELA	
21265	Matošević, Grimalda bijelo	1V002532-455	2460	t	2026-03-17 09:09:43.558308	2026-03-17 09:09:43.55831	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V002532.jpg
21266	Matošević, Grimalda crno	1V002533-456	2649	t	2026-03-17 09:09:43.558316	2026-03-17 09:09:43.558318	48	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V002533.jpg
21267	Matošević, Malvazija Alba	1VMATM-457	1285	t	2026-03-17 09:09:43.558325	2026-03-17 09:09:43.558327	120	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VMATM.jpg
21268	Barundić, Amoureux Muscat Extra Sec	1V006976-458	2260	t	2026-03-17 09:09:43.558334	2026-03-17 09:09:43.558336	29	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V006976.png
21269	Barundić, Manzoni Elegance Extra Brut	1V0069973-459	2190	t	2026-03-17 09:09:43.558342	2026-03-17 09:09:43.558345	15	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/elegance-1-2.jpg
21270	Barundić, Le Rose Brut	1V0069974-460	2190	t	2026-03-17 09:09:43.558351	2026-03-17 09:09:43.558353	28	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0069974.jpg
21271	Barundić, Manzoni	1V0069971-461	1760	t	2026-03-17 09:09:43.558359	2026-03-17 09:09:43.558362	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0069971.jpg
21272	Barundić, Pinot noir Marquis	1V0069972-462	2440	t	2026-03-17 09:09:43.558369	2026-03-17 09:09:43.558371	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0069972.jpg
21273	Petrač, Karizma	1V4690-463	1710	t	2026-03-17 09:09:43.558378	2026-03-17 09:09:43.55838	80	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V64889.jpg
21274	Petrač, Bregh Blanc de Blancs Brut	1Š2563-464	1810	t	2026-03-17 09:09:43.558387	2026-03-17 09:09:43.558389	9	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S2563.jpg
21275	Petrač, Bregh Rose Brut	1Š2561-465	1795	t	2026-03-17 09:09:43.558396	2026-03-17 09:09:43.558398	4	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S2561.jpg
21276	Bibich, Brut	1Š522152-466	2946	t	2026-03-17 09:09:43.558405	2026-03-17 09:09:43.558408	7	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S522152.png
21277	Bibich, R6 Riserva	1V00651-467	1790	t	2026-03-17 09:09:43.558414	2026-03-17 09:09:43.558417	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00651.png
21278	Bibich, Sangreal Merlot M5	1V00156-468	3212	t	2026-03-17 09:09:43.558423	2026-03-17 09:09:43.558425	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00156.png
21279	Bibich, Sivi pinot	1V0414-469	1440	t	2026-03-17 09:09:43.558437	2026-03-17 09:09:43.558439	15	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0414.jpg
21280	Osborne, Late Bottled Vintage Port 19,5%vol	1PN21-7-470	1850	t	2026-03-17 09:09:43.558446	2026-03-17 09:09:43.558449	36	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN21-3.jpg
21281	Osborne, Port 10 god 20%vol	1PN2-471	2430	t	2026-03-17 09:09:43.558456	2026-03-17 09:09:43.558459	57	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN2.jpg
21282	Osborne, Tawny Port 19,5%vol	1P5-472	1160	t	2026-03-17 09:09:43.558466	2026-03-17 09:09:43.558468	621	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1P5.jpg
21283	Osborne, Brandy de Jerez Solera Gran Reserva Carlos 1520 41,1%vol	1CN013-473	13400	t	2026-03-17 09:09:43.558474	2026-03-17 09:09:43.558477	5	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1CN013.jpg
21284	Osborne, Brandy de Jerez Solera Gran Reserva Carlos 40%vol	1CN010-474	2700	t	2026-03-17 09:09:43.558484	2026-03-17 09:09:43.558486	49	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1CN010.jpg
21285	Osborne, Brandy de Jerez Solera Gran Res Carlos PX 40,3%vol	1CN011-475	4446	t	2026-03-17 09:09:43.558493	2026-03-17 09:09:43.558495	40	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1CN011.jpg
21286	Osborne, Brandy de Jerez Solera Gran Reserva Carlos Imperial X.O. 40%vol	1CN012-476	5250	t	2026-03-17 09:09:43.558502	2026-03-17 09:09:43.558504	1	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1CN012.jpg
21287	Osborne, Fino Quinta Sherry	1VNSHERRY19-477	1141	t	2026-03-17 09:09:43.558511	2026-03-17 09:09:43.558513	7	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY19.jpg
21288	Osborne, Medium Sherry 	1VNSHERRY20-478	796	t	2026-03-17 09:09:43.55852	2026-03-17 09:09:43.558522	14	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY20.jpg
21289	Dvanajščak, DK Mlado	1V0025603-479	591	t	2026-03-17 09:09:43.55853	2026-03-17 09:09:43.558532	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0025603.jpg
21290	Dvanajščak, DK Pušipel	1V0025602-480	1049	t	2026-03-17 09:09:43.558539	2026-03-17 09:09:43.558542	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0025602.jpg
21291	Ritoša, Cabernet Sauvignon	1V00467-481	1135	t	2026-03-17 09:09:43.558549	2026-03-17 09:09:43.558552	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00467.jpg
21292	Ritoša, Cuvee	1V00469-482	1070	t	2026-03-17 09:09:43.558558	2026-03-17 09:09:43.558561	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00469.jpg
21293	Ritoša, Malvazija Istarska	1V004697-483	1010	t	2026-03-17 09:09:43.558568	2026-03-17 09:09:43.55857	11	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V004697.jpg
21294	Ritoša, Muškat ruža	1V00468-484	1010	t	2026-03-17 09:09:43.558626	2026-03-17 09:09:43.55863	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00468.jpg
21295	Ritoša, Muškat žuti	1V000471-485	1010	t	2026-03-17 09:09:43.558636	2026-03-17 09:09:43.558638	50	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V000471.jpg
21296	Ritoša, Teran	1V00466-486	1135	t	2026-03-17 09:09:43.558644	2026-03-17 09:09:43.558646	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00466.jpg
21297	Roxanich, Cabernet Sauvignon	1V0357-487	3900	t	2026-03-17 09:09:43.558652	2026-03-17 09:09:43.558655	38	VINO > CR(VE)NA	
21298	Roxanich, Milva Chardonnay	1V0349-488	2157	t	2026-03-17 09:09:43.55866	2026-03-17 09:09:43.558662	6	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0349.jpg
21299	Roxanich, Malvazija Antica	1V0346-489	2243	t	2026-03-17 09:09:43.558668	2026-03-17 09:09:43.55867	31	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/roxanich-malvazija-antica.jpg
21300	Roxanich, Istrijanac Ré	1V0340-490	4200	t	2026-03-17 09:09:43.558675	2026-03-17 09:09:43.558677	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0340.jpg
21301	Roxanich, Teran Re	1V0341-491	4200	t	2026-03-17 09:09:43.558683	2026-03-17 09:09:43.558685	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0341.png
21302	Ritoša, Rose	1V004670-492	803	t	2026-03-17 09:09:43.55869	2026-03-17 09:09:43.558692	16	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V004670.jpg
21303	Košutić, Cabernet sauvignon	1VN471505-493	7800	t	2026-03-17 09:09:43.558698	2026-03-17 09:09:43.5587	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/kosutic-cab-5-lit.jpg
21304	Košutić, Pinot bijeli	1VN47146-494	890	t	2026-03-17 09:09:43.558706	2026-03-17 09:09:43.558708	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN47146.png
21305	Košutić, Pinot bijeli Rustik	1VN471502-495	2774	t	2026-03-17 09:09:43.558713	2026-03-17 09:09:43.558716	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/kosutic-rustik-pinot.jpg
21306	Kosutić, Rajnski Rizling	1VN47143-496	1010	t	2026-03-17 09:09:43.558721	2026-03-17 09:09:43.558723	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN47143.png
21307	Košutić, Rizling Rustik	1VN471503-497	2774	t	2026-03-17 09:09:43.558729	2026-03-17 09:09:43.558731	23	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/kosutic-rustik-rizling.jpg
21308	Košutić, Škrlet	1VN47141-498	1010	t	2026-03-17 09:09:43.558737	2026-03-17 09:09:43.558739	52	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN47141.png
21309	Saint Hills, Posh	1V03979-499	2250	t	2026-03-17 09:09:43.558744	2026-03-17 09:09:43.558746	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V03979.jpg
21310	Saint Hills, Dingač	1V0395-500	5890	t	2026-03-17 09:09:43.558752	2026-03-17 09:09:43.558754	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0395.jpg
21311	Saint Hills, Mala Nevina	1V00388-501	1749	t	2026-03-17 09:09:43.558759	2026-03-17 09:09:43.558761	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00388.jpg
21312	Saint Hills, Nevina	1VO370-502	1991	t	2026-03-17 09:09:43.558767	2026-03-17 09:09:43.558769	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VO370.jpg
21313	Saints Hills, Rose	1V0396-503	1749	t	2026-03-17 09:09:43.558774	2026-03-17 09:09:43.558776	11	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0396.jpg
21314	Saints Hills, Sv.Roko	1V00440-504	2630	t	2026-03-17 09:09:43.558782	2026-03-17 09:09:43.558784	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00440.jpg
21315	Chateau Brown Pessac-Leognan Blanc	1VN727-2-505	4250	t	2026-03-17 09:09:43.558789	2026-03-17 09:09:43.558792	26	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN727-1.jpg
21316	Chateau Brown, Pessac-Leognan rouge	1VN726-3-506	3950	t	2026-03-17 09:09:43.558797	2026-03-17 09:09:43.558799	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN726-1.jpg
21317	Chateau Grand-Puy-Lacoste Pauillac	1VN885-1-507	11400	t	2026-03-17 09:09:43.558805	2026-03-17 09:09:43.558807	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN885.jpg
21318	Chateau Jacques Boyd, Margaux	1VN620-1-508	3783	t	2026-03-17 09:09:43.558812	2026-03-17 09:09:43.558815	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN620-1.jpg
21319	Chateau Mazails, Medoc Cru Bourgeois	1VN1064-509	929	t	2026-03-17 09:09:43.55882	2026-03-17 09:09:43.558822	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1064.jpg
21320	Chateau Menate, Sauternes	1VN1065-510	1980	t	2026-03-17 09:09:43.558827	2026-03-17 09:09:43.558829	58	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1065.jpg
21321	Chateau Preuillac  Medoc Cru Bourgeois	1VN724-511	1924	t	2026-03-17 09:09:43.558837	2026-03-17 09:09:43.558839	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN724.jpg
21322	Chateau Sociando-Mallet, Haut-Medoc	1VN728-1-512	5574	t	2026-03-17 09:09:43.558845	2026-03-17 09:09:43.558847	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN728-1.jpg
21323	Yvon Mau, Premius Bordeaux Rouge Cabernet Merlot	1VN42-513	796	t	2026-03-17 09:09:43.558852	2026-03-17 09:09:43.558855	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN42.jpg
21324	Clai, Baracija Malvazija	1V0006322-514	1650	t	2026-03-17 09:09:43.55886	2026-03-17 09:09:43.558862	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0006322.png
21325	Clai, Baracija Refošk	1V0006321-515	1650	t	2026-03-17 09:09:43.558868	2026-03-17 09:09:43.55887	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0006321.png
21326	Clai, Komovica Reserva 48%vol	1R0079-516	2382	t	2026-03-17 09:09:43.558876	2026-03-17 09:09:43.558878	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0079.jpg
21327	Clai, Komovica 40%	1R0078-517	2300	t	2026-03-17 09:09:43.558883	2026-03-17 09:09:43.558885	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0078.jpg
21328	Clai, Malvazija Sv. Jakov	1V00041-2-518	3190	t	2026-03-17 09:09:43.558891	2026-03-17 09:09:43.558893	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00041.jpg
21329	Clai, Ottocento Bijeli	1V00042-519	2690	t	2026-03-17 09:09:43.558898	2026-03-17 09:09:43.558901	1	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00042.jpg
21330	Peršurić Mario, Cabernet Sauvignon	1V0336-520	760	t	2026-03-17 09:09:43.558906	2026-03-17 09:09:43.558908	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/mario-persuric-cs.jpg
21331	Peršurić Mario, Malvazija	1V532-521	795	t	2026-03-17 09:09:43.558914	2026-03-17 09:09:43.558916	178	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V532.png
21332	Peršurić Mario, Muškat žuti	1V5351-522	795	t	2026-03-17 09:09:43.558922	2026-03-17 09:09:43.558924	177	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V5351.png
21333	Peršurić Mario, Teran	1V5352-523	760	t	2026-03-17 09:09:43.558929	2026-03-17 09:09:43.558932	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V5352.png
21334	Meneghetti White	1V001921-524	3400	t	2026-03-17 09:09:43.558937	2026-03-17 09:09:43.558939	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Meneghetti-White-2021b..jpg
21335	Meneghetti Red	1V00180-525	5500	t	2026-03-17 09:09:43.558945	2026-03-17 09:09:43.558947	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Meneghetti-Red-2018.B.jpg
21336	Meneghetti, Malvazija	1V00189-526	1440	t	2026-03-17 09:09:43.558953	2026-03-17 09:09:43.558955	27	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Meneghetti-Malvazija-2022b..jpg
21337	Meneghetti, Merlot	1V00183-527	1550	t	2026-03-17 09:09:43.55896	2026-03-17 09:09:43.558963	79	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Meneghetti-Merlot-2020b.jpg
21338	Meneghetti, Classic Brut	1Š54-528	2400	t	2026-03-17 09:09:43.558968	2026-03-17 09:09:43.558971	10	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Meneghetti-Pjenusac-Classic-2018c..jpg
21339	Korta Katarina, Pošip	1V00171-529	2400	t	2026-03-17 09:09:43.558976	2026-03-17 09:09:43.558978	11	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00171.png
21340	Korta Katarina, Plavac	1V000175-530	2760	t	2026-03-17 09:09:43.558984	2026-03-17 09:09:43.558986	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V000175.jpg
21341	Kopjar, Graševina	1V00872-531	1010	t	2026-03-17 09:09:43.558992	2026-03-17 09:09:43.558994	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00872.jpg
21342	Kopjar, Cuvee	1V00871-532	1149	t	2026-03-17 09:09:43.559	2026-03-17 09:09:43.559002	32	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00871.jpg
21343	Kopjar, Rajnski Rizling	1V00870-533	1680	t	2026-03-17 09:09:43.559007	2026-03-17 09:09:43.559009	2	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00870.jpg
21344	Kopjar, Sauvignon Blanc	1V00873-534	1200	t	2026-03-17 09:09:43.559014	2026-03-17 09:09:43.559017	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00873.jpg
21345	Plenković, Zlatan Otok	1V0186-535	544	t	2026-03-17 09:09:43.559037	2026-03-17 09:09:43.55904	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0186.jpg
21346	Plenković, Zlatan Plavac	1VZLPLA01-536	1321	t	2026-03-17 09:09:43.559046	2026-03-17 09:09:43.559048	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VZLPLA01.jpg
21347	Plenković, Zlatan Plavac Barrique	1VZLPLBA01-537	1852	t	2026-03-17 09:09:43.559054	2026-03-17 09:09:43.559056	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VZLPLBA01.jpg
21348	Plenković, Zlatan Plavac Grand cru	1V00154-538	2695	t	2026-03-17 09:09:43.559062	2026-03-17 09:09:43.559064	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00154.jpg
21349	Old Pilot's Gin, Barrel Aged Gin	1R6621552-539	9000	t	2026-03-17 09:09:43.559069	2026-03-17 09:09:43.559072	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R6621552.jpg
21350	Old Pilot's Gin, London Dry Gin alk. 45vol%	1R6621551-540	6279	t	2026-03-17 09:09:43.559078	2026-03-17 09:09:43.55908	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R6621551.jpg
21351	Matuško, Dingač	1VMATDING-541	1790	t	2026-03-17 09:09:43.559085	2026-03-17 09:09:43.559088	40	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VMATDING.jpg
21352	Matuško, Dingač Reserva Barrique	1V00496-542	3250	t	2026-03-17 09:09:43.559094	2026-03-17 09:09:43.559096	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00496.jpg
21353	Matuško, Dingač Royal Selection Barrique	1V00152-543	5890	t	2026-03-17 09:09:43.559101	2026-03-17 09:09:43.559103	23	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00152.jpg
21354	Matuško, Dingač Superior Cuvee	1V00497-544	14480	t	2026-03-17 09:09:43.559109	2026-03-17 09:09:43.559111	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00497.jpg
21355	Matuško, Plavac mali	1V00375-545	1149	t	2026-03-17 09:09:43.559117	2026-03-17 09:09:43.559119	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00375-1.jpg
21356	Tomaz, Malvazija Avangarde	1V25414-546	1225	t	2026-03-17 09:09:43.559125	2026-03-17 09:09:43.559127	23	VINO > BIJELA	
21357	Tomaz, Malvazija Nera	1V2566211-547	2549	t	2026-03-17 09:09:43.559133	2026-03-17 09:09:43.559135	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V2566211.jpg
21358	Tomaz, Merlot	1V25233221-548	2149	t	2026-03-17 09:09:43.55914	2026-03-17 09:09:43.559143	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V25233221.png
21359	Tomaz, Teran Barbarossa	1V255212-549	2330	t	2026-03-17 09:09:43.559148	2026-03-17 09:09:43.55915	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V255212.png
21360	Jako vino, Stina maslinovo ulje	1H02006-550	1367	t	2026-03-17 09:09:43.559156	2026-03-17 09:09:43.559158	39	OSTALO	
21361	Luftbremzer, Barrel Aged Gin 40%vol	1R52215411-551	4690	t	2026-03-17 09:09:43.559164	2026-03-17 09:09:43.559166	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R52215411.jpg
21362	Luftbremzer, Gin Box 44%vol	1R5221529-1-552	3870	t	2026-03-17 09:09:43.559172	2026-03-17 09:09:43.559174	28	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R5221529-1.jpg
21363	Zorzal, Graciano Tinto	1VN571-553	926	t	2026-03-17 09:09:43.559181	2026-03-17 09:09:43.559184	40	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN571.jpg
21364	Šember, Pinot Crni Vučjak	1V02789-3-554	2580	t	2026-03-17 09:09:43.559189	2026-03-17 09:09:43.559191	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V028931.jpg
21365	Šember, Brut	1Š3321-555	1810	t	2026-03-17 09:09:43.559197	2026-03-17 09:09:43.559199	22	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/ŠEMBER-PJENUŠAC-BRUT.jpg
21366	Šember, Pavel Brut	1Š033622-556	2600	t	2026-03-17 09:09:43.559205	2026-03-17 09:09:43.559207	50	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Sember-Pavel-Brut.jpg
21367	Šember, Rose Brut	1V02790-557	1949	t	2026-03-17 09:09:43.559212	2026-03-17 09:09:43.559215	17	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/cms_image_wine_detail_gallery_115_image_1488199067.jpg
21368	Josić, Baranjski Šiler	1V0427-558	783	t	2026-03-17 09:09:43.55922	2026-03-17 09:09:43.559222	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0427.jpg
21369	Josić, Cuvee Ciconia Nigra	1V0425-559	1349	t	2026-03-17 09:09:43.559228	2026-03-17 09:09:43.55923	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/j_cuvee.jpg
21370	Josić, Graševina Superior	1V0444-560	1349	t	2026-03-17 09:09:43.559236	2026-03-17 09:09:43.559238	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Josic-Grasevina-Superior-1.jpg
21371	Zdjelarević, Nagual bijeli Grand Cuvee	1V00079-561	2329	t	2026-03-17 09:09:43.559244	2026-03-17 09:09:43.559246	38	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00079.jpg
21372	Zdjelarević, Nagual crni Grand Cuvee	1V00078-562	2429	t	2026-03-17 09:09:43.559251	2026-03-17 09:09:43.559253	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00078.jpg
21373	Zdjelarević, Z Light Blanc Cuvee	1V555666-563	730	t	2026-03-17 09:09:43.559259	2026-03-17 09:09:43.559261	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V555666.jpg
21374	Zdjelarević, Z Light Rouge Cuvee	1V555667-564	730	t	2026-03-17 09:09:43.559267	2026-03-17 09:09:43.559269	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V555667.jpg
21375	Zdjelarević, ZWS Chardonnay Reserve	1V00551-565	990	t	2026-03-17 09:09:43.559275	2026-03-17 09:09:43.559277	15	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00551.png
21376	Kolarić, Coletti Amfora Pinot Grigio	1V52119-566	5190	t	2026-03-17 09:09:43.559282	2026-03-17 09:09:43.559285	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V52119.jpg
21377	Kolarić, Coletti Blanc nature	1Š52114-567	1720	t	2026-03-17 09:09:43.55929	2026-03-17 09:09:43.559292	6	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S52114.jpg
21378	Kolarić, Coletti Rose Brut	1Š52115-568	1890	t	2026-03-17 09:09:43.559298	2026-03-17 09:09:43.5593	10	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1S52115.jpg
21379	Kolarić, Coletti Rose	1VN52141-569	1009	t	2026-03-17 09:09:43.559305	2026-03-17 09:09:43.559307	16	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN52141.jpg
21380	Penfolds, Bin 128 Shiraz Coonawara	1VN72-570	4785	t	2026-03-17 09:09:43.559313	2026-03-17 09:09:43.559315	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN72.png
21381	Penfolds, Bin 28 Kalimna Shiraz	1VN90-571	3650	t	2026-03-17 09:09:43.55932	2026-03-17 09:09:43.559322	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN90.png
21382	Penfolds, Bin 389 Cabernet Shiraz	1VN812-6-572	8750	t	2026-03-17 09:09:43.559328	2026-03-17 09:09:43.55933	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN812-2.png
21383	Penfolds, Father Grand Tawny Port 10 Y.O.	1PN90-573	3185	t	2026-03-17 09:09:43.559335	2026-03-17 09:09:43.559337	6	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN90.png
21384	Penfolds, Max's Shiraz	1VN1143-3-574	2250	t	2026-03-17 09:09:43.559342	2026-03-17 09:09:43.559345	115	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1143.png
21385	Penfolds, Rawson's Retreat Semillon Chardonnay	1VN260-575	861	t	2026-03-17 09:09:43.55935	2026-03-17 09:09:43.559352	87	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN260.jpg
21386	Penfolds, Rawson's Retreat Shiraz Cabernet	1VN86-2-576	880	t	2026-03-17 09:09:43.559357	2026-03-17 09:09:43.559359	449	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN86.jpg
21387	Penfolds, Koonunga Hill Chardonnay	1VN92-577	1055	t	2026-03-17 09:09:43.559365	2026-03-17 09:09:43.559367	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/penfolds-koonunga-hill-chardonnay__07896.1590466764.jpg
21388	Penfolds, Koonunga Hill Shiraz Cabernet	1VN194-578	1200	t	2026-03-17 09:09:43.559373	2026-03-17 09:09:43.559375	163	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/penfolds-koonunga-hill-shiraz-cabernet.jpg
21389	Villa Maria, Reserve Pinot Noir	1VN1123-579	2097	t	2026-03-17 09:09:43.55938	2026-03-17 09:09:43.559382	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1123.jpg
21390	Villa Maria, Private Bin Sauvignon Blanc  (Organic)	1VN1124-580	1168	t	2026-03-17 09:09:43.559388	2026-03-17 09:09:43.55939	19	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1124.png
21391	Rosemount, Diamond Cellars Shiraz Cabernet	1V01-581	829	t	2026-03-17 09:09:43.559395	2026-03-17 09:09:43.559397	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/1V01-w.jpg
21392	Rosemount, Diamond Label Shiraz - vidi pod Opis	1VO2-582	1055	t	2026-03-17 09:09:43.559403	2026-03-17 09:09:43.559405	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VO2.jpg
21393	Rosemount, Diamond Selection Chardonnay	1VN544-583	660	t	2026-03-17 09:09:43.559411	2026-03-17 09:09:43.559413	2278	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Rosemount-Diamond-Selection-Chardonnay-ww.jpg
21394	Rosemount, Diamond Selection Shiraz	1VN541-584	660	t	2026-03-17 09:09:43.559418	2026-03-17 09:09:43.55942	1982	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/ROSEMOUNT-DIAMOND-SELECTION-SHIRAZ-W.jpg
21395	Torres Selecta Extra Virgin Olive Oil Čips 40g	1H303-585	200	t	2026-03-17 09:09:43.559426	2026-03-17 09:09:43.559428	9	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/torres-evoo-w.jpg
21396	Torres Selecta Foie Gras/Guščja jetra Čips 50g	1H306-586	186	t	2026-03-17 09:09:43.559434	2026-03-17 09:09:43.559449	19	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/torres-foie-w.jpg
21397	Torres Selecta Iberian Ham/Šunka Čips 50g	1H302-587	200	t	2026-03-17 09:09:43.559456	2026-03-17 09:09:43.559458	29	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/torres-ham-ww.jpg
21398	Pulltex, Brucart Vadičep	1D10774800-588	6570	t	2026-03-17 09:09:43.559464	2026-03-17 09:09:43.559466	3	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10774800.jpg
21399	Pulltex, Celebration Kit 3pcs	1D10759800-589	3769	t	2026-03-17 09:09:43.559471	2026-03-17 09:09:43.559473	30	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10759800.jpg
21400	Pulltex, Champagne Opener &amp; Stopper	1D10792510-590	465	t	2026-03-17 09:09:43.559479	2026-03-17 09:09:43.559481	6	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10792510.jpg
21401	Pulltex, Dekanter traka	1D10771900-591	743	t	2026-03-17 09:09:43.559487	2026-03-17 09:09:43.559489	14	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10771900.jpg
21402	Pulltex, Drop Saver Nigota 3set	1D11792300-592	398	t	2026-03-17 09:09:43.559494	2026-03-17 09:09:43.559496	55	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10792310.jpg
21403	Pulltex, Držač za tanjur	1D10772000-593	2628	t	2026-03-17 09:09:43.559502	2026-03-17 09:09:43.559504	3	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10772000.jpg
21404	Pulltex, Antiox Wine Saver silikon čep set od 6 kom	1D10950900-594	9500	t	2026-03-17 09:09:43.55951	2026-03-17 09:09:43.559512	33	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/silicone-antiox-wine-stopper-set-of-6.jpg
21405	Pulltex, Čep za pjenušac i Sparkling Wine Saver	1D10793610-595	962	t	2026-03-17 09:09:43.559519	2026-03-17 09:09:43.559521	24	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/117936Blister.jpg
21406	Pulltex, Čep Vakum Za Vino Inox	1D10952200-596	1712	t	2026-03-17 09:09:43.559527	2026-03-17 09:09:43.559529	13	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10772200.jpg
21407	Pulltex, Čep za pjenušavo vino Twist	1D11794101-597	723	t	2026-03-17 09:09:43.559534	2026-03-17 09:09:43.559537	16	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D11794101.jpg
21408	Pulltex, Čep Za Pjenušac Mars	1D10771200-598	1712	t	2026-03-17 09:09:43.559542	2026-03-17 09:09:43.559544	6	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10771200.jpg
21409	Pulltex, Čep / Lijevak Uranus	1D10770300-599	1659	t	2026-03-17 09:09:43.55955	2026-03-17 09:09:43.559552	38	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10770300.jpg
21410	Pulltex, Čistač Dekantera	1D10940100-600	903	t	2026-03-17 09:09:43.559557	2026-03-17 09:09:43.55956	11	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10772400.jpg
21411	Pulltex, Čistač Dekantera Četka	1D10940200-601	995	t	2026-03-17 09:09:43.559565	2026-03-17 09:09:43.559567	36	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10779000.jpg
21412	Pulltex, Čistač Čaše	1D10773700-602	982	t	2026-03-17 09:09:43.559573	2026-03-17 09:09:43.559575	10	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10773700.jpg
21413	Pulltex, Električni Vadičep Monza	1D10784400-603	3716	t	2026-03-17 09:09:43.55958	2026-03-17 09:09:43.559582	40	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10784400.jpg
21414	Pulltex, Inox Ice Cubes	1D11794400-604	1394	t	2026-03-17 09:09:43.559588	2026-03-17 09:09:43.55959	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D11794400.jpg
21415	Pulltex, posuda za led Ebony veća	1D10763100-605	5700	t	2026-03-17 09:09:43.559596	2026-03-17 09:09:43.559598	11	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10763100.jpg
21416	Pulltex, posuda za led Ebony manja	1D10763700-606	3900	t	2026-03-17 09:09:43.559604	2026-03-17 09:09:43.559606	26	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/pull-ebony.jpg
21417	Pulltex, posuda za led za 3-4 Boce Trium XL	1D10763000-607	4752	t	2026-03-17 09:09:43.559611	2026-03-17 09:09:43.559614	30	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10763000.jpg
21418	Pulltex, KIiješta za otvaranje pjenušca	1D10771800-608	2124	t	2026-03-17 09:09:43.559619	2026-03-17 09:09:43.559621	8	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/PULLTEX-KLIJESTA-ZA-OTVARANJE-PJENUSCA-107718-W.jpg
21419	Pulltex, Komplet Starter Set/10	1D10778000-609	6371	t	2026-03-17 09:09:43.559627	2026-03-17 09:09:43.559629	14	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/8435179477803-1.jpg
21420	Pulltex, Oznake za Čaše u Boji	1D10791510-610	1055	t	2026-03-17 09:09:43.559634	2026-03-17 09:09:43.559636	19	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10791510.jpg
21421	Pulltex, Party Plate Clip	1D10792610-611	610	t	2026-03-17 09:09:43.559642	2026-03-17 09:09:43.559644	16	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10792610.jpg
21422	Pulltex, Pljoska Nautilus	1D10771300-612	2907	t	2026-03-17 09:09:43.55965	2026-03-17 09:09:43.559652	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/109408.jpg
21423	Pulltex, Pulltap's Vadičep Classic Set	1D10772500-613	3623	t	2026-03-17 09:09:43.559658	2026-03-17 09:09:43.55966	5	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/107725.jpg
21424	Pulltex, Pulltap's Vadičep Vintage Burgundy	1D10777300-614	2104	t	2026-03-17 09:09:43.559665	2026-03-17 09:09:43.559667	25	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/107773-490.jpg
21425	Pulltex, Pulltap's Vadičep Basic Wood	1D10782100-615	1307	t	2026-03-17 09:09:43.559673	2026-03-17 09:09:43.559675	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10782100.jpg
21426	Pulltex, Pulltap's Vadičep Classic Graphite	1D10770200-616	2104	t	2026-03-17 09:09:43.55968	2026-03-17 09:09:43.559682	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10770200.jpg
21427	Pulltex, PWC Etiketa za vino	1D10775800-617	922	t	2026-03-17 09:09:43.559688	2026-03-17 09:09:43.55969	17	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10775800.jpg
21428	Pulltex, Rashlađivač pjenušaca	1D10782000-618	1167	t	2026-03-17 09:09:43.559695	2026-03-17 09:09:43.559698	18	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10782000.jpg
21429	Pulltex, Rashlađivač vina	1D10772300-619	982	t	2026-03-17 09:09:43.559703	2026-03-17 09:09:43.559705	38	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10772300.jpg
21430	Pulltex, Set Gin Tonic	1D10722000-620	3517	t	2026-03-17 09:09:43.559711	2026-03-17 09:09:43.559713	11	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10722000.jpg
21431	Pulltex, Set od 12 mirisa za raspoznavanje aroma u crvenom vinu	1D10776400-621	5392	t	2026-03-17 09:09:43.559718	2026-03-17 09:09:43.559721	2	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10776400.jpg
21432	Pulltex, Set za pjenušac	1D10771700-622	1394	t	2026-03-17 09:09:43.559726	2026-03-17 09:09:43.559728	13	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10771700.jpg
21433	Pulltex, Termometar za vino - bocu	1D10941000-623	1978	t	2026-03-17 09:09:43.559733	2026-03-17 09:09:43.559736	6	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/PULLTEX-TERMOMETAR-109410-w.jpg
21434	Pulltex, Torba nosač za 6 boca plava	1D00472602-624	465	t	2026-03-17 09:09:43.559741	2026-03-17 09:09:43.559743	9	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/1D00472601.jpg
21435	Pulltex, Torba nosač za 6 Boca drvo efekt	1D10781400-625	730	t	2026-03-17 09:09:43.559749	2026-03-17 09:09:43.559751	12	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10781400.jpg
21436	Pulltex, Vadičep Blister Crni	1D11790101-626	531	t	2026-03-17 09:09:43.559756	2026-03-17 09:09:43.559759	8	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D11790101.jpg
21437	Pulltex, Vadičep Click Cut Wood Efekt	1D10912600-627	1168	t	2026-03-17 09:09:43.559764	2026-03-17 09:09:43.559766	37	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10912600.jpg
21438	Pulltex, Vadičep Cordoba Bone u kožnoj futroli	1D10917100-628	6503	t	2026-03-17 09:09:43.559772	2026-03-17 09:09:43.559774	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10917100.jpg
21439	Pulltex, Vadičep Cordoba Horne u kožnoj futroli	1D10917000-629	6503	t	2026-03-17 09:09:43.559779	2026-03-17 09:09:43.559781	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10917000.jpg
21440	Pulltex, Vadičep Monza Carbon Efekt	1D10912500-630	1168	t	2026-03-17 09:09:43.559787	2026-03-17 09:09:43.559789	19	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/CfehRfwQ.jpeg.jpg
21441	Pulltex, Vadičep Razne boje	1D10792210-631	637	t	2026-03-17 09:09:43.559794	2026-03-17 09:09:43.559797	19	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10792210.jpg
21442	Pulltex, Vadičep Set De Luxe	1D10773200-632	4891	t	2026-03-17 09:09:43.559802	2026-03-17 09:09:43.559804	6	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10773200.jpg
21443	Pulltex, Vadičep Toledo ( drvena ručka+kožna futrola )	1D10916100-633	4752	t	2026-03-17 09:09:43.55981	2026-03-17 09:09:43.559812	12	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10916100.jpg
21444	Pulltex, Vadičep Toledo Set Box	1D10780600-634	3584	t	2026-03-17 09:09:43.559817	2026-03-17 09:09:43.559819	14	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10780600.jpg
21445	Pulltex, Vakum Čep za vino Crni Blister	1D11792401-635	876	t	2026-03-17 09:09:43.559825	2026-03-17 09:09:43.559828	17	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/107924_1.jpg
21446	Pulltex, Vinski Pribor Set/5 Monza	1D10783600-636	4513	t	2026-03-17 09:09:43.559835	2026-03-17 09:09:43.559838	10	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1D10783600.jpg
21447	Zorzal, Corral de los Altos	1VN708-637	1632	t	2026-03-17 09:09:43.559847	2026-03-17 09:09:43.559849	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN708.jpg
21448	Šoškić, Dvor V.S. 40%vol vinjak	1R0014411-638	3295	t	2026-03-17 09:09:43.559855	2026-03-17 09:09:43.559857	31	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0014411.png
21449	Korlat, Aronija 20%vol liker	1R556632-639	2150	t	2026-03-17 09:09:43.559863	2026-03-17 09:09:43.559865	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R53321.jpg
21450	Korlat, Travarica Barrique 37,5%vol rakija	1RB52214-640	2590	t	2026-03-17 09:09:43.559871	2026-03-17 09:09:43.559874	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RB52214.jpg
21451	Badel, Pelinkovac Antique 35%vol liker	1R41251-641	1790	t	2026-03-17 09:09:43.559894	2026-03-17 09:09:43.559897	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R41251.jpg
21452	Korlat, Cabernet sauvignon	1V00122-642	1710	t	2026-03-17 09:09:43.559902	2026-03-17 09:09:43.559905	47	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00122.jpg
21453	Korlat, Merlot	1V00120-643	1710	t	2026-03-17 09:09:43.55991	2026-03-17 09:09:43.559912	88	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00120.jpg
21454	Korlat, Merlot Boutique	1V00125-644	3020	t	2026-03-17 09:09:43.559918	2026-03-17 09:09:43.55992	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00125.jpg
21455	Korlat, Merlot Supreme	1V00128-645	2201	t	2026-03-17 09:09:43.559926	2026-03-17 09:09:43.559928	27	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00128.jpg
21456	Korlat, Syrah	1V00121-646	1710	t	2026-03-17 09:09:43.559934	2026-03-17 09:09:43.559936	65	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00121.jpg
21457	Badel, Ivan Dolac Barrique	1V134-647	1850	t	2026-03-17 09:09:43.559941	2026-03-17 09:09:43.559943	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V134.jpg
21458	Badel, Ivan Dolac	1V0177-648	1590	t	2026-03-17 09:09:43.559949	2026-03-17 09:09:43.559951	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0177.jpg
21459	Papak, Radosh Cabernet Sauvignon Franc	1V50074-649	763	t	2026-03-17 09:09:43.559956	2026-03-17 09:09:43.559959	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V50074.jpg
21460	Papak, Graševina classic	1V50070-650	498	t	2026-03-17 09:09:43.559964	2026-03-17 09:09:43.559966	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V50070.jpg
21461	Papak, Grasevina Radosh	1V50071-651	670	t	2026-03-17 09:09:43.559972	2026-03-17 09:09:43.559974	30	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/papak-radosh-grasevina-m.png
21462	Papak, Radosh Rajnski Rizling	1V50072-652	796	t	2026-03-17 09:09:43.55998	2026-03-17 09:09:43.559982	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V50072.jpg
21463	Papak, Radosh Traminac	1V50073-653	763	t	2026-03-17 09:09:43.559987	2026-03-17 09:09:43.55999	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V50073.jpg
21464	Coronica, Gran Teran 2021	1V259-3-654	3700	t	2026-03-17 09:09:43.559995	2026-03-17 09:09:43.559997	45	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V259.jpg
21465	Coronica, Malvazija	1V0146-655	1350	t	2026-03-17 09:09:43.560002	2026-03-17 09:09:43.560005	258	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0146.jpg
21466	Coronica, Teran	1VCORTER-656	1055	t	2026-03-17 09:09:43.56001	2026-03-17 09:09:43.560012	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/coronica-teran.jpg
21467	Ipša, Leccino ekstra djevičansko maslinovo ulje	1H00000138-657	995	t	2026-03-17 09:09:43.560017	2026-03-17 09:09:43.560019	16	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H00000138.jpg
21468	Ipša, Malvazija	1V00524-658	1760	t	2026-03-17 09:09:43.560025	2026-03-17 09:09:43.560027	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00524.jpg
21469	Ipša, Santa Elena	1V00523-659	1995	t	2026-03-17 09:09:43.560032	2026-03-17 09:09:43.560035	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00523.jpg
21470	Malvasia, Bloc de Foie Gras de Pato/Patka pašteta 65 g	1H122015-660	863	t	2026-03-17 09:09:43.56004	2026-03-17 09:09:43.560043	34	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H122015.jpg
21471	Malvasia, Mousse de Foie Gras con trufa pašteta s tartufom 130 g	1H124025-661	597	t	2026-03-17 09:09:43.560048	2026-03-17 09:09:43.560051	29	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H124025.jpg
21472	Malvasia, Mousse de Foie de Pato/Patka pašteta 130 kg	1H124001-662	465	t	2026-03-17 09:09:43.560057	2026-03-17 09:09:43.560059	28	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H124001.jpg
21473	Malvasia, Parfait de Foie de Pato/Patka pašteta 130 g	1H123001-663	995	t	2026-03-17 09:09:43.560065	2026-03-17 09:09:43.560067	35	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H123001.jpg
21474	Malvasia, Pate al Moscatel Pašteta pačja s likerom muškata 130 g	1H125014-664	465	t	2026-03-17 09:09:43.560073	2026-03-17 09:09:43.560075	10	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H125014.jpg
21475	Pas A Pas Grande Reserve Rouge	1VN1241-665	975	t	2026-03-17 09:09:43.56008	2026-03-17 09:09:43.560083	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/pas-a-pas-rouge-w.jpg
21476	Montecillo, Crianza Rioja	1VN1006-666	870	t	2026-03-17 09:09:43.560088	2026-03-17 09:09:43.560091	293	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/botella-montecillo-crianza-w.jpg
21477	Montecillo, Gran Reserva Rioja	1VN1008-667	2230	t	2026-03-17 09:09:43.560096	2026-03-17 09:09:43.560098	95	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1008.png
21478	Montecillo, Reserva Rioja	1VN1007-668	1559	t	2026-03-17 09:09:43.560104	2026-03-17 09:09:43.560106	94	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/montecillo-reserva-w.jpg
21479	Jet Bag vrećica za butelju (višekratna upotreba)	1JET001-669	465	t	2026-03-17 09:09:43.560112	2026-03-17 09:09:43.560114	22	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1JET001.jpg
21480	Portal del Priorat, Faunus	1VN472-670	1314	t	2026-03-17 09:09:43.56012	2026-03-17 09:09:43.560122	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN472.png
21481	Portal del Priorat, Flors	1VN602-671	1460	t	2026-03-17 09:09:43.560128	2026-03-17 09:09:43.56013	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN602.jpg
21482	Portal del Priorat, Somni	1VN904-672	4441	t	2026-03-17 09:09:43.560136	2026-03-17 09:09:43.560138	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN904.jpg
21483	Portal del Priorat, Trossos Sants	1VN470-673	1918	t	2026-03-17 09:09:43.560144	2026-03-17 09:09:43.560146	32	VINO > BIJELA	
21484	Amatller, Cappuccino Truffles Čokolada 72g	1H2332-674	577	t	2026-03-17 09:09:43.560152	2026-03-17 09:09:43.560154	29	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H2332.png
21485	Amatller, Čokolada 50% Cacao 85g	1H7572-675	330	t	2026-03-17 09:09:43.560159	2026-03-17 09:09:43.560161	35	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H7572.png
21486	Amatller, Čokolada 70% Oblik Lista 60g	1H1627-676	531	t	2026-03-17 09:09:43.560167	2026-03-17 09:09:43.560169	6	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H1627.jpg
21487	Amatller, Čokolada Leche (Mliječna) 85g	1H7574-677	319	t	2026-03-17 09:09:43.560175	2026-03-17 09:09:43.560177	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H7574.png
21488	Amatller, Čokoladice Ghana 70% Mini Napolitanas 5g (NARUČITI MIN. 50 KOM)	1H7964-678	19	t	2026-03-17 09:09:43.560183	2026-03-17 09:09:43.560185	14	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/amattler-minis.jpg
21489	Amatller, Vruća Čokolada Usitnjena 400gr	1H8496-679	863	t	2026-03-17 09:09:43.560192	2026-03-17 09:09:43.560194	31	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H8496.png
21490	Ahearne, South Side Plavac Mali	1V521411-680	2515	t	2026-03-17 09:09:43.5602	2026-03-17 09:09:43.560202	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V521411.jpg
21491	Kabola, Muškat Momjanski	1V526-681	1400	t	2026-03-17 09:09:43.560208	2026-03-17 09:09:43.56021	24	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Kabola-Muškat-Momjanski-19-scaled-2.jpg
21492	Kabola, Re Brut	1Š025214-682	1990	t	2026-03-17 09:09:43.560216	2026-03-17 09:09:43.560218	18	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/KABOLA-RE.jpg
21493	Kabola, Malvazija	1V524-683	1295	t	2026-03-17 09:09:43.560223	2026-03-17 09:09:43.560226	38	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V524.png
21494	Monteloro, Mezzo Braccio Riesling	1VN962-684	2300	t	2026-03-17 09:09:43.560231	2026-03-17 09:09:43.560233	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1060.png
21495	Poggio Le Volpi, Baccarossa Rosso	1VN1086-685	1970	t	2026-03-17 09:09:43.560239	2026-03-17 09:09:43.560241	47	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1086.jpg
21496	Poggio Le Volpi, Donnaluce Bianco	1VN1082-686	1593	t	2026-03-17 09:09:43.560246	2026-03-17 09:09:43.560248	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1082.jpg
21497	Poggio le Volpi, Epos Frascati Superiore Riserva DOCG	1VN1084-687	1307	t	2026-03-17 09:09:43.560254	2026-03-17 09:09:43.560256	18	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/epos-poggio.jpg
21498	Poggio le Volpi, People Frascati Superiore DOCG	1VN1081-688	823	t	2026-03-17 09:09:43.560262	2026-03-17 09:09:43.560264	26	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/people-poggio.jpg
21499	Poggio Le Volpi, Roma Bianco DOC 	1VN1083-689	1261	t	2026-03-17 09:09:43.560269	2026-03-17 09:09:43.560271	23	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1083.jpg
21500	Poggio Le Volpi, Roma Rosso DOC	1VN1085-690	1350	t	2026-03-17 09:09:43.560278	2026-03-17 09:09:43.560281	409	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/poggio-roma-rosso.jpg
21501	Beringer, Founders' Estate Zinfandel	1VN230-691	1125	t	2026-03-17 09:09:43.560288	2026-03-17 09:09:43.560291	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN230.png
21502	Beringer, Founders' Estates Cabernet Sauvignon	1VN147-692	1125	t	2026-03-17 09:09:43.560298	2026-03-17 09:09:43.5603	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN147.png
21503	Beringer, Founders' Estates Chardonnay	1VN229-693	1125	t	2026-03-17 09:09:43.560323	2026-03-17 09:09:43.560328	31	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN229.png
21504	Beringer, Founders' Estates Merlot	1VN146-694	1125	t	2026-03-17 09:09:43.560336	2026-03-17 09:09:43.560339	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN146.png
21505	Beringer, Knights Valley Cabernet Sauvignon	1VN739-4-695	5243	t	2026-03-17 09:09:43.560346	2026-03-17 09:09:43.56035	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN739-2.png
21506	Spiegelau, Authentis 4400177 Bordeaux  SET/4 čaše	4400177-696	4500	t	2026-03-17 09:09:43.560358	2026-03-17 09:09:43.560361	24	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4400177.jpg
21507	Spiegelau, Authentis  4400180 Burgundy SET/4 čaše	4400180-697	4500	t	2026-03-17 09:09:43.560368	2026-03-17 09:09:43.560371	6	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Spiegelau-Burgundy-Authentis-4400180-1.jpg
21508	Spiegelau, Authentis  4400182 White Wine SET/4 čaše	4400182-698	4500	t	2026-03-17 09:09:43.560378	2026-03-17 09:09:43.56038	2	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Spiegelau-White-Wine-Glass-Authentis-4400182.jpg
21509	Spiegelau, Authentis  4400192 Bonus Pack SET/12 čaše	4400192-699	5767	t	2026-03-17 09:09:43.560386	2026-03-17 09:09:43.560388	22	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4400192.jpg
21510	Spiegelau, Authentis 7240059 Dekanter 1,5 L	7240059-700	8950	t	2026-03-17 09:09:43.560393	2026-03-17 09:09:43.560395	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7240059.jpg
21511	Spiegelau, Authentis  7240257 Dekanter  1 L	7240257-701	7900	t	2026-03-17 09:09:43.560401	2026-03-17 09:09:43.560403	9	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7240257.jpg
21512	Spiegelau, Authentis Black 4408551 Blind Tasting set 4 čaše	4408551-702	4048	t	2026-03-17 09:09:43.560409	2026-03-17 09:09:43.560411	40	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4408551.jpg
21513	Spiegelau, Authentis Casual 4800191 Tumbler SET/6 čaše	4800191-703	1983	t	2026-03-17 09:09:43.560416	2026-03-17 09:09:43.560418	21	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4800191.jpg
21514	Spiegelau, Beer Classic 4991693 Tasting Kit Craft SET/3 čaše	4991693-704	1613	t	2026-03-17 09:09:43.560424	2026-03-17 09:09:43.560426	8	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4991693.jpg
21515	Spiegelau, Beer Classic 4991697 Tasting Kit  SET/4 čaše	4991697-705	2243	t	2026-03-17 09:09:43.560432	2026-03-17 09:09:43.560434	27	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4991697.jpg
21516	Spiegelau, Berries 7160157 Dekanter 1 L	7160157-706	10350	t	2026-03-17 09:09:43.56044	2026-03-17 09:09:43.560442	5	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7160157.jpg
21517	Spiegelau, Bordeaux 7210139 Jumbo Pokal	7210139-707	12463	t	2026-03-17 09:09:43.560447	2026-03-17 09:09:43.56045	1	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7210139.jpg
21518	Spiegelau, Carafe Loop 8900187 Dekanter 1L	8900187-708	5004	t	2026-03-17 09:09:43.560455	2026-03-17 09:09:43.560457	16	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/8900187.jpg
21519	Spiegelau, Casual Entertaining 4800188 Dekanter	4800188-709	2800	t	2026-03-17 09:09:43.560463	2026-03-17 09:09:43.560465	20	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/4800188_wu-YyKcnfe1.jpg
21520	Spiegelau, Craft Beer Barrel Aged 4992521 PAK/1 čaša	4992521-710	903	t	2026-03-17 09:09:43.560471	2026-03-17 09:09:43.560473	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/71IhKRFdMPL._AC_SL1500_.jpg
21521	Spiegelau, Cremona 4561588 Water Dekanter 1,4 L	4561588-711	1307	t	2026-03-17 09:09:43.560479	2026-03-17 09:09:43.560481	28	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/SpiegelauCremona.jpg
21522	Spiegelau, Graal 5250250 Dekanter 1 L	5250250-712	11000	t	2026-03-17 09:09:43.560486	2026-03-17 09:09:43.560488	20	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/5250250.jpg
21523	Spiegelau, Novo 7550159 Dekanter	7550159-713	21000	t	2026-03-17 09:09:43.560494	2026-03-17 09:09:43.560496	26	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7550159.jpg
21524	Spiegelau, Perfect Serve Collection 4500172 Longdrink Small SET/4 čaša	4500172-714	2350	t	2026-03-17 09:09:43.560501	2026-03-17 09:09:43.560503	19	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4500172.jpg
21525	Spiegelau, Perfect Serve Collection 4500174 Coupette SET/4 čaša	4500174-715	3500	t	2026-03-17 09:09:43.560509	2026-03-17 09:09:43.560511	38	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4500174.jpg
21526	Spiegelau, Perfect Serve Collection 4500152 Mixing S čaša	4500152-716	1984	t	2026-03-17 09:09:43.560517	2026-03-17 09:09:43.560519	14	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4500152.jpg
21527	Spiegelau, Perfect Serve Collection 4500153 Mixing L čaša	4500153-717	2700	t	2026-03-17 09:09:43.560524	2026-03-17 09:09:43.560527	16	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4500153.jpg
21528	Spiegelau, Perfect Serve Collection 4500176 Perfect D.O.F. SET/4 čaša	4500176-718	2350	t	2026-03-17 09:09:43.560533	2026-03-17 09:09:43.560535	1	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4500176.jpg
21529	Spiegelau, Perfect Serve Collection 4500195 Starter SET/12	4500195-719	6371	t	2026-03-17 09:09:43.560541	2026-03-17 09:09:43.560543	38	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4500195.jpg
21530	Spiegelau, Pisa 7930057 Dekanter 1 L	7930057-720	11000	t	2026-03-17 09:09:43.560549	2026-03-17 09:09:43.560551	38	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7930057.jpg
21531	Spiegelau, Pisa 7930059 Dekanter 1,5 L	7930059-721	6291	t	2026-03-17 09:09:43.560558	2026-03-17 09:09:43.56056	33	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7930059.jpg
21532	Spiegelau, Polishing Cloth Krpa za brisanje i poliranje čaša	0000149-722	1190	t	2026-03-17 09:09:43.560566	2026-03-17 09:09:43.560568	28	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/0000149.jpg
21533	Spiegelau, Red&White 8920188 Dekanter 1L	8920188-723	8500	t	2026-03-17 09:09:43.560574	2026-03-17 09:09:43.560576	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/8920188.jpg
21535	Spiegelau, Salute 4720171 Red Wine SET/4 čaša	4720171-725	2700	t	2026-03-17 09:09:43.56059	2026-03-17 09:09:43.560592	6	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4720171.jpg
21536	Spiegelau, Salute 4720172 White Wine SET/4 čaša	4720172-726	2700	t	2026-03-17 09:09:43.560598	2026-03-17 09:09:43.5606	21	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4720172.jpg
21537	Spiegelau, Salute 4720175 Champagne Flute SET/4 čaša	4720175-727	2700	t	2026-03-17 09:09:43.560606	2026-03-17 09:09:43.560608	22	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4720175.jpg
21538	Spiegelau, Salute 4720177 Bordeaux SET/4 čaša	4720177-728	2700	t	2026-03-17 09:09:43.560613	2026-03-17 09:09:43.560616	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4720177.jpg
21539	Spiegelau, Salute 4720195 Dekanter set/ 5	4720195-729	3252	t	2026-03-17 09:09:43.560621	2026-03-17 09:09:43.560623	9	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4720195.jpg
21540	Spiegelau, Soiree 4070098 18-pcs. SET čaša	4070098-730	4579	t	2026-03-17 09:09:43.560629	2026-03-17 09:09:43.560631	16	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4070098.jpg
21541	Spiegelau, Soiree 4070296 TUMBLER set/12	4070296-731	3968	t	2026-03-17 09:09:43.560636	2026-03-17 09:09:43.560638	13	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4070296.jpg
21542	Spiegelau, Soiree 7100057 Dekanter 1L	7100057-732	4900	t	2026-03-17 09:09:43.560644	2026-03-17 09:09:43.560646	13	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7100057.jpg
21543	Spiegelau, Solution 9348357 Dekanter 0,2L+0,25L+DEKO 0,15 L ugo	9348357-733	700	t	2026-03-17 09:09:43.560651	2026-03-17 09:09:43.560654	24	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/solution-decant.jpg
21544	Spiegelau, Special Glasses 4400275 Prosecco SET/4 čaše	4400275-734	1938	t	2026-03-17 09:09:43.560659	2026-03-17 09:09:43.560661	5	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Spiegelau-Special-Glasses-Happy-Price-Prosecco-glasses-Set-of-4-4400275.jpg
21545	Spiegelau, Special Glasses 4710050 Dessert Champagne SET/4 čaša	4710050-735	2270	t	2026-03-17 09:09:43.560667	2026-03-17 09:09:43.560669	34	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/4710050_packaging-C4s3ECzM.jpg
21546	Spiegelau, Style 4670181 Red Wine set 4 čaše	4670181-736	2750	t	2026-03-17 09:09:43.560674	2026-03-17 09:09:43.560676	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4670181.jpg
21547	Spiegelau, Style 4670186 Softdrink SET/4 čaša	4670186-737	2750	t	2026-03-17 09:09:43.560682	2026-03-17 09:09:43.560684	23	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/61Ct89SSI9L._SL1500_.jpg
21548	Spiegelau, Style 4670187 Chmpagne set 4 čaše	4670187-738	2750	t	2026-03-17 09:09:43.56069	2026-03-17 09:09:43.560692	32	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4670187.jpg
21549	Spiegelau, Toscana 7430059 Dekanter 1,5L	7430059-739	6990	t	2026-03-17 09:09:43.560697	2026-03-17 09:09:43.560699	28	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7430059.jpg
21550	Spiegelau, Vino Grande 7060157 Dekanter 1,5 L	7060157-740	6500	t	2026-03-17 09:09:43.560705	2026-03-17 09:09:43.560707	3	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/7060157.jpg
21551	Spiegelau, Willsberger Collection Anniversary 1416159 Dekanter 0,75 L	1416159-741	3838	t	2026-03-17 09:09:43.560712	2026-03-17 09:09:43.560715	31	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1416159.jpg
21552	Spiegelau, Willsberger Collection Anniversary 1416175 Champagne SET/4 čaša	1416175-742	4995	t	2026-03-17 09:09:43.56072	2026-03-17 09:09:43.560722	37	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1416175.jpg
21553	Spiegelau, Willsberger Collection Anniversary 1416176 Digestive SET/4 čaša	1416176-743	4995	t	2026-03-17 09:09:43.560728	2026-03-17 09:09:43.56073	58	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1416176.jpg
21554	Spiegelau, Willsberger Collection Anniversary 1416177 Bordeaux SET/4 čaša	1416177-744	4995	t	2026-03-17 09:09:43.560735	2026-03-17 09:09:43.560737	5	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1416177.jpg
21592	Silvio Carta, Vernaccia di Oristano Riserva 2001	1VN1424-782	8250	t	2026-03-17 09:09:43.561045	2026-03-17 09:09:43.561047	17	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/vernaccia-riserva-2001-w.jpg
21555	Spiegelau, Willsberger Collection Anniversary 1416180 Burgundy SET/4 čaša	1416180-745	4995	t	2026-03-17 09:09:43.560743	2026-03-17 09:09:43.560745	5	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1416180.jpg
21556	Spiegelau, Willsberger Collection Anniversary 1416181 Red Wine SET/4 čaša	1416181-746	4995	t	2026-03-17 09:09:43.56075	2026-03-17 09:09:43.560752	18	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1416181.jpg
21557	Spiegelau, Willsberger Collection Anniversary 1416182 White Wine SET/4 čaša	1416182-747	4995	t	2026-03-17 09:09:43.560757	2026-03-17 09:09:43.56076	1	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1416182.jpg
21558	Spiegelau, Winelovers Red Wine Bordeaux SET od 4 čaše	4090177-748	2100	t	2026-03-17 09:09:43.560779	2026-03-17 09:09:43.560782	23	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4090177.jpg
21559	Spiegelau, Winelovers 4090187 Champagne SET/4 čaše	4090187-749	2100	t	2026-03-17 09:09:43.560787	2026-03-17 09:09:43.560789	37	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4090187.jpg
21560	Spiegelau, Craft Beer IPA 4992552 PAK/1 čaša	4992552-750	903	t	2026-03-17 09:09:43.560795	2026-03-17 09:09:43.560797	27	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/2-Spiegelau-Craft-Beer-Biergläser-India-Pale-Ale.jpg
21561	Nachtmann, Cigar 52814 Ashtray Round	52814-751	4513	t	2026-03-17 09:09:43.560803	2026-03-17 09:09:43.560805	9	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/52814.jpg
21562	Nachtmann, Cigar 52815 Ashtray Triangle	52815-752	4513	t	2026-03-17 09:09:43.560811	2026-03-17 09:09:43.560813	33	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/52815.jpg
21563	Nachtmann, Cigar 99372 Ashtray Cuba	99372-753	5773	t	2026-03-17 09:09:43.560819	2026-03-17 09:09:43.560821	29	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/99372.jpg
21564	Nachtmann, Highland 98196 Whisky SET/5	98196-754	9888	t	2026-03-17 09:09:43.560827	2026-03-17 09:09:43.560829	6	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/98196.jpg
21565	Nachtmann, Highland Reseda 97444 Tumbler PAK/1	97444-755	1108	t	2026-03-17 09:09:43.560835	2026-03-17 09:09:43.560837	38	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/97444.jpg
21566	Nachtmann, Punk 99501 Whisky SET/3	99501-756	11680	t	2026-03-17 09:09:43.560844	2026-03-17 09:09:43.560846	6	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/punk_whiskyset_99501.jpg
21567	Nachtmann, Samba 89993 Charger Plate SET/2	89993-757	1792	t	2026-03-17 09:09:43.560851	2026-03-17 09:09:43.560854	31	ČAŠE I VINSKI PRIBOR	
21568	Poklon bon VIVAT FINA VINA 50€	VIVAT0758-758	5000	t	2026-03-17 09:09:43.560859	2026-03-17 09:09:43.560862	29	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/Poklon-bon-50E-w.jpg
21569	Spiegelau, Highline 1700101 Red Wine 1 čaša	1700101-759	2896	t	2026-03-17 09:09:43.560867	2026-03-17 09:09:43.560869	42	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1700101.jpg
21570	Spiegelau, Highline 1700129 Champagne 1 čaša	1700129-760	2896	t	2026-03-17 09:09:43.560875	2026-03-17 09:09:43.560877	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1700129.jpg
21571	Spiegelau, Highline 1700135 Bordeaux 1 čaša	1700135-761	2896	t	2026-03-17 09:09:43.560882	2026-03-17 09:09:43.560884	48	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1700135.jpg
21572	Spiegelau, Novo Burgundy set od 6 čaša	1300000-1-762	8361	t	2026-03-17 09:09:43.56089	2026-03-17 09:09:43.560892	11	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1300000.jpg
21573	Spiegelau, Novo Red Wine set od 6 čaša	1300001-1-763	9500	t	2026-03-17 09:09:43.560899	2026-03-17 09:09:43.560901	5	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1300001.jpg
21574	Spiegelau, Novo  White Wine set od 6 čaša	1300002-1-764	9500	t	2026-03-17 09:09:43.560907	2026-03-17 09:09:43.560909	13	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1300002.jpg
21575	Spiegelau, Novo  Champagne set od 6 čaša	1300029-1-765	8361	t	2026-03-17 09:09:43.560914	2026-03-17 09:09:43.560916	25	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1300029.jpg
21576	Spiegelau, Novo Bordeaux set od 6 čaša	1300035-1-766	9500	t	2026-03-17 09:09:43.560922	2026-03-17 09:09:43.560924	24	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1300035.jpg
21577	Spiegelau, Novo Chardonnay set od 6 čaša	1300036-1-767	8361	t	2026-03-17 09:09:43.56093	2026-03-17 09:09:43.560932	10	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1300036.jpg
21578	Monterosso, Malvazija Istarska	1V665412-768	956	t	2026-03-17 09:09:43.560937	2026-03-17 09:09:43.56094	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V665412.jpg
21579	Monterosso, Monteclassico Zero Dosage	1Š5514112-769	1314	t	2026-03-17 09:09:43.560945	2026-03-17 09:09:43.560947	9	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1Š5514112.jpg
21580	Monterosso, Nero Montepulciano	1V665413-770	1566	t	2026-03-17 09:09:43.560952	2026-03-17 09:09:43.560955	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V665413.jpg
21581	Lazzaris, Umak Kruška 50 gr	1H101-771	208	t	2026-03-17 09:09:43.56096	2026-03-17 09:09:43.560962	13	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H101.jpg
21582	Lazzaris, Umak Luk 40 gr	1H100-772	208	t	2026-03-17 09:09:43.560968	2026-03-17 09:09:43.56097	28	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H100.jpg
21583	Lazzaris, Umak Smokva i sjemenke Mustarde Organic 40 gr	1H102-773	265	t	2026-03-17 09:09:43.560976	2026-03-17 09:09:43.560978	29	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H102.jpg
21584	Lazzaris, Umak Višnja i Đumbir Organic 40 gr	1H103-774	265	t	2026-03-17 09:09:43.560984	2026-03-17 09:09:43.560986	39	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H103.jpg
21585	Krajančić, Pošip Sur Lie 2017 - Arhiva	1VPOŠKR02-775	2900	t	2026-03-17 09:09:43.560992	2026-03-17 09:09:43.560994	31	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VPOŠKR02.jpg
21586	Plančić, Ager	1V5892-776	1410	t	2026-03-17 09:09:43.560999	2026-03-17 09:09:43.561001	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V5892.jpg
21587	Plančić Pharos Reserva	1V5893-777	2590	t	2026-03-17 09:09:43.561007	2026-03-17 09:09:43.561009	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V5893.jpg
21588	Plančić, Pharos Grand Cru	1V5895-778	7200	t	2026-03-17 09:09:43.561014	2026-03-17 09:09:43.561016	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V5895.jpg
21589	Silvio Carta, Cannonau di Sardegna	1VN1071-779	1600	t	2026-03-17 09:09:43.561022	2026-03-17 09:09:43.561024	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1071.jpg
21590	Silvio Carta, Mirto Bianco 1929 liquere liker	1R0507-780	2323	t	2026-03-17 09:09:43.561029	2026-03-17 09:09:43.561032	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/silvio-carta_mini_15-mirto-bianco-.jpg
21591	Vermouth Carta 29 Bianco	1R0514-781	1228	t	2026-03-17 09:09:43.561037	2026-03-17 09:09:43.561039	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/carta-29-bianco-vermut.jpg
21593	San Marzano, 11 Filari Primitivo di Manduria	1VN1429-783	1590	t	2026-03-17 09:09:43.561052	2026-03-17 09:09:43.561054	8	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN799.jpg
21594	San Marzano, Anniversario 62 Primitivo di Manduria Riserva	1VN922-784	2900	t	2026-03-17 09:09:43.561059	2026-03-17 09:09:43.561062	60	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN922.png
21595	San Marzano, Collezione 50 Magnum	1VN1316-785	5500	t	2026-03-17 09:09:43.561067	2026-03-17 09:09:43.561069	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/san-marzano-collezione-50-1VN1096.jpg
21596	San Marzano, Edda Bianco	1VN1120-786	1659	t	2026-03-17 09:09:43.561075	2026-03-17 09:09:43.561077	63	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1120.jpg
21597	San Marzano, Il Pumo Malvasia Sauvignon	1VN1121-787	785	t	2026-03-17 09:09:43.561082	2026-03-17 09:09:43.561085	366	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1121.jpg
21598	San Marzano, Sessantanni Grappa Di Primitivo 40%vol	1R030-788	3600	t	2026-03-17 09:09:43.56109	2026-03-17 09:09:43.561092	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/sess-grappa.jpg
21599	San Marzano, Sessantanni Primitivo di Manduria Magnum	1VN1094-789	6600	t	2026-03-17 09:09:43.561098	2026-03-17 09:09:43.5611	28	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN921.jpg
21600	San Marzano, Talo Malvasia Nera	1VN757-790	1050	t	2026-03-17 09:09:43.561105	2026-03-17 09:09:43.561107	335	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN757.jpg
21601	San Marzano, Talo Primitivo di Manduria	1VN923-791	1192	t	2026-03-17 09:09:43.561113	2026-03-17 09:09:43.561115	216	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN923.jpg
21602	Salentein, Barrel Selection Chardonnay	1VN1031-792	1495	t	2026-03-17 09:09:43.56112	2026-03-17 09:09:43.561123	40	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1031.jpg
21603	Salentein, Numina Gran Corte	1VN991-793	2695	t	2026-03-17 09:09:43.561128	2026-03-17 09:09:43.56113	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/numina-gran-corte.jpg
21604	Tenuta San Pietro, Donna Lina	1VN1018-794	3716	t	2026-03-17 09:09:43.561135	2026-03-17 09:09:43.561138	1	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1018.jpg
21605	Tenuta San Pietro, Gavi	1VN1015-795	1526	t	2026-03-17 09:09:43.561143	2026-03-17 09:09:43.561146	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1015.jpg
21606	Tenuta San Pietro, Gavi Il Mandorlo	1VN1016-796	2568	t	2026-03-17 09:09:43.561151	2026-03-17 09:09:43.561153	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1016.png
21607	Tenuta San Pietro, Nero Monferrato	1VN1017-797	1659	t	2026-03-17 09:09:43.561158	2026-03-17 09:09:43.561161	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1017.jpg
21608	Rizman, Pošip	1V0473-798	1690	t	2026-03-17 09:09:43.561166	2026-03-17 09:09:43.561168	9	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0473.jpg
21609	Rizman, Primus plavac mali	1V04795-799	1890	t	2026-03-17 09:09:43.561174	2026-03-17 09:09:43.561176	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/rizman-primus.jpg
21610	Rizman, Rusula	1V0474-800	1250	t	2026-03-17 09:09:43.561195	2026-03-17 09:09:43.561198	6	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0474.jpg
21611	Ivančić, Chardonnay sur lie	1V00231-801	2760	t	2026-03-17 09:09:43.561204	2026-03-17 09:09:43.561206	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00231.png
21612	Ivančić, Dark Side Barrique	1VN85221-802	1495	t	2026-03-17 09:09:43.561211	2026-03-17 09:09:43.561214	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN85221.png
21613	Ivančić, Griffin Brut	1VN6896-803	2260	t	2026-03-17 09:09:43.561219	2026-03-17 09:09:43.561221	6	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN6896.png
21614	Ivančić, Griffin Dark Side Brut	1VN68961-804	2995	t	2026-03-17 09:09:43.561227	2026-03-17 09:09:43.561229	5	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN68961.png
21615	Ivančić, Griffin Rose Brut	1VN68962-805	2510	t	2026-03-17 09:09:43.561235	2026-03-17 09:09:43.561238	41	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN68962.png
21616	Ivančić, Griffin Single Vineyard	1VN252125-806	1495	t	2026-03-17 09:09:43.561243	2026-03-17 09:09:43.561245	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/ivancic-griffin-single-vineyard.jpg
21617	Franc Arman, Chardonnay	1V430-807	1049	t	2026-03-17 09:09:43.561251	2026-03-17 09:09:43.561253	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V430.jpg
21618	Franc Arman, Muškat Dolcetto	1V0142-808	823	t	2026-03-17 09:09:43.561259	2026-03-17 09:09:43.561261	32	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0142.jpg
21619	Franc Arman, Teran	1V245-809	1295	t	2026-03-17 09:09:43.561266	2026-03-17 09:09:43.561269	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V245.jpg
21620	Franc Arman, Teran Barrique	1V431-810	1895	t	2026-03-17 09:09:43.561274	2026-03-17 09:09:43.561276	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V431.jpg
21621	Finca La Estacada, 12 Meses Barrica Crianza	1VN911-811	995	t	2026-03-17 09:09:43.561282	2026-03-17 09:09:43.561284	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN911.jpg
21622	Finca La Estacada, Ocho Y Medio Malbec	1VN809-812	557	t	2026-03-17 09:09:43.561289	2026-03-17 09:09:43.561292	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/finca-malbec-850-w.jpg
21623	Finca La Estacada, Secua Bianco Crianza en lias	1VN1012-813	1274	t	2026-03-17 09:09:43.561297	2026-03-17 09:09:43.561299	11	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/fin-secua.jpg
21624	Finca La Estacada, Varietales Reserva	1VN1104-814	1168	t	2026-03-17 09:09:43.561305	2026-03-17 09:09:43.561307	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1104.jpg
21625	Hexamer, Grauburgunder (pinot sivi)	1VN1137-815	1220	t	2026-03-17 09:09:43.561312	2026-03-17 09:09:43.561315	345	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1137.jpg
21626	Hexamer, Riesling Quarzit	1VN1139-816	1220	t	2026-03-17 09:09:43.561321	2026-03-17 09:09:43.561323	60	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1139.jpg
21627	Hexamer, Riesling Halbtrocken	1VN1140-817	1108	t	2026-03-17 09:09:43.561329	2026-03-17 09:09:43.561331	32	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/hexamer-riesling-halbtr.jpg
21628	Hexamer, Weissburgunder (pinot bijeli)	1VN1138-818	995	t	2026-03-17 09:09:43.561337	2026-03-17 09:09:43.56134	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1138.jpg
21629	Šokac, Liker od meda 22%vol	1R00514-819	1555	t	2026-03-17 09:09:43.561345	2026-03-17 09:09:43.561347	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00514.jpg
21630	Šokac, Liker od oraha 20%vol	1R00516-820	1555	t	2026-03-17 09:09:43.561353	2026-03-17 09:09:43.561355	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00516.jpg
21631	Šokac, Liker od višnje 18%vol	1R00515-821	1555	t	2026-03-17 09:09:43.56136	2026-03-17 09:09:43.561362	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00515.jpg
21632	Šokac, Rakija Dunjevača 40%vol	1R00517-822	2860	t	2026-03-17 09:09:43.561368	2026-03-17 09:09:43.56137	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/šokac-dunjevaca.jpg
21633	Šokac, Rakija Jabukovača 40%vol	1R00512-823	2020	t	2026-03-17 09:09:43.561375	2026-03-17 09:09:43.561377	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00512.jpg
21634	Šokac, Rakija Kajsijevača 40%vol	1R00513-824	2860	t	2026-03-17 09:09:43.561382	2026-03-17 09:09:43.561384	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00513.jpg
21635	Šokac, Rakija Viljamovka 40%vol	1R00511-825	2330	t	2026-03-17 09:09:43.56139	2026-03-17 09:09:43.561392	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00511.jpg
21636	Šokac, Rakija Šljivovica 40%vol	1R00510-826	2080	t	2026-03-17 09:09:43.561397	2026-03-17 09:09:43.561399	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00510.jpg
21637	Grgić, Plavac	GRGIĆPL-827	3670	t	2026-03-17 09:09:43.561405	2026-03-17 09:09:43.561407	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/GRGIĆPL.jpg
21638	Grgić, Pošip	GRGIĆPOŠ-828	2620	t	2026-03-17 09:09:43.561413	2026-03-17 09:09:43.561415	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/GRGIĆPOŠ.jpg
21639	Transbottle, Kovčeg za 6 boca Travel Kit/Set	1TR2-829	9224	t	2026-03-17 09:09:43.561421	2026-03-17 09:09:43.561423	17	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1TR2.jpg
21640	Raventos i Blanc, Blanc de Blancs Vintage Extra Brut	1ŠN606-830	1950	t	2026-03-17 09:09:43.561429	2026-03-17 09:09:43.561431	504	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/RAVENTOS-i-BLANC-BLANC-de-BLANCS-extra-brut-w.jpg
21641	Raventos i Blanc, De la Finca Brut Nature	1ŠN607 -831	2620	t	2026-03-17 09:09:43.561437	2026-03-17 09:09:43.561439	17	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1ŠN607.jpg
21642	Monte Zovo, Wohlgemuth Pinot Grigio	1VN1174-832	1530	t	2026-03-17 09:09:43.561444	2026-03-17 09:09:43.561446	29	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1174.jpg
21643	Can Sumoi, Perfum	1VN1176-833	1234	t	2026-03-17 09:09:43.561451	2026-03-17 09:09:43.561454	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1176.jpg
21644	Can Sumoi, Xarel-lo	1VN1175-834	1394	t	2026-03-17 09:09:43.561459	2026-03-17 09:09:43.561461	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1175.jpg
21645	Heiland, Beer Liqueur 22%vol	1R0329-835	2634	t	2026-03-17 09:09:43.561467	2026-03-17 09:09:43.561469	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0329.jpg
21646	Bouvet 1851 Rose Brut	1ŠN602-836	1045	t	2026-03-17 09:09:43.561474	2026-03-17 09:09:43.561477	24	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/bouvet-1851-rose.jpg
21647	Chic Barcelona Brut	1ŠN622-837	830	t	2026-03-17 09:09:43.561482	2026-03-17 09:09:43.561484	1427	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/chic-b-75-brut.jpg
21648	Chic Barcelona Rose Semi seco	1ŠN623-838	690	t	2026-03-17 09:09:43.56149	2026-03-17 09:09:43.561492	32	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/chic-barce-rose-ss-1.jpg
21649	MG London Dry Gin 40vol%	1R0307-839	1128	t	2026-03-17 09:09:43.561498	2026-03-17 09:09:43.5615	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/mg-london-dry.jpg
21650	MG Canterbury London Dry Gin 40vol%	1R0306-840	1971	t	2026-03-17 09:09:43.561505	2026-03-17 09:09:43.561507	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/canberbury.jpg
21651	San Marzano, Sessantanni Primitivo di Manduria - Limited Edition	1VN1171-841	3150	t	2026-03-17 09:09:43.561513	2026-03-17 09:09:43.561515	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/san-m-6sanni.jpg
21652	Šoškić Pinot noir Old Selection	1V78852-842	1730	t	2026-03-17 09:09:43.561521	2026-03-17 09:09:43.561523	42	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/siskic-pc.jpg
21653	Šoškić Pinot gris Rose	1V48852-843	1075	t	2026-03-17 09:09:43.561528	2026-03-17 09:09:43.561531	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/Soskic-pinot-gris-w.jpg
21654	Pere Ventura, Primer Reserva Brut Cava	1ŠN617-844	1020	t	2026-03-17 09:09:43.561536	2026-03-17 09:09:43.561538	1032	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/pv-primer-brut.jpg
21655	Pere Ventura, Primer Reserva Semi sec	1ŠN618-845	883	t	2026-03-17 09:09:43.561544	2026-03-17 09:09:43.561546	33	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/pv-primer-brut.jpg
21656	Pere Ventura, Primer Reserva Rose Semi sec - UŠTEDA 10 kn!	1ŠN619-846	883	t	2026-03-17 09:09:43.561551	2026-03-17 09:09:43.561553	7	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/pv-rose-ss.jpg
21657	Pere Ventura, Tresor Reserva Brut Vintage Mini 0,2 L	1ŠN621-847	440	t	2026-03-17 09:09:43.56156	2026-03-17 09:09:43.561562	113	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/PF-TRESOR-RESERVA-mini-W.jpg
21658	Pere Ventura, Tresor GRAN Reserva Brut Nature Vintage	1ŠN611-848	1540	t	2026-03-17 09:09:43.561568	2026-03-17 09:09:43.56157	33	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/pv-tresor-gr-res-br-nat.jpg
21659	Pere Ventura, Tresor Rose Brut	1ŠN610-849	1260	t	2026-03-17 09:09:43.561576	2026-03-17 09:09:43.561578	40	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/pv-tresor-rose-brut.jpg
21660	Louis Barthelemy, Quartz Champagne Extra Brut	1ŠN119-850	4280	t	2026-03-17 09:09:43.561583	2026-03-17 09:09:43.561585	3	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN59.jpg
21661	Pere Ventura, Tresor Anniversary Gran Reserva Brut Vintage Limited Edition	1ŠN615-1-851	1394	t	2026-03-17 09:09:43.561591	2026-03-17 09:09:43.561593	25	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/pere-ventura-tresor-anniversary-21-w.jpg
21662	Pere Ventura, Vintage Gran Reserva Brut 2016	1ŠN616-4-852	4500	t	2026-03-17 09:09:43.561612	2026-03-17 09:09:43.561615	7	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/gran-vintage.jpg
21663	Pere Ventura, "Gran Vintage" Gran Reserva Brut Paraje Calificado	1ŠN625-1-853	5850	t	2026-03-17 09:09:43.561621	2026-03-17 09:09:43.561623	39	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/paraje.jpg
21664	Famarvini, Epicuro Italian Zinfandel	1VN1204-854	929	t	2026-03-17 09:09:43.561629	2026-03-17 09:09:43.561631	446	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/epicuro-zin.jpg
21665	Aspide Apero Spritz	1R0520-855	1550	t	2026-03-17 09:09:43.561637	2026-03-17 09:09:43.561639	357	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/aspide-spiritz.jpg
21666	Gillo Gin	1R0521-856	1950	t	2026-03-17 09:09:43.561644	2026-03-17 09:09:43.561646	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/Silvio-Carta-Gillo-Gin-100-cl-38-alc-p.jpg
21667	Boigin Saffron Gin	1R0523-857	4300	t	2026-03-17 09:09:43.561652	2026-03-17 09:09:43.561654	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/boigin-saffron.jpg
21668	Pilloni Grifu Limu Gin	1R0522-858	3250	t	2026-03-17 09:09:43.561659	2026-03-17 09:09:43.561661	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/gifu-limu.jpg
21669	Pigskin Gin London Dry	1R0503-859	2455	t	2026-03-17 09:09:43.561667	2026-03-17 09:09:43.561669	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/pigskin-london-dry.jpg
21670	Silvio Carta, Vernaccia di Oristano Riserva 1968	1VN1202-860	22404	t	2026-03-17 09:09:43.561674	2026-03-17 09:09:43.561676	27	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/silvio-carta_MINI_38-vernaccia-1968_SC.jpg
21671	Chartreuse verte zeleni liker	1R00119-861	5500	t	2026-03-17 09:09:43.561682	2026-03-17 09:09:43.561684	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/chartreuse-green.jpg
21672	Chartreuse jaune žuti liker	1R00120-862	5950	t	2026-03-17 09:09:43.56169	2026-03-17 09:09:43.561692	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/chartreuse-zuti.jpg
21673	Flor de Caña 5 y.o. Rum	1R00233-863	1566	t	2026-03-17 09:09:43.561697	2026-03-17 09:09:43.561699	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/flor-de-cana-5yo.jpg
21674	Flor de Cana Gran Reserva 7 y.o. Rum	1R00243-864	2190	t	2026-03-17 09:09:43.561705	2026-03-17 09:09:43.561707	38	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/flor-de-cana-7yo-gran-res.jpg
21675	Flor de Caña 18 Cantenario Single Estate Rum	1R00241-865	4911	t	2026-03-17 09:09:43.561712	2026-03-17 09:09:43.561715	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/rum_flor-de-cana-18-sing-est.jpg
21676	Barcelo Imperial Onyx Rum	1R00307-866	3915	t	2026-03-17 09:09:43.56172	2026-03-17 09:09:43.561722	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/ron-barcelo-onyx.jpg
21677	Dictador Rum 12 Solera Ultra Premium Reserva	VIVAT0867-867	4000	t	2026-03-17 09:09:43.561728	2026-03-17 09:09:43.56173	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/dictador-rum-12-Ultra-Prem-Reserve-Solera.jpg
21678	Don Papa Rum 7 y.o.	100R248-868	5500	t	2026-03-17 09:09:43.561735	2026-03-17 09:09:43.561737	29	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/don-papa-rum.jpg
21679	Atlantico Gran Reserva Rum	100R308-869	5282	t	2026-03-17 09:09:43.561743	2026-03-17 09:09:43.561745	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/Atlantico-Gran-Reserva.jpg
21680	Angostura 1919 Premium Gold Rum	1R00306-870	3053	t	2026-03-17 09:09:43.56175	2026-03-17 09:09:43.561752	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/angostura-deluxe.jpg
21681	Appleton Estate Rare Blend 12 y. Rum	1R00301-871	3132	t	2026-03-17 09:09:43.561758	2026-03-17 09:09:43.56176	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/Appleton_Estate_Year_Old_Jamaican_Rum.jpg
21682	Facundo Eximo X y.o. Rum	1R00310-872	7406	t	2026-03-17 09:09:43.561765	2026-03-17 09:09:43.561768	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/facundo-eximo.jpg
21683	Sacchetto, Fili Moscato dolce	1VN461-873	800	t	2026-03-17 09:09:43.561773	2026-03-17 09:09:43.561775	102	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/fili-moscato-saccheto.jpg
21684	Papa's Pilar 24 Solera Dark Rum "Ernest Hemingway"	1R00245-874	5667	t	2026-03-17 09:09:43.561781	2026-03-17 09:09:43.561783	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/papas-pilar-24.jpg
21685	Papa's Pilar 24 Solera Dark Rum Sherry Cask Finish Limited edition	1R00246-875	6570	t	2026-03-17 09:09:43.561788	2026-03-17 09:09:43.56179	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/papas-pilar-sherry-c-finish.jpg
21686	Emperor Mauritian Heritage Rum	1R00249-876	2588	t	2026-03-17 09:09:43.561796	2026-03-17 09:09:43.561798	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/rum-emperor-heritage.jpg
21687	Cartavio 12 Solera Ron rum	1R00302-877	3318	t	2026-03-17 09:09:43.561804	2026-03-17 09:09:43.561806	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/ron-cartavio-gift-12.jpg
21688	El Dorado 12 Years Old Finest Demerara Rum	1R00303-878	3560	t	2026-03-17 09:09:43.561811	2026-03-17 09:09:43.561813	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/ron-el-dorado-12.jpg
21689	El Dorado 15 Years Old Finest Demerara Rum Special Reserve	1R00304-879	5630	t	2026-03-17 09:09:43.561819	2026-03-17 09:09:43.561821	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/el-dorado-15-gift.jpg
21690	Santa Teresa 1796 Solera Rum	1R00240-880	4904	t	2026-03-17 09:09:43.561826	2026-03-17 09:09:43.561828	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/santa-teresa-gift.jpg
21691	Ron Abuelo Añejo 12 Años Ron	1R00309-881	3769	t	2026-03-17 09:09:43.561834	2026-03-17 09:09:43.561836	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/abuelo_12_gift.jpg
21692	Foursquare Premise 10 Years Old Single Blended Rum	1R00325-882	6437	t	2026-03-17 09:09:43.561842	2026-03-17 09:09:43.561844	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/foursquere-10.jpg
21693	Diplomático Mantuano Ron Extra Añejo	1R00305-883	3026	t	2026-03-17 09:09:43.561849	2026-03-17 09:09:43.561852	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/Diplomático-Mantuano-Ron-Extra-Añejo.jpg
21694	Diplomático RESERVA EXCLUSIVA  u poklon kutiji	1R00311-884	4446	t	2026-03-17 09:09:43.561857	2026-03-17 09:09:43.561859	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/dilomatico-reserva-exclusiva-gift-w.jpg
21695	El Ron Prohibido Solera 15 Reserva Finest Blended Mexican Rum	1R00244-885	3400	t	2026-03-17 09:09:43.561865	2026-03-17 09:09:43.561867	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/el-ron-forbidden-great-reserve-15-years.jpg
21696	Nikka From the Barrel Double Matured Blended Whisky 51,4% Vol. Giftbox	1R00321-886	4200	t	2026-03-17 09:09:43.561872	2026-03-17 09:09:43.561875	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/nikka-from-the-barrel.jpg
21697	Mackinlay's RARE &amp; OLD Highland Malt Whisky	1ROO323-887	19895	t	2026-03-17 09:09:43.56188	2026-03-17 09:09:43.561882	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/rare-old-mackinelay.jpg
21698	San Marzano, Vermentino "Timo"	1VN1173-888	880	t	2026-03-17 09:09:43.561887	2026-03-17 09:09:43.56189	20	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/timo-vermentino.jpg
21699	San Marzano, Liboll Rose Extra Dry	1Š00238-889	730	t	2026-03-17 09:09:43.561896	2026-03-17 09:09:43.561899	17	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/sm-libol-rose.jpg
21700	Ferrari, Perle Rose Brut Vintage Riserva	1ŠN406-890	3783	t	2026-03-17 09:09:43.561904	2026-03-17 09:09:43.561906	21	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/ferrari-perle-rose.jpg
21701	Monasterio, Carinena Old Vine Special Selection	1VN1221-891	1128	t	2026-03-17 09:09:43.561912	2026-03-17 09:09:43.561914	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/monasterio-old-wine-carinena.png
21702	Mount Nelson, Sauvignon blanc Marlborough	1VN270-892	1725	t	2026-03-17 09:09:43.561919	2026-03-17 09:09:43.561921	20	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/mount-nelson-sauvignon-blanc.png
21703	Monasterio, Reserva	1VN1046-893	903	t	2026-03-17 09:09:43.561927	2026-03-17 09:09:43.561929	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/MONASTERIO-RESERVA.png
21704	Corona de Aragon, Vermouth tinto	1VN1220-894	989	t	2026-03-17 09:09:43.561935	2026-03-17 09:09:43.561937	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/corona-vermouth-tinto.jpg
21705	Corona de Aragon, Vermouth blanco	1VN1219-895	989	t	2026-03-17 09:09:43.561943	2026-03-17 09:09:43.561945	37	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/corona-vermouth-blanco.jpg
21706	Torres Selecta Truffle Čips s okusom crnog tartufa 40g	1H301-896	200	t	2026-03-17 09:09:43.561951	2026-03-17 09:09:43.561953	11	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/torres-tarfuf-ww.jpg
21707	Veralda, Ambra Malvazija	1V2056-897	2100	t	2026-03-17 09:09:43.561959	2026-03-17 09:09:43.561961	15	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/veralda-ambra.jpg
21708	Veralda, Pet-nat iz terana	1VN4144-898	1600	t	2026-03-17 09:09:43.561966	2026-03-17 09:09:43.561968	20	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/veralda-pet-nat.jpg
21709	Veralda, Malvazija Xtriana Bio	1VN1442-899	1255	t	2026-03-17 09:09:43.561974	2026-03-17 09:09:43.561976	107	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/veralda-xtriana-1.jpg
21710	Veralda, Xtrian Rose Brut	1Š144-900	1990	t	2026-03-17 09:09:43.561981	2026-03-17 09:09:43.561983	15	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/1S144-w.jpg
21711	Veralda, Xtrian Refošk	1VN0156-901	2890	t	2026-03-17 09:09:43.561989	2026-03-17 09:09:43.561991	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/veralda-xtrian-refošk.jpg
21712	Chateau Belair-Coubet rouge - čak 6 zlatnih medalja!	1VN1224-2-902	970	t	2026-03-17 09:09:43.561996	2026-03-17 09:09:43.561999	580	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/BELAIR-COUBET-20-W.jpg
21713	Nerica, Pošip	1VN0358901-2-903	1900	t	2026-03-17 09:09:43.562004	2026-03-17 09:09:43.562019	229	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/nerica-posip.jpg
21714	Corky Made in Switzerland, otvarač vadičep	1DN100-904	3185	t	2026-03-17 09:09:43.562026	2026-03-17 09:09:43.562028	57	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/corky.jpg
21715	Ron Zacapa Centenario 23 SISTEMA SOLERA Gran Reserva Rum 40% Giftbox	1R00337-905	6400	t	2026-03-17 09:09:43.562034	2026-03-17 09:09:43.562036	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zacapa-23.jpg
21716	Ron Zacapa Centenario XO Solera Gran Reserva Especial 40% Giftbox	1R00377-906	13900	t	2026-03-17 09:09:43.562043	2026-03-17 09:09:43.562045	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zacapa-centenario-xo.jpg
21717	Ron Zacapa Centenario EDICIÓN NEGRA Sistema Solera Gran Reserva Rum 43% Vol. Giftbox	1R00381-907	8450	t	2026-03-17 09:09:43.562051	2026-03-17 09:09:43.562053	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Ron-Zacapa-Centenario-NEGRA-Sistema-Solera-Gran-Reserva.jpg
21718	Chabasse XO Cognac 40% Vol. Giftbox	1R00384-908	12960	t	2026-03-17 09:09:43.562058	2026-03-17 09:09:43.562061	25	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/chabasse-xo-cognac.jpg
21719	Kozlović Santa Lucia Noir	1V0316-909	6371	t	2026-03-17 09:09:43.562066	2026-03-17 09:09:43.562068	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/kozlov-st-lucia-noirr.jpg
21720	Kozlović Santa Lucia Malvazija	1V53-910	4230	t	2026-03-17 09:09:43.562074	2026-03-17 09:09:43.562076	35	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Kozlovic-Santa-Lucia-Malvazija-2016.jpg
21721	Nerica, Pošip Mindel sur lie	1VN05390-2-911	2950	t	2026-03-17 09:09:43.562081	2026-03-17 09:09:43.562083	30	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/nerica-posip-mindel-ww.jpg
21722	Tomatin Legacy Highland Single Malt Scotch Whisky 43% Vol. Giftbox	1R00319-912	2990	t	2026-03-17 09:09:43.562089	2026-03-17 09:09:43.562091	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/tomatin-legacy.jpg
21723	Tomatin 14 Years Highland Single Malt Whisky Old Port Casks 46% Vol. Giftbox	1R00375-913	6570	t	2026-03-17 09:09:43.562096	2026-03-17 09:09:43.562098	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Tomatin-14-Years-Highland-Single-Malt-Whisky-Old-Port-Casks-46-Vol..jpg
21724	Jack Daniel's No. 27 Double Barreled Whiskey Gold 40% Vol.	1R00371-914	8295	t	2026-03-17 09:09:43.562104	2026-03-17 09:09:43.562106	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Jack-Daniels-No.-27-Double-Barreled-Whiskey-Gold.jpg
21725	Jura 10 Years Old  Single Malt Scotch Whiskey ORIGIN TATTOO Special Edition 40% Vol.	1R00340-915	3716	t	2026-03-17 09:09:43.562112	2026-03-17 09:09:43.562114	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/jura-10-years-old-original-tattoo-edition.jpg
21726	Jack Daniel's Sinatra Select Bold Smooth Classic 45% Vol. Tennessee Whiskey	1R00370-916	18316	t	2026-03-17 09:09:43.562119	2026-03-17 09:09:43.562122	40	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Jack-Daniels-Sinatra-Select-Bold-Smooth-Classic-45-Vol.-Tennessee-Whiskey.jpg
21727	The Dalmore 12 Years Old Highland Single Malt Scotch Whisky 40% Vol. Giftbox	1R00366-917	9200	t	2026-03-17 09:09:43.562127	2026-03-17 09:09:43.562129	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/The-Dalmore-12-Years-Old-Highland-Single-Malt-Scotch-Whisky-40-Vol.-Giftbox.jpg
21728	Talisker 10 Years Old Single Malt Whisky 45,8% Vol. Giftbox	1R00369-918	4280	t	2026-03-17 09:09:43.562134	2026-03-17 09:09:43.562137	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/1R00369-w.jpg
21729	Yamazakura Blended Whisky 40% Vol. Giftbox	1R00385-919	3252	t	2026-03-17 09:09:43.562142	2026-03-17 09:09:43.562144	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/WHISKY-YAMAZAKURA-BLENDED-40-CL.70-GIFTBOX.jpg
21730	Ron Millonario XO Reserva Especial 40% Vol. Giftbox	1R00372-920	13490	t	2026-03-17 09:09:43.562149	2026-03-17 09:09:43.562152	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Ron-Millonario-XO-Reserva-Especial-40-Vol.-Giftbox.jpg
21731	Marca Negra Mezcal Espadín 100% Agave 51,5% Vol.	1R00339-921	5442	t	2026-03-17 09:09:43.562157	2026-03-17 09:09:43.562159	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/marca-negra-mezcal-espadin.jpg
21732	Akashi Red Blended Whisky 40% Vol.	1R00367-922	2250	t	2026-03-17 09:09:43.562165	2026-03-17 09:09:43.562167	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/akashi-red-w.jpg
21733	White Oak Akashi Single Malt Whisky 46% Vol. Giftbox	1R7403-923	7050	t	2026-03-17 09:09:43.562172	2026-03-17 09:09:43.562174	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/White-Oak-AKASHI-Single-Malt-Whisky-46-Vol.Giftbox.jpg
21734	Carpano Antica Formula Vermouth 16,5% Vol.	1R000514-1-924	4220	t	2026-03-17 09:09:43.56218	2026-03-17 09:09:43.562182	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Carpano-Antica-Formula-Vermouth.jpg
21735	Lustau Vermouth Blanco 15% Vol.	1R0513-925	1924	t	2026-03-17 09:09:43.562188	2026-03-17 09:09:43.56219	27	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/vermut-blanco-lustau-2.jpg
21736	Lustau Vermouth Rojo 15% Vol. crveni	1R0512-926	1990	t	2026-03-17 09:09:43.562196	2026-03-17 09:09:43.562198	89	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/vermut-rojo-lustau.jpg
21737	Lustau Vermouth Rosado 15% Vol. rose	1R0602-927	1990	t	2026-03-17 09:09:43.562203	2026-03-17 09:09:43.562206	36	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/vermut-rose-lustau.jpg
21738	Zotter, Lobooko Uz crveno vino čokolada 70 gr	1H-20588-928	370	t	2026-03-17 09:09:43.562211	2026-03-17 09:09:43.562213	29	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/labooko-red-wine.jpg
21739	Zotter, Čokolada za piće "Nektar bogova" 110 g	1H-21024-929	662	t	2026-03-17 09:09:43.562218	2026-03-17 09:09:43.562221	27	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-nektar-bogova.jpg
21740	Zotter, Čokolada za piće "Zeleni čaj" 110 g	1H-21410-930	662	t	2026-03-17 09:09:43.562226	2026-03-17 09:09:43.562228	34	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-zimska-carolija.jpg
21741	Zotter, Espresso Macchiato u tamnoj čokoladi 70 g	1H-16544-931	540	t	2026-03-17 09:09:43.562235	2026-03-17 09:09:43.562237	17	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/espresso-macchiatoW.jpg
21742	Zotter, Kesten + Rum u tamnoj čokoladi 70 g	1H-16519-932	540	t	2026-03-17 09:09:43.562242	2026-03-17 09:09:43.562244	17	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-kesten-rum2.jpg
21743	Zotter, Lobooko Uz bijelo vino čokolada 70 gr	1H-20587-933	370	t	2026-03-17 09:09:43.56225	2026-03-17 09:09:43.562252	38	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-lab-white-wine2.jpg
21744	Zotter, Čokolada za piće "Zimska čarolija" 110 g	1H-21070-934	662	t	2026-03-17 09:09:43.562257	2026-03-17 09:09:43.56226	12	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-zimska-carolija.jpg
21745	Zotter, "Tiramisu" u čokoladi 70 g	1H-16502-935	370	t	2026-03-17 09:09:43.562265	2026-03-17 09:09:43.562267	20	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-tiramisu2.jpg
21746	Zotter, Marc de Champagne + Malina u čokoladi 70 g	1H-16469-936	540	t	2026-03-17 09:09:43.562272	2026-03-17 09:09:43.562275	33	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-marc-de-champagne-i-malina2.jpg
21747	Zotter, Đumbir + Limun u čokoladi 70 g	1H-16466-937	370	t	2026-03-17 09:09:43.56228	2026-03-17 09:09:43.562282	33	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-dumbir-i-limun2.jpg
21748	Zotter, Kesten + Brusnica "For the best employee in the World" 70 g	1H-16458-938	370	t	2026-03-17 09:09:43.562287	2026-03-17 09:09:43.56229	31	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-for-the-best-empl2.jpg
21749	Zotter, "Punč" u čokoladi 70 g	1H-16457-939	370	t	2026-03-17 09:09:43.562295	2026-03-17 09:09:43.562297	7	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-punsch2.jpg
21750	Zotter, Šljiva + Marcipan u čokoladi 60% 70 g	1H-16400-940	431	t	2026-03-17 09:09:43.562303	2026-03-17 09:09:43.562305	9	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-sljiva-marzipan2.jpg
21751	Zotter, "Stress stopper" u čokoladi 40% kakaoa 70 g	1H-16379-941	540	t	2026-03-17 09:09:43.562311	2026-03-17 09:09:43.562313	19	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-stress-stopper2.jpg
21752	Zotter, "Crveno vino" u tamnoj čokoladi 70% kakaoa 70 g	1H-16373-942	431	t	2026-03-17 09:09:43.562318	2026-03-17 09:09:43.562321	15	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-red-wine-3.jpg
21753	Zotter, "Kuhano vino" u čokoladnom omotaču 40% kakaoa 70 g	1H-16300-943	370	t	2026-03-17 09:09:43.562326	2026-03-17 09:09:43.562328	8	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-gluh-wein2.jpg
21754	Zotter, "Medenjak, Gingerbread" u tamnoj čokoladi 70% kakaoa 70 g	1H-16299-944	370	t	2026-03-17 09:09:43.562334	2026-03-17 09:09:43.562336	28	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-medenjak2.jpg
21755	Zotter, "Cognac + Coffee" tamnoj čokoladi 70 g	1H-16268-945	540	t	2026-03-17 09:09:43.562341	2026-03-17 09:09:43.562343	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-cognac-kava2.jpg
21756	Zotter, "Whisky" tamnoj čokoladi 70 g	1H-16151-946	540	t	2026-03-17 09:09:43.562349	2026-03-17 09:09:43.562351	16	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-whisky3.jpg
21757	Zotter, "Whisky + Slanina/Špek" tamnoj čokoladi 70 g	1H-16497-947	370	t	2026-03-17 09:09:43.562356	2026-03-17 09:09:43.562358	5	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zotter-whisky-bacon2.jpg
21758	Simon Coll, Naraja tamna čokolada s korom naranče  85 g	1H2528-948	460	t	2026-03-17 09:09:43.562364	2026-03-17 09:09:43.562366	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/sc-naraja.jpg
21759	Simon Coll, Cappuccino tamna mlij. čokolada s kavom  85 g	1H2529-949	460	t	2026-03-17 09:09:43.562371	2026-03-17 09:09:43.562373	6	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/sc-cappuccino.jpg
21760	Simon Coll, Mliječna čokolada 50% kakaoa  200 g	1H1470-950	600	t	2026-03-17 09:09:43.562379	2026-03-17 09:09:43.562381	109	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/sc-50-choco.jpg
21761	Amatller, Čokoladne praline s bademom u lim. kutiji 35g	1H5223-951	520	t	2026-03-17 09:09:43.562386	2026-03-17 09:09:43.562388	40	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/amatller-35-badem.jpg
21762	Amatller, Čokoladni listići  "Maracuja" u limenoj kutiji 60 g	1H2812-952	661	t	2026-03-17 09:09:43.562394	2026-03-17 09:09:43.562396	40	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/amatller-60-maracuja.jpg
21763	Amatller, Čokolada tamna Ghana kakao 70% 70g	1H9827-953	450	t	2026-03-17 09:09:43.562401	2026-03-17 09:09:43.562404	22	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/amatller-gana-70-b.jpg
21764	Amatller, Čokolada tamna Ecuador kakao 85% 70g	1H9830-954	450	t	2026-03-17 09:09:43.562409	2026-03-17 09:09:43.562411	5	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/amatller-85.jpg
21765	Tamna čokolada Dark Stevia bez saharoze Vr Choco Art 50g	1H8004-955	292	t	2026-03-17 09:09:43.562417	2026-03-17 09:09:43.562419	26	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Čokolada-bez-saharoze-obična-55-kakao.jpg
21766	Tamna čokolada Konoplja Stevia bez saharoze Vr Choco Art 50g	1H8003-956	332	t	2026-03-17 09:09:43.562424	2026-03-17 09:09:43.562426	21	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Čokolada-bez-saharoze-konoplja-1.jpg
21767	Tamna čokolada Tartuf, Med, Orah Vr Choco Art 90g	1H8000-957	571	t	2026-03-17 09:09:43.562446	2026-03-17 09:09:43.562449	38	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Tartufvr.jpg
21768	Tamna čokolada Teranino Vr Choco Art 90g	1H8001-958	465	t	2026-03-17 09:09:43.562455	2026-03-17 09:09:43.562457	5	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/teranino-vr-choco.jpg
21769	Tamna čokolada Biska Vr Choco Art 90g	1H8002-959	465	t	2026-03-17 09:09:43.562462	2026-03-17 09:09:43.562464	39	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/biska-vrchoco.jpg
21770	Jagunić, Three Stars Brut	1ŠM569-960	1550	t	2026-03-17 09:09:43.56247	2026-03-17 09:09:43.562472	23	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/jagunic-3-st.jpg
21771	Jagunić, Amber Selection Traminac crveni	1V64483-961	2495	t	2026-03-17 09:09:43.562478	2026-03-17 09:09:43.56248	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/JAGUNIC-AMBER-TRAMINAC-VINO-075-L-W.jpg
21772	Jagunić, Traminac crveni (suho)	1V64482-962	960	t	2026-03-17 09:09:43.562486	2026-03-17 09:09:43.562488	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/jagunic-traminac-amber.jpg
21773	Jagunić, Blanc de Blancs Brut Nature	1V64484-963	2390	t	2026-03-17 09:09:43.562493	2026-03-17 09:09:43.562496	19	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/jagunic-bl-d-bl.jpg
21774	Possente, Grillo	1VN1195-964	1350	t	2026-03-17 09:09:43.562501	2026-03-17 09:09:43.562503	23	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/possente-grillo2.jpg
21775	Possente, Acini di Grillo	1VN1197-965	1660	t	2026-03-17 09:09:43.562509	2026-03-17 09:09:43.562511	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/1VN1197-w.jpg
21776	Possente, "Abir" Zibibbo (muškat)	1VN1199-966	1195	t	2026-03-17 09:09:43.562516	2026-03-17 09:09:43.562519	26	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/possente-zibbibo.jpg
21777	Possente, "Kima" Catarratto	1VN1198-967	1280	t	2026-03-17 09:09:43.562524	2026-03-17 09:09:43.562526	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/possente-kima.jpg
21778	Possente, "Bunifat" Catarratto lucido Alcamo	1VN1200-968	1394	t	2026-03-17 09:09:43.562531	2026-03-17 09:09:43.562534	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/possente-bunifat.jpg
21779	Possente, "Rahal" Nero d'Avola Salaparuta	1VN1201-969	1526	t	2026-03-17 09:09:43.562539	2026-03-17 09:09:43.562541	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/possente-rahal.jpg
21780	Spiegelau, Winelovers White Wine SET od 4 čaše	4090182-970	2100	t	2026-03-17 09:09:43.562547	2026-03-17 09:09:43.562549	17	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Spiegelau-White-Wine-Winelovers-.jpg
21781	The Chocolate Block, Boekenhoutskloof	1VN1194-971	2880	t	2026-03-17 09:09:43.562555	2026-03-17 09:09:43.562557	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/The-Chocolate-Block1.jpg
21782	Aberlour 12 Years Old Double Cask Matured Speyside Single Malt Scotch Whisky 40%vol Vol Giftbox	1R00341-972	3537	t	2026-03-17 09:09:43.562562	2026-03-17 09:09:43.562564	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/ablob.12y.jpg
21783	Baileys The Original Irish Cream 17% Vol.	1R00334-973	1850	t	2026-03-17 09:09:43.562571	2026-03-17 09:09:43.562573	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/krem-liker-baileys-07.jpg
21784	Baron Otard VS Cognac 40% Vol. Giftbox	1R00383-974	3915	t	2026-03-17 09:09:43.562579	2026-03-17 09:09:43.562581	21	DESTILATI > COGNAC/ARMAGNAC	
21785	Buffalo Trace Kentucky Straight Bourbon Whiskey 40% Vol.	1R002251-975	2700	t	2026-03-17 09:09:43.562586	2026-03-17 09:09:43.562589	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/buffalo-trace-kentucky-straight-bourbon-whi.jpg
21786	Claude Chatelier Extra XO Extra Fine Cognac 40% Vol.Giftbox	1R00380-976	7034	t	2026-03-17 09:09:43.562594	2026-03-17 09:09:43.562596	23	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/claude-chatelier-xo-extra-cognac.jpg
21787	Cointreau liker 40% Vol.	1R00335-977	2100	t	2026-03-17 09:09:43.562602	2026-03-17 09:09:43.562604	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/cointreau_1_1.jpg
21788	Davidoff VSOP Cognac 40% Vol.Giftbox	1R00379-978	5243	t	2026-03-17 09:09:43.562609	2026-03-17 09:09:43.562612	9	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/davidoff-vsop-gift.jpg
21789	Elijah Craig, 12 Y.O. Bourbon Whisky 47vol%	1R0025141-979	4061	t	2026-03-17 09:09:43.562617	2026-03-17 09:09:43.562619	36	DESTILATI	
21790	Glen Moray Elgin Classic 40% Vol.Giftbox	1R00368-980	2130	t	2026-03-17 09:09:43.562625	2026-03-17 09:09:43.562627	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/glen-moray.jpg
21791	Grand Marnier Cordon Rouge liker 40% Vol	1R00336-981	2880	t	2026-03-17 09:09:43.562632	2026-03-17 09:09:43.562634	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/grand-marnier_cordon-rouge.jpg
21792	Hazelwood 18 Years Old Blended Scotch Whisky 40% Vol.Giftbox	1R00373-982	6543	t	2026-03-17 09:09:43.562639	2026-03-17 09:09:43.562642	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Hazelwood-18-Years-Old-Blended-Scotch-Whisky-40.jpg
21793	Hine RARE VSOP The Original Fine Champagne Cognac 40% Vol Giftbox	1R00382-983	5415	t	2026-03-17 09:09:43.562647	2026-03-17 09:09:43.562649	28	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Hine-RARE-VSOP-The-Original-Fine-Champagne-Cognac-40-Vol-Giftbox.jpg
21794	Knob Creek Kentucky Straight Bourbon Small Batch patiently aged 50% Vol.	1R00363-984	3315	t	2026-03-17 09:09:43.562655	2026-03-17 09:09:43.562657	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Knob-Creek-Kentucky-Straight-Bourbon-Small-Batch-patiently-aged-50-Vol..jpg
21795	Knob Creek Kentucky Straight Rye Whiskey Small Batch 50% Vol.	1R0059-985	4940	t	2026-03-17 09:09:43.562662	2026-03-17 09:09:43.562664	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Knob-Creek-Kentucky-Straight-Rye-Whiskey-Small-Batch-50-Vol..jpg
21796	Laphroaig LORE 48% Vol. Giftbox	1R00R374-986	12967	t	2026-03-17 09:09:43.56267	2026-03-17 09:09:43.562672	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Laphroaig-Lore.jpg
21797	Maker's Mark Kentucky Straight Bourbon Whisky 45% Vol.	1R0050-987	2780	t	2026-03-17 09:09:43.562677	2026-03-17 09:09:43.56268	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Makers-Mark-Kentucky-Straight-Bourbon-Whisky-45.jpg
21798	Monkey Shoulder SMOOTH &amp; RICH Triple Malt Scotch Whisky Batch 27 40% Vol	1R00365-988	2760	t	2026-03-17 09:09:43.562685	2026-03-17 09:09:43.562687	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/monkey-shoulder-27.jpg
21799	Redbreast Single Pot Still Irish Whiskey LUSTAU EDITION Sherry Finish 46% Vol.Giftbox	1R00374-989	5773	t	2026-03-17 09:09:43.562693	2026-03-17 09:09:43.562695	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Redbreast-Single-Pot-Still-Irish-Whiskey-LUSTAU-46-Vol.Giftbox.jpg
21800	Roku Gin The Japanese Craft Gin 43% Vol	1R00327-990	2960	t	2026-03-17 09:09:43.5627	2026-03-17 09:09:43.562702	63	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/roku_japanese-craft-gin_7.jpg
21801	San Cosme Oaxaca Mexico Mezcal Blanco 100% Agave	1R00378-991	4580	t	2026-03-17 09:09:43.562707	2026-03-17 09:09:43.56271	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/San-Cosme-Joven-Mezcal-07L-40-Vol.jpg
21802	Suntory The Yamazaki DISTILLER'S RESERVE Single Malt Japanese Whisky 43% Vol.Giftbox	1R00329-992	13450	t	2026-03-17 09:09:43.562715	2026-03-17 09:09:43.562717	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Suntory-The-Yamazaki-DISTILLERS-RESERVE-Single-Malt-Whisky-43-Vol.Giftbo.jpg
21803	Suntory TOKI Blended Japanese Whisky 43% Vol	1R00364-993	3200	t	2026-03-17 09:09:43.562722	2026-03-17 09:09:43.562725	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Suntory-TOKI-Blended-Japanese-Whisky-43-Vol.jpg
21804	Togouchi Premium Japanese Blended Whisky 40% Vol.Giftbox	1R7405-994	4620	t	2026-03-17 09:09:43.56273	2026-03-17 09:09:43.562732	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Togouchi-Premium-Japanese-Blended-Whisky-40Vol.Giftbox.jpg
21805	Woodford Reserve DISTILLER'S SELECT Kentucky Straight Bourbon Whiskey 43,2% Vol	1R0064-995	3450	t	2026-03-17 09:09:43.562738	2026-03-17 09:09:43.56274	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Woodford-Reserve-DISTILLERS-SELECT-Kentucky-Straight-Bourbon-Whiskey-432-Vol.jpg
21806	Cleto Chiarli "Villa Cialdini"  Lambrusco Grasparossa di Castelvetro DOC	1ŠN914-996	916	t	2026-03-17 09:09:43.562745	2026-03-17 09:09:43.562747	36	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/chiarli-villa-cialdini.jpg
21807	Cleto Chiarli Moden Blanc Brut	1ŠN912-997	1168	t	2026-03-17 09:09:43.562753	2026-03-17 09:09:43.562755	15	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Chiarli-Moden-Blanc.jpg
21808	Cleto Chiarli Pruno Nero Dry/Sec	1ŠN911-998	1168	t	2026-03-17 09:09:43.562761	2026-03-17 09:09:43.562763	32	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/pruno-nero-chiarli.jpg
21809	Cleto Chiarli Vecchia Modena Premium Mention Honorable	1ŠN913-999	1195	t	2026-03-17 09:09:43.562768	2026-03-17 09:09:43.56277	33	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/chiarli-veccia-modena.jpg
21810	Chiarli Lambrusco "Rose di Bacco" Amabile Demi sec	1ŠN509-1000	465	t	2026-03-17 09:09:43.562776	2026-03-17 09:09:43.562778	39	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/chiarli-bacco-rosso.jpg
21811	Chiarli Lambrusco "Rose di Bacco" Bianco Amabile Demi sec	1ŠN910-1001	465	t	2026-03-17 09:09:43.562784	2026-03-17 09:09:43.562786	5	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/rose-di-bacco-lamrusco-bianco.jpg
21812	Proper No. Twelve Irish Whiskey 40% Vol	1R0466-1002	2900	t	2026-03-17 09:09:43.562791	2026-03-17 09:09:43.562794	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Proper-No.-Twelve.jpg
21813	The Dalmore 15 Years Old Highland Single Malt Scotch Whisky 40% Vol Giftbox	1R0464-1003	14500	t	2026-03-17 09:09:43.562799	2026-03-17 09:09:43.562801	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/DALMORE-15-Year-Old.jpg
21814	Delamain XO 1er Cru L'Aigle de Delamain Grande Champagne Cognac 40% Vol Giftbox	1R0463-1004	14201	t	2026-03-17 09:09:43.562806	2026-03-17 09:09:43.562808	29	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Delamain-XO-1er-Cru-LAigle-de-Delamain-Grande.jpg
21815	Delamain X.O VESPER Grande Champagne Cognac 40% Vol. Giftbox	1R0442-1005	13670	t	2026-03-17 09:09:43.562814	2026-03-17 09:09:43.562816	40	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/delamain-vesper.jpg
21816	Choya Sake 0,75	1VN1214-1-1006	1200	t	2026-03-17 09:09:43.562821	2026-03-17 09:09:43.562823	755	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/choya-sake-145-.jpg
21817	Glengoyne 12 Years Old Highland Single Malt Scotch Whisky 43% Vol  Giftbox	1R00312-1007	5390	t	2026-03-17 09:09:43.562829	2026-03-17 09:09:43.562831	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Glengoyne-12-Years.jpg
21818	Madirazza, Grande Madirazza Dingač Nobile 2009	1VN1619-1-1008	5200	t	2026-03-17 09:09:43.562837	2026-03-17 09:09:43.562839	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/MADIRAZZA-NOBILE-2008-w.jpg
21819	Madirazza, Orange Grk	1VN1617-1009	1858	t	2026-03-17 09:09:43.562859	2026-03-17 09:09:43.562862	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/MADIRAZZA-ORANGE-GRK.jpg
21820	Madirazza, Maraština Sur lie - PROMO -10%	1VN1615-1010	909	t	2026-03-17 09:09:43.562868	2026-03-17 09:09:43.56287	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/MADIRAZZA-MARASTINA-SL-w-1.jpg
21821	Madirazza, Postup barrique	1VN1616-1011	2256	t	2026-03-17 09:09:43.562875	2026-03-17 09:09:43.562878	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/MADIRAZZA-POSTUP-ww.jpg
21822	Madirazza, Dingač Grande Riserva 2011	1VN1618-1012	2980	t	2026-03-17 09:09:43.562883	2026-03-17 09:09:43.562885	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/GRANDE-MADIRAZZA-DINGAC-w.jpg
21823	Chateau Miraval, Rose Cotes de Provence 6 L	1VN1354-3-1013	28500	t	2026-03-17 09:09:43.562891	2026-03-17 09:09:43.562893	1	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/miraval-rose.jpg
21824	La Vieille Ferme Rose	1VN608-1014	750	t	2026-03-17 09:09:43.562898	2026-03-17 09:09:43.562901	579	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/la-vieille-ferme-perrin-w.jpg
21825	Treml Punsch punč Bezalkoholni Trešnja Limun Bazga	1PCH218-1015	1290	t	2026-03-17 09:09:43.562915	2026-03-17 09:09:43.562919	59	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/treml-bezalko.jpg
21826	Treml Punsch punč Jagoda Cimet alko 27vol%	1PCH221-1016	1930	t	2026-03-17 09:09:43.562927	2026-03-17 09:09:43.56293	19	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/treml-jagodaWB.jpg
21827	Treml Punsch punč Pečena jabuka	1PCH220-1017	1850	t	2026-03-17 09:09:43.562937	2026-03-17 09:09:43.562941	24	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/treml-pecena-jabuka-punsch.jpg
21828	Treml Punsch punč Borovnica Cimet	1PCH225-1018	1930	t	2026-03-17 09:09:43.562948	2026-03-17 09:09:43.562951	53	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/treml-borovnica-punsch.jpg
21829	Castello della Sala, Bramito della Sala Umbria	1VN211-1019	2030	t	2026-03-17 09:09:43.562956	2026-03-17 09:09:43.562958	42	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/bramito.jpg
21830	Castello della Sala, Cervaro della Sala Umbria	1VN331-1020	2349	t	2026-03-17 09:09:43.562964	2026-03-17 09:09:43.562966	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/cervaro-della-sala-.jpg
21831	Košutić, Graševina	1VN47144-1021	890	t	2026-03-17 09:09:43.562971	2026-03-17 09:09:43.562973	38	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN47144-1.png
21832	Radovanović Igor, Grk	1V6552152-1-1022	2640	t	2026-03-17 09:09:43.562979	2026-03-17 09:09:43.562981	52	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/RADOVANOVIC-GRK-W.jpg
21833	Radovanović, Rukatac	1V6552153-1023	1058	t	2026-03-17 09:09:43.562987	2026-03-17 09:09:43.562989	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/radovanovic-rukatac.jpg
21834	Pink Robin Aronia Gin 44vol%alko	1R03271-1024	2920	t	2026-03-17 09:09:43.562994	2026-03-17 09:09:43.562997	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/robin-pink-gin.jpg
21835	Bubble brush Bouvet Ladubay	1D00XBUB-1025	3053	t	2026-03-17 09:09:43.563002	2026-03-17 09:09:43.563004	18	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/bubble-brush-1.jpg
21836	Cattunar, Nono 4 Terre Malvazija	1VN1610-1026	3550	t	2026-03-17 09:09:43.56301	2026-03-17 09:09:43.563012	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/cattunar-nono.jpg
21837	Draga - Miklus, Ribolla Gialla Natural Art	1VN997-1027	2588	t	2026-03-17 09:09:43.563018	2026-03-17 09:09:43.56302	29	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/miklus-draga-ribolla-natural-art.jpg
21838	Gordia Belo	1VN931-1028	2110	t	2026-03-17 09:09:43.563025	2026-03-17 09:09:43.563028	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/gordia-belo.jpg
21839	La Tunella, RJGialla Ribolla Gialla	1VN1187-1029	1540	t	2026-03-17 09:09:43.563033	2026-03-17 09:09:43.563035	20	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/tunella-ribolla.jpg
21840	La Tunella, Coldebliss Ribolla Gialla	1VN1188-1030	2163	t	2026-03-17 09:09:43.563041	2026-03-17 09:09:43.563043	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/tunella-coldebliss.jpg
21841	La Tunella, Biancosesto Friulano Ribolla Gialla	1VN1189-1031	2349	t	2026-03-17 09:09:43.563064	2026-03-17 09:09:43.563067	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/tunella-biancosesto.jpg
21842	La Tunella, Arcione	1VN1190-1032	2382	t	2026-03-17 09:09:43.563073	2026-03-17 09:09:43.563075	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/tunella-arcione.jpg
21843	Ronco Servero, Pinot Grigio	1VN637-1033	3150	t	2026-03-17 09:09:43.563081	2026-03-17 09:09:43.563083	54	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/ronco-s-pg.jpg
21844	Ronco Servero, Bianco Cuvee	1VN1070-1034	2429	t	2026-03-17 09:09:43.563088	2026-03-17 09:09:43.56309	17	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/severo-bianco-ronco-severo.jpg
21845	ChocoMe, Čokoladne praline punjene punilom i ginom 50 gr	1H-PT906-1035	637	t	2026-03-17 09:09:43.563096	2026-03-17 09:09:43.563098	15	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/chocome-gin-1.jpg
21846	ChocoMe, Voille Kandirana kora naranče 120 gr	1H-VL101-1036	1161	t	2026-03-17 09:09:43.563104	2026-03-17 09:09:43.563106	28	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/voile_orange_group_wh_small.jpg
21847	Ferrari, Giulio Ferrari Riserva del Fondatore	1ŠN431-1037	10286	t	2026-03-17 09:09:43.563112	2026-03-17 09:09:43.563114	15	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/giulio-ferrari1.jpg
21848	Pyros Barrel Selected Malbec	1VN992-1038	1495	t	2026-03-17 09:09:43.563119	2026-03-17 09:09:43.563121	68	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Pyros-Barrel-Selected-Malbec.jpg
21849	ChocoMe, Raffinee Malina 120 gr	1H-RF106-1039	1161	t	2026-03-17 09:09:43.563127	2026-03-17 09:09:43.563129	29	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/RF106_packshot_group_w.jpg
21850	ChocoMe, Entree Mliječ. čokolada 110 g badem, kokos...	1H-M110-1040	995	t	2026-03-17 09:09:43.563135	2026-03-17 09:09:43.563137	29	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/entree-m110.jpg
21851	ChocoMe, Carre "Cabernet sauvignon" tamna čokolada 110 g	1H-B108-1041	995	t	2026-03-17 09:09:43.563142	2026-03-17 09:09:43.563144	8	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/chocome-cs-b108.jpg
21852	ChocoMe, Carre "Syrah II" tamna čokolada 110 g	1H-B109-1042	995	t	2026-03-17 09:09:43.56315	2026-03-17 09:09:43.563152	21	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/chocome-syrah-b109.jpg
21853	ChocoMe, Carre čokolada Blond lješnjaci, kava, karamela 50 g	1H-50BL104-1043	637	t	2026-03-17 09:09:43.563157	2026-03-17 09:09:43.563159	32	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/chocome-50bl104.jpg
21854	ChocoMe, Carre tamna čokolada Merlot  110 g	1H-B106-1044	995	t	2026-03-17 09:09:43.563165	2026-03-17 09:09:43.563167	32	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/chocome-merlot-b106.jpg
21855	ChocoMe, Carre "Syrah" tamna čokolada 110 g	1H-B107-1045	995	t	2026-03-17 09:09:43.563172	2026-03-17 09:09:43.563174	37	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/chocome-syrah-b107.jpg
21856	Chic Barcelona Brut Mini	1ŠN624-2-1046	360	t	2026-03-17 09:09:43.56318	2026-03-17 09:09:43.563182	146	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/chic-mini-02.jpg
21857	Poggio Le Volpi, Roma Rosso DOC Woodbox Edition 6x0,75 u drv. kut.**	VIVAT1047-1047	52500	t	2026-03-17 09:09:43.563188	2026-03-17 09:09:43.56319	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/ROMA-ROSSO-CH-LE-W.jpg
21858	Dezinko sredstvo za dezinfekciju površina i ruku 1,0 L - RASPRODAJA ZALIHE	0260-1048	783	t	2026-03-17 09:09:43.563196	2026-03-17 09:09:43.563198	279	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/dezinko2.jpg
21859	Morlanda blanco Priorat	1VN598-1049	1852	t	2026-03-17 09:09:43.563203	2026-03-17 09:09:43.563206	23	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Morlanda-Blanco.jpg
21860	Lagar da Condesa Albarino	1VN1101-1050	1995	t	2026-03-17 09:09:43.563211	2026-03-17 09:09:43.563213	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/lagar-da-condesa-albarinoW.jpg
21861	Shaya Verdejo	1VN1217-1051	1060	t	2026-03-17 09:09:43.563219	2026-03-17 09:09:43.563221	9	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/shaya-verdejo.jpg
21862	Fam Kutija karton poklon 6/1 bordo	FAM160311-1052	372	t	2026-03-17 09:09:43.563226	2026-03-17 09:09:43.563228	4	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/160311_fam.jpg
21863	Fam ukrasna vrećica pvc 1/1	FAM605807-1053	56	t	2026-03-17 09:09:43.563234	2026-03-17 09:09:43.563236	128	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fam-605807.jpg
21864	Fam ukrasna vrećica pvc 1/1	FAM605810-1054	56	t	2026-03-17 09:09:43.563242	2026-03-17 09:09:43.563244	480	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fam-605810.jpg
21865	Fam ukrasna vrećica pvc 1/1	FAM605809-1055	40	t	2026-03-17 09:09:43.563249	2026-03-17 09:09:43.563251	501	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fam-605809_.jpg
21866	Fam košara crvena Božićna	FAM710020-1056	783	t	2026-03-17 09:09:43.563257	2026-03-17 09:09:43.563259	10	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fam-710020.jpg
21867	Fam košara smeđa	FAM710022-1057	783	t	2026-03-17 09:09:43.563266	2026-03-17 09:09:43.563268	6	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fam-710022.jpg
21868	Fam vrećica za 1 bocu natron s motivom	FAM660630-1058	160	t	2026-03-17 09:09:43.563274	2026-03-17 09:09:43.563276	147	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fam660630.jpg
21869	Fam Tuljac za bocu natur	FAM001211-1059	66	t	2026-03-17 09:09:43.563281	2026-03-17 09:09:43.563283	9	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fam001211.jpg
21870	Fosso Corno, "Admire" Merlot	1VN924-1060	1660	t	2026-03-17 09:09:43.563289	2026-03-17 09:09:43.563291	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Fossocorno-vini-Admire.jpg
21871	Fosso Corno, "Il Grande Silenzio" Montepulciano d Abruzzo DOCG	1VN927-1061	1490	t	2026-03-17 09:09:43.563297	2026-03-17 09:09:43.563299	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Fossocorno-vini-IlGrande.jpg
21872	Taittinger, Brut Reserve Champagne	1ŠN41-1062	5300	t	2026-03-17 09:09:43.563318	2026-03-17 09:09:43.56332	197	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Taittinger-brut-reserve-2023.jpg
21873	Chateau Lascombes Margaux rouge 2eme Grand Cru Classe	1VN1147-1-1063	9755	t	2026-03-17 09:09:43.563325	2026-03-17 09:09:43.563328	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Chateau-Lascombes-Margaux-rouge.jpg
21874	Chateau Smith Haut Lafitte Pessac Leognan GCC Graves rouge	1VN1032-1-1064	12900	t	2026-03-17 09:09:43.563333	2026-03-17 09:09:43.563335	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Chateau-Smith-Havt-Lafitte-Pessac-Leognan-rouge.jpg
21875	Clos la Gaffeliere Saint Emilion 2022	1VN1225-1-1065	3390	t	2026-03-17 09:09:43.563341	2026-03-17 09:09:43.563343	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Clos-la-Gaffeliere-Saint-Emilion-2022-ww.jpg
21876	Chateau Lafon Rochet Saint Estephe rouge	1VN1151-1-1066	6100	t	2026-03-17 09:09:43.563349	2026-03-17 09:09:43.563351	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Chateau-Lafon-Rochet-St-Estephe-rouge.jpg
21877	Chateau la Gaffeliere Saint Emilion 1er Grand Cru	1VN1225-1067	3390	t	2026-03-17 09:09:43.563356	2026-03-17 09:09:43.563358	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Chateau-La-Gaffeliere.jpg
21878	Chateau Cantenac Brown Margaux Grand Cru Classe	1VN883-1-1068	7700	t	2026-03-17 09:09:43.563364	2026-03-17 09:09:43.563366	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/CH-CANTENAC-BROWN-MARGAUX-rouge.jpg
21879	Nachtmann, Highland Tumbler set od 4 čaše	95906-1069	2390	t	2026-03-17 09:09:43.563371	2026-03-17 09:09:43.563373	28	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Nachtmann-Highland-set-od-4-w.jpg
21880	Spiegelau, Authentis Casual 4800281 Tumbler L set/4 čaše	4800281-1070	2400	t	2026-03-17 09:09:43.563379	2026-03-17 09:09:43.563381	34	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/speigelau-casual-authentis-w.jpg
21881	Spiegelau, Single Barrel Burbon 4460166 set/2 čaše	4460166-1071	1301	t	2026-03-17 09:09:43.563387	2026-03-17 09:09:43.563389	19	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/4460166-spiegelau-burbon-set-2-1.jpg
21948	Grabovac Trnjak Riserva	1VN066-1138	2325	t	2026-03-17 09:09:43.563928	2026-03-17 09:09:43.563931	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/trnjak-grabovac.jpg
21882	Spiegelau, Craft Beer Stout 4992661 set/2 čaše	4992661-1072	1460	t	2026-03-17 09:09:43.563395	2026-03-17 09:09:43.563397	24	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Spiegelau-Craft-Beer-Stout-4992661-set2-case.jpg
21883	Bouvet Ladubay, Saphir Brut Vintage 0,75	1ŠN44-1073	1390	t	2026-03-17 09:09:43.563403	2026-03-17 09:09:43.563405	673	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-saphir.jpg
21884	Darroze, Grand Assemblage 8 ans Bas Armagnac 43%vol alc	1R0472-1074	4520	t	2026-03-17 09:09:43.56341	2026-03-17 09:09:43.563412	6	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Grand-Assemblage-8-y-Bas-Armagnac-43vol-alc1.jpg
21885	Darroze, Grand Assemblage 12 ans Bas Armagnac 43%vol alc	1R0473-1075	6070	t	2026-03-17 09:09:43.563418	2026-03-17 09:09:43.56342	39	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-12.jpg
21886	Darroze, Grand Assemblage 20 ans Bas Armagnac 43%vol alc	1R0474-1076	8550	t	2026-03-17 09:09:43.563425	2026-03-17 09:09:43.563427	26	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Grand-Assemblage-20-y-Bas-Armagnac-43vol-alc.jpg
21887	Darroze, Grand Assemblage 30 ans Bas Armagnac 43%vol alc	1R0475-1077	11700	t	2026-03-17 09:09:43.563433	2026-03-17 09:09:43.563435	2	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Grand-Assemblage-30-y-Bas-Armagnac-43vol-alc.jpg
21888	Darroze, Grand Assemblage 40 ans Bas Armagnac 43%vol alc	1R0476-1078	15800	t	2026-03-17 09:09:43.56344	2026-03-17 09:09:43.563442	2	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Grand-Assemblage-40-y-Bas-Armagnac-43vol-alc.jpg
21889	Darroze, Grand Assemblage 50 ans Bas Armagnac 42%vol alc	1R0477-1079	32500	t	2026-03-17 09:09:43.563447	2026-03-17 09:09:43.563449	5	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Grand-Assemblage-50-y-Bas-Armagnac-42vol-alc.jpg
21890	Darroze, Drvena poklon kutija (boca nije u kompletu niti cijeni)	101KUT-1080	1301	t	2026-03-17 09:09:43.563455	2026-03-17 09:09:43.563457	24	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Grand-Assemblage-8-y-Bas-Armagnac-43vol-alc.jpg
21891	Darroze Unique Collection, Domaine de Rieston 1994 Bas-Armagnac 49,5vol%alk	1R0470-1081	9755	t	2026-03-17 09:09:43.563462	2026-03-17 09:09:43.563464	6	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Domaine-de-Rieston-1994-Bas-Armagnac-495volalk.jpg
21892	Darroze Unique Collection, Domaine de Paguy 2002 Bas-Armagnac 50vol%alk	1R0467-1082	8561	t	2026-03-17 09:09:43.56347	2026-03-17 09:09:43.563472	27	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Domaine-de-Paguy-2020-Bas-Armagnac-50volalk.jpg
21893	Darroze Unique Collection, Domaine de Martin 1998 Bas-Armagnac 48,5vol%alk	1R0469-1083	9025	t	2026-03-17 09:09:43.563477	2026-03-17 09:09:43.563479	10	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Darroze-Domaine-de-Martin-1998-Bas-Armagnac-485volalk.jpg
21894	Darroze Unique Collection, Chateau de Lahitte 1988 Bas-Armagnac 47,5vol%alk	1R0471-1084	11215	t	2026-03-17 09:09:43.563485	2026-03-17 09:09:43.563487	10	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/1988-Chateau-de-Lahitte.jpg
21895	Markus, Franz Ferdinand 101 Babić 0,75 Duplimagnum	1V004531-1085	61716	t	2026-03-17 09:09:43.563493	2026-03-17 09:09:43.563495	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/markus-ff-magnum5.jpg
21896	Rivesaltes Chateau Maria Jonqueres Ambre Haute Coutume 1969	1PN101-1086	9928	t	2026-03-17 09:09:43.5635	2026-03-17 09:09:43.563502	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/rivasaltes-1969.jpg
21897	Rivesaltes Chateau Maria Jonqueres Ambre Haute Coutume 1976	1PN102-1087	7300	t	2026-03-17 09:09:43.563508	2026-03-17 09:09:43.56351	38	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/rivasaltes-1976.jpg
21898	Damjanić, Clemente (blanc)	1V6629-1088	2995	t	2026-03-17 09:09:43.563515	2026-03-17 09:09:43.563517	23	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/damjanic-clemente-blanc.jpg
21899	Damjanić, Clemente (rouge)	1V6627-1089	3349	t	2026-03-17 09:09:43.563523	2026-03-17 09:09:43.563525	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/damjanic-clemente.jpg
21900	Damjanić, Duro Istriano	1V6631-1090	2260	t	2026-03-17 09:09:43.56353	2026-03-17 09:09:43.563532	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/damjanic-duro-istriano.jpg
21901	Fleur de Miraval Champagne Brut rose, u poklon kutiji	1ŠN459-1091	33844	t	2026-03-17 09:09:43.563539	2026-03-17 09:09:43.563541	5	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/miraval-champagne-1.jpg
21902	Pulltex, Antiox Wine Saver silikon čep za bocu	1D10950700-1092	1950	t	2026-03-17 09:09:43.563549	2026-03-17 09:09:43.563551	104	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/antiox_2_2-2.jpg
21903	Pulltex, Antiox Champagne Čep za pjenušava vina 109510 - NOVO	1D10951000-1093	2495	t	2026-03-17 09:09:43.563557	2026-03-17 09:09:43.563559	12	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/antiox_2_2-1.jpg
21904	Pulltex, 7 djelni Set za koktele De Luxe 109221	1D10922100-1094	8892	t	2026-03-17 09:09:43.563565	2026-03-17 09:09:43.563567	14	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/107221b_1.jpg
21905	Pulltex, 5 djelni Set za koktele Gin Tonic &amp; Spritz 109220	1D10922000-1095	4499	t	2026-03-17 09:09:43.563573	2026-03-17 09:09:43.563575	3	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/5pcscocktail.jpg
21906	Perrin, Chateauneuf du Pape Les Sinards Rouge	1VN823-9-1096	4400	t	2026-03-17 09:09:43.56358	2026-03-17 09:09:43.563582	142	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/perrin_sinards_rouge.jpg
21907	Malvasia, Bloc de Foie Gras de Pato/Patka pašteta 130 g	1H122011-1097	1460	t	2026-03-17 09:09:43.563589	2026-03-17 09:09:43.563591	19	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/bloc-foie-gras-malvasia-130g.jpg
21908	Malvasia, Bloc de Foie Gras de Pato/Patka pašteta 180 g	1H122013-1098	2190	t	2026-03-17 09:09:43.563598	2026-03-17 09:09:43.5636	34	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/bloc-foie-gras-malvasia-180g.jpg
21909	Dr. Škobić, Pašteta Divlja svinja s tartufima 150 g	1H1005-1099	490	t	2026-03-17 09:09:43.563607	2026-03-17 09:09:43.563609	28	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/skobic-vepar-tartuf.jpg
21910	Malvasia, Mousse de Foie de Pato/Patka pašteta 180 g	1H124003-1100	796	t	2026-03-17 09:09:43.563615	2026-03-17 09:09:43.563617	26	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/mousse-de-foie-gras.jpg
21911	Malvasia, Mousse de Foie Gras con trufa pašteta s tartufom 200 g	1H124022-1101	730	t	2026-03-17 09:09:43.563623	2026-03-17 09:09:43.563625	11	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/mousse-de-foie-gras-con-trufa.jpg
21912	Adega de Moncao, Muralhas Vinho Verde	1VN1119-1102	890	t	2026-03-17 09:09:43.563631	2026-03-17 09:09:43.563633	377	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/muralhas-vv.jpg
21913	Monte Zovo, Pinot grigio delle Venezie	1VN499-1103	870	t	2026-03-17 09:09:43.563638	2026-03-17 09:09:43.563641	186	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/monte-zovo-pinot-grigio.jpg
22696	Nachtmann, Bossa Nova Whisky Tumbler Set od 4 čaše	92076-1886	2590	t	2026-03-17 09:09:43.570032	2026-03-17 09:09:43.570034	39	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	
21914	Pere Ventura, Tresor Cuvee GRAN Reserva Vintage Brut u poklon kutiji	1ŠN612-1104	1447	t	2026-03-17 09:09:43.563646	2026-03-17 09:09:43.563648	13	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/pere-ventura-tresor-cuvee-vintage.jpg
21915	Domaine Guerrin &amp; Fils, Puilly-Fuisse Sur la Roche	1VN1226-1105	2761	t	2026-03-17 09:09:43.563654	2026-03-17 09:09:43.563656	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/sur-la-roche.jpg
21916	Domaine Guerrin &amp; Fils, Coteaux Bourguignons "La Citadelle"	1VN1228-1-1106	1400	t	2026-03-17 09:09:43.563661	2026-03-17 09:09:43.563664	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/guerrin-la-citadelle.jpg
21917	Domaine Guerrin &amp; Fils, Pouilly-Fuisse La Marechaude	1VN1115-1-1107	3350	t	2026-03-17 09:09:43.563669	2026-03-17 09:09:43.563671	106	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/D.GUERRIN-ET-FILS-POUILLY-FUISSE-LA-MARECHAUDE.jpg
21918	Domaine Guerrin &amp; Fils, Saint Veran Le clos Vessats	1VN1227-1108	1659	t	2026-03-17 09:09:43.563676	2026-03-17 09:09:43.563678	18	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/guerrin-saint-veran.jpg
21919	Domaine Hubert &amp; Olivier Sinson, Valencay	1VN1117-1109	995	t	2026-03-17 09:09:43.563684	2026-03-17 09:09:43.563686	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/hubert-olivier-sinson-aop-valencay.jpg
21920	Domaine Vincent Bachelet, Puligny Montrachet	1VN1229-1110	8590	t	2026-03-17 09:09:43.563691	2026-03-17 09:09:43.563693	43	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Domaine-Vincent-Bachelet-Puligny-Montrachet.jpg
21921	Domaine Vincent Bachelet, Chassagne Montrachet Blanc	1VN1231-1-1111	8350	t	2026-03-17 09:09:43.563698	2026-03-17 09:09:43.5637	88	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Domaine-Vincent-Bachelet-Chassagne-Montrachet-Blanc.jpg
21922	Domaine Vincent Bachelet, Chassagne Montrachet Rouge "Les Benoites"	1VN1234-1-1112	4800	t	2026-03-17 09:09:43.563706	2026-03-17 09:09:43.563708	46	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Domaine-Vincent-Bachelet-Chassagne-Montrachet-Rouge-Les-Benoites.jpg
21923	Domaine Vincent Bachelet, Gevrey-Chambertin	1VN1233-2-1113	6500	t	2026-03-17 09:09:43.563713	2026-03-17 09:09:43.563715	56	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Domaine-Vincent-Bachelet-Gevrey-Chambertin.jpg
21924	Domaine Vincent Bachelet, Meursault "Le Clos du Cromin" blanc	1VN1230-1-1114	8000	t	2026-03-17 09:09:43.563721	2026-03-17 09:09:43.563723	26	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Domaine-Vincent-Bachelet-Meursault-blanc.jpg
21925	Domaine Vincent Bachelet, Pommard "Les Chanlins" 2020	1VN1232-2-1115	6950	t	2026-03-17 09:09:43.563741	2026-03-17 09:09:43.563744	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/pommard-les-chanlins.jpg
21926	Domaine Vincent Bachelet, Maranges 1er Cru la Fussiere	VIVAT1116-1116	4690	t	2026-03-17 09:09:43.56375	2026-03-17 09:09:43.563752	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/maranges.jpg
21927	Domaine Vincent Bachelet, Saint-Aubin 1er Cru "Le Sentier du Clou"	1VN1236-1-1117	5790	t	2026-03-17 09:09:43.563758	2026-03-17 09:09:43.56376	72	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Domaine-Vincent-Bachelet-Saint-Aubin-1er-Cru-Le-Sentier-du-Clou.jpg
21928	Domaine Vincent Bachelet, Santenay rouge	1VN1235-1118	4200	t	2026-03-17 09:09:43.563765	2026-03-17 09:09:43.563768	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Domaine-Vincent-Bachelet-santenay-rouge.jpg
21929	Bodegas Borsao, Tres Picos Garnacha Campo de Borja	1VN1183-1119	1950	t	2026-03-17 09:09:43.563773	2026-03-17 09:09:43.563775	44	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/tres-picos-borsao.jpg
21930	Bodegas Borsao, Cabriola	1VN1186-1120	1390	t	2026-03-17 09:09:43.563781	2026-03-17 09:09:43.563783	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/borsao-cabriola.jpg
21931	Bodegas Borsao, Bole	1VN1185-1121	890	t	2026-03-17 09:09:43.563789	2026-03-17 09:09:43.563791	23	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/borsao-bole-w.jpg
21932	Domodo, Sangiovese Puglia	1VN1203-1122	600	t	2026-03-17 09:09:43.563796	2026-03-17 09:09:43.563798	422	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/domodo-sangiovese.jpg
21933	Domodo, Zinfandel Puglia	1VN1056-1123	600	t	2026-03-17 09:09:43.563803	2026-03-17 09:09:43.563805	47	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/domodo-zinfandel.jpg
21934	Haute Coutume Cotes du Rousillion Villages rouge	1VN1212-1124	1168	t	2026-03-17 09:09:43.563811	2026-03-17 09:09:43.563813	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/HauteCoutume_CotesduRoussillonVillages_Rouge_75cl_SM.jpg
21935	Teeling Whiskey SMALL BATCH Irish Whiskey Rum Cask Finish 46%vol	1R00389-1125	2760	t	2026-03-17 09:09:43.563829	2026-03-17 09:09:43.563832	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Teeling-Whiskey-SMALL-BATCH-Irish-Whiskey-Rum-Cask-Finish.jpg
21936	Laphroaig SELECT Islay Single Malt Scotch Whisky 40% vol. Giftbox	1R00388-1126	3950	t	2026-03-17 09:09:43.563838	2026-03-17 09:09:43.56384	25	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Laphroaig-SELECT-Islay-Single-Malt-Scotch-Whisky.jpg
21937	Edinburgh The Advocates Batch Blended Malt Scothch whisky alk. 43%vol Giftbox	1R00387-1127	1593	t	2026-03-17 09:09:43.563846	2026-03-17 09:09:43.563848	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/the-advocates-batch-new-town-blends.jpg
21938	Bowen Cognac XO alk. 40%vol Giftbox	1R00386-1128	13150	t	2026-03-17 09:09:43.563853	2026-03-17 09:09:43.563855	24	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/bowen-xo-cognac.jpg
21939	Burg Ravensburg, Sulzfeld Riesling	1VN1207-1129	1261	t	2026-03-17 09:09:43.563861	2026-03-17 09:09:43.563863	19	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/SULZFELD-RIESLING.jpg
21940	Curatolo Arini, Marsala Fine Semi secco alk. 17vol%	1PN17-1130	885	t	2026-03-17 09:09:43.563869	2026-03-17 09:09:43.563871	702	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/curatolo-arini-fine-semi-seco.jpg
21941	Benmosche Family, Dingač	1V3510-1131	3450	t	2026-03-17 09:09:43.563876	2026-03-17 09:09:43.563878	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Benmosche-family-Dingac.jpg
21942	Benmosche Family, Zinfandel	1V3511-1132	2349	t	2026-03-17 09:09:43.563883	2026-03-17 09:09:43.563886	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Benmosche-family-Zinfandel.jpg
21943	Bura, Plavac mali sivi "Art&amp;Wine"	1V7448-1133	1690	t	2026-03-17 09:09:43.563891	2026-03-17 09:09:43.563893	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/BURA-PL-SIVI-w.jpg
21944	Bura, Dingač - vidi napomenu u Opisu**	1V7445-1134	4750	t	2026-03-17 09:09:43.563899	2026-03-17 09:09:43.563901	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/BURA-DINGAC-ww.jpg
21945	Bura, Galerija Plavac mali	1V7741145-1-1135	1080	t	2026-03-17 09:09:43.563906	2026-03-17 09:09:43.563908	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/BURA-VINO-GALERIJA-075-L-w.jpg
21946	Mare Postup	1V210-1136	2790	t	2026-03-17 09:09:43.563914	2026-03-17 09:09:43.563916	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/MARE-POSTUP-ww.jpg
21947	Grabovac Draga cuvee Riserva	1VN065-1137	2325	t	2026-03-17 09:09:43.563921	2026-03-17 09:09:43.563923	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/grabovac-draga.jpg
21949	Masi, Amarone Costasera della Valpolicella Classico DOCG	1VN4-2-1139	4900	t	2026-03-17 09:09:43.563936	2026-03-17 09:09:43.563938	60	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN4.png
21950	Spiegelau Lifestyle 4450177 Champagne Set sa 4 čaše	4450177-1140	2690	t	2026-03-17 09:09:43.563944	2026-03-17 09:09:43.563946	16	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Spiegelau-Lifestyle-4450177-Champagne-Set-sa-4-čaše.jpg
21951	Spiegelau Lifestyle 4450171 Crveno vino Set sa 4 čaše	4450171-1141	2690	t	2026-03-17 09:09:43.563953	2026-03-17 09:09:43.563955	5	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Spiegelau-Lifestyle-4450171-Crveno-vino-Set-sa-4-čašeA.jpg
21952	Spiegelau Lifestyle 4450172 Bijelo vino Set sa 4 čaše	4450172-1142	2690	t	2026-03-17 09:09:43.563961	2026-03-17 09:09:43.563963	2	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Spiegelau-Lifestyle-445012-Bijelo-vino-Set-sa-4-čašeW2.jpg
21953	Spiegelau Lifestyle 4450175 Tumbler Set sa 4 čaše	4450175-1143	2690	t	2026-03-17 09:09:43.563969	2026-03-17 09:09:43.563971	40	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Spiegelau-Lifestyle-4450175-Tumbler-Set-sa-4-čašeAw.jpg
21954	Spiegelau Lifestyle 4450179 Longdrink Set sa 4 čaše	4450179-1144	2690	t	2026-03-17 09:09:43.563977	2026-03-17 09:09:43.563979	25	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Spiegelau-Lifestyle-4450179-Longrink-Set-sa-4-čašeBw.jpg
21955	Spiegelau Lifestyle 4450157 Dekanter / Carafe 1 lit	4450157-1145	2590	t	2026-03-17 09:09:43.563985	2026-03-17 09:09:43.563987	19	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Spiegelau-Lifestyle-4450157-Dekanter-Carafe-1-litW.jpg
21956	La Liesse Selection Rouge Merlot Grenache	1VN1208-1146	836	t	2026-03-17 09:09:43.563992	2026-03-17 09:09:43.563994	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/liesse-cuvee-rougeW.jpg
21957	Trapan Uroboros Malvazija Istarska	1V00386-1147	1719	t	2026-03-17 09:09:43.564	2026-03-17 09:09:43.564002	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/trapan-uroboros.jpg
21958	Trapan Terra Mare Teran	1V003865-1148	1832	t	2026-03-17 09:09:43.564007	2026-03-17 09:09:43.56401	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/trapan-terra-mare-teran.jpg
21959	Nachtmann, Gin Tonic set sa 4 čaše	102892-1149	3950	t	2026-03-17 09:09:43.564016	2026-03-17 09:09:43.564018	13	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/gin_tonic_glas.jpg
21960	Spiegelau, Spec. Glasses Whisky Rum Set sa 2 čaše	4460167-1150	2100	t	2026-03-17 09:09:43.564024	2026-03-17 09:09:43.564026	2	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Spiegelau-Whisky-Special-Glasses-2er-Set-4280263bw.jpg
21961	Curatolo Arini, Etna Rosso	1VN1180-1151	2588	t	2026-03-17 09:09:43.564031	2026-03-17 09:09:43.564034	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/etna_rosso_arini.jpg
21962	Curotolo Arini, Gagliardetta Zibibbo IGP Terre Siciliane	1VN1179-1152	1321	t	2026-03-17 09:09:43.564039	2026-03-17 09:09:43.564041	32	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Curatolo-Arini-Gagliardetta-Zibibbo-IGTw.jpg
21963	Curatolo Arini, Sciarra Soprana Nero d’Avola - Riserva DOC Sicilia	1VN1181-1153	1632	t	2026-03-17 09:09:43.564046	2026-03-17 09:09:43.564048	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/Curatolo-Arini-Sciarra-Sopranaw.jpg
21964	Varionica &amp; Mate Janković "Papak" pivo 0,33l alk 4,9%vol	1P01-1154	194	t	2026-03-17 09:09:43.564054	2026-03-17 09:09:43.564056	7	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/VARIONICA-PAPAK.jpg
21965	Varionica, Siesta Session IPA pivo	1P0350-1155	240	t	2026-03-17 09:09:43.564062	2026-03-17 09:09:43.564064	30	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/VARIONICA-SIESTA.jpg
21966	Varionica, Passion Sour pivo 0,33l alk 4,5%vol	1P05-1156	246	t	2026-03-17 09:09:43.564069	2026-03-17 09:09:43.564071	25	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/VARIONICA-NOEL.jpg
21967	Varionica, Deep Dive IPA pivo	1P0450-1157	265	t	2026-03-17 09:09:43.564076	2026-03-17 09:09:43.564079	30	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/VARIONICA-DEEP.jpg
21968	Varionica, Pale Ale pivo	1P0250-1158	240	t	2026-03-17 09:09:43.564084	2026-03-17 09:09:43.564086	15	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/VARIONICA-PALE.jpg
21969	Birra del Borgo, L’Equilibrista pivo 0,75 alk. 10,9vol%	1B013-1159	2097	t	2026-03-17 09:09:43.564091	2026-03-17 09:09:43.564094	39	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/birra-equilibrista.jpg
21970	Vukas Dubravko, Plerej Plavac mali	1V02547-1160	2190	t	2026-03-17 09:09:43.564102	2026-03-17 09:09:43.564104	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/VUKAS-PLAVAC-PLEREJ-075-L-w2.jpg
21971	Vukas Dubravko, Plavac mali Mato	1V02549-1161	1115	t	2026-03-17 09:09:43.564109	2026-03-17 09:09:43.564112	28	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/01/mato_img.jpg
21972	Olynthia, Maslinovo ulje extradjevičansko s bosiljkom 0,25	1H100204-1162	836	t	2026-03-17 09:09:43.564117	2026-03-17 09:09:43.56412	39	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/basil-olive-oil-025w.jpg
21973	Olynthia, Maslinovo ulje extradjevičansko sa chillijem 0,25	1H100206-1163	1000	t	2026-03-17 09:09:43.564125	2026-03-17 09:09:43.564127	11	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/chili-olive-oilw.jpg
21974	Olynthia, Maslinovo ulje extradjevičansko s limunom 0,25	1H100208-1164	836	t	2026-03-17 09:09:43.564133	2026-03-17 09:09:43.564135	35	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/lemon-olive-oil-025w.jpg
21975	Olynthia, Maslinovo ulje extradjevičansko s narančom 0,25	1H100207-1165	1000	t	2026-03-17 09:09:43.56414	2026-03-17 09:09:43.564142	38	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/orange-olive-oil-025w.jpg
21976	Olynthia, Maslinovo ulje extradjevičansko sa češnjakom 0,25	1H100205-1166	1000	t	2026-03-17 09:09:43.564148	2026-03-17 09:09:43.56415	6	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/garlic-olive-oilw.jpg
21977	Domaine Rolet, ARBOIS Cotes du Jura Blanc Tradition 2014 Chardonnay Savagnin	1VN1035-1-1167	2469	t	2026-03-17 09:09:43.564168	2026-03-17 09:09:43.564171	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/rolet-cotes-du-jura-tradition-w.jpg
21978	Domaine Rolet et Fils, Cotes du Jura Vin Jaune 2011	1VN1036-1-1168	6700	t	2026-03-17 09:09:43.564177	2026-03-17 09:09:43.564179	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/rolet-vin-jaune-jura.jpg
21979	Domaine Rolet et Fils, Macvin du Jura Rouge likersko vino	1R00300-1169	2389	t	2026-03-17 09:09:43.564185	2026-03-17 09:09:43.564187	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/macvin-du-jura-domaine-rolet.jpg
21981	Siegfried Wonderleaf Alkoholfrei Bezalkoholni gin*	1R00101-1171	2070	t	2026-03-17 09:09:43.5642	2026-03-17 09:09:43.564203	287	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/SIEGFRIED-WONDERLEAF-050-L-bez-alkohola-w.jpg
22015	Mg Spirit Gin Tonic 5,5%vol Ready to drink KARTON 24x0,275L - POPUST	VIVAT1205-1205	38400	t	2026-03-17 09:09:43.564463	2026-03-17 09:09:43.564465	26	DESTILATI > GIN	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/mg-spirit-gintonic-AKCIJAW.jpg
21982	Caselli Fragolino Liquore con Fragoline di bosco Liker s jagodama alk 25vol%	1R00390-1172	2323	t	2026-03-17 09:09:43.564208	2026-03-17 09:09:43.56421	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Fragolino-Liquore-con-Fragoline-di-Bosco-w.jpg
21983	Barceló Añejo Ron Dominicano rum 37,5vol %	1R00391-1173	1526	t	2026-03-17 09:09:43.564216	2026-03-17 09:09:43.564218	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Ron-anejo-BarceloW.jpg
21984	Barceló Imperial Premium Blend 30 Aniversario Rum 43vol % Gift box	1R00392-1174	9556	t	2026-03-17 09:09:43.564224	2026-03-17 09:09:43.564226	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Barceló-Imperial-Premium-Blend-30-Aniversario-43.jpg
21985	Kirk &amp; Sweeney 23 Years Old Dominican Rum 40%	1R00393-1175	6503	t	2026-03-17 09:09:43.564231	2026-03-17 09:09:43.564233	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Kirk-Sweeney-23-Years-Old-Dominican-Rum-40w.jpg
21986	Bumbu The Original Rum 40% Giftbox 0,7l	1R602297-1176	4190	t	2026-03-17 09:09:43.564239	2026-03-17 09:09:43.564241	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Bumbu-The-Original-40-Vol.-07l-in-Giftboxw.jpg
21987	FIVE HUNDRED CUTS Botanical Rum 40vol%	1R00396-1177	3384	t	2026-03-17 09:09:43.564246	2026-03-17 09:09:43.564248	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/FIVE-HUNDRED-CUTS-Botanical-Rum-40volw.jpg
21988	Pacto Navio Single Distillery Cuban Rum by Havana Club 40vol%	1R00395-1178	3696	t	2026-03-17 09:09:43.564254	2026-03-17 09:09:43.564256	30	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Pacto-Navio-Single-Distillery-Cuban-Rum-by-Havana-Club-40w.jpg
21989	La Cruz Ron de Panama 15 Y.O. Superior 40vol% Vol.Giftbox	1R00394-1179	3650	t	2026-03-17 09:09:43.564261	2026-03-17 09:09:43.564263	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/La-Cruz-Ron-de-Panama-15-Y.O.-Superior-40vol-Vol.Giftboxw.jpg
21990	The Macallan 12 Years Old Triple Cask Matured Highland Single Malt Scotch Whisky 40vol%  Giftbox	1R00412-1180	12600	t	2026-03-17 09:09:43.564269	2026-03-17 09:09:43.564271	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/The-Macallan-12-Years-Old-Triple-Cask-Matured-Highland-Single-Malt-Scotch-Whisky-40vol-Giftboxw.jpg
21991	Bulleit Bourbon Frontier Whiskey 45vol%	1R00407-1181	2800	t	2026-03-17 09:09:43.564276	2026-03-17 09:09:43.564279	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Bulleit-Bourbon-Frontier-Whiskey-45w.jpg
21992	Glencairn whisky čaša	913561-1182	790	t	2026-03-17 09:09:43.564284	2026-03-17 09:09:43.564286	5	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Glencairn-whisky-čašaw.jpg
21993	Perfect Dram Whisky glass čaša 9 cl	913610-1183	491	t	2026-03-17 09:09:43.564293	2026-03-17 09:09:43.564296	31	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Perfect-Dram-Whisky-glass-čaša-9-clw.jpg
21994	Scallywag Speyside Blended Malt Whisky alk 46vol% Gifbox	1R00410-1184	5000	t	2026-03-17 09:09:43.564301	2026-03-17 09:09:43.564303	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Scallywag-Speyside-Blended-Malt-alk-46vol-Gifboxw.jpg
21995	Compass Box THE STORY OF THE SPANIARD Blended Malt Scotch Whisky 43vol% Giftbox	1R00409-1185	5302	t	2026-03-17 09:09:43.564309	2026-03-17 09:09:43.564311	39	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Compass-Box-THE-STORY-OF-THE-SPANIARD-Blended-Malt-Scotch-Whisky-43-Vol.-07lw.jpg
21996	Ron de Jeremy Spiced Rum 38vol%	1R00405-1186	2057	t	2026-03-17 09:09:43.564316	2026-03-17 09:09:43.564318	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/ron-de-jeremy-spicedw.jpg
21997	Ron de Jeremy XO 15 Years Old 40vol%	1R00406-1187	3849	t	2026-03-17 09:09:43.564324	2026-03-17 09:09:43.564326	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Ron-de-Jeremy-XO-15-Years-Old-40volw.jpg
21998	Compass Box SPICE TREE Blended Malt Scotch Whisky 46vol% Giftbox	1R00408-1188	5400	t	2026-03-17 09:09:43.564331	2026-03-17 09:09:43.564333	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Compass-Box-SPICE-TREE-Blended-Malt-Scotch-Whisky-46volGiftbox.jpg
21999	Mars KASEI Blended Whisky 40vol% Giftbox	1R00411-1189	4300	t	2026-03-17 09:09:43.564339	2026-03-17 09:09:43.564341	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Mars-KASEI-Blended-Whisky-40vol-Giftbox.jpg
22000	Fireball RED HOT Liqueur Cinnamon &amp; Whisky 33vol% liker s cimetom i whiskyjem	1R00399-1190	1593	t	2026-03-17 09:09:43.564346	2026-03-17 09:09:43.564348	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Fireball-RED-HOT-Liqueurw.jpg
22001	Coronica, CO Due Extra Brut	1Š551214-1191	2070	t	2026-03-17 09:09:43.564354	2026-03-17 09:09:43.564356	15	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/coronica-co2w.jpg
22002	R&amp;J Boutique Winery M. Jalšovec, Amphore Cuvee	1VN0450-1192	3950	t	2026-03-17 09:09:43.564362	2026-03-17 09:09:43.564364	4	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/rj-amphoreww.jpg
22003	R&amp;J Boutique Winery M. Jalšovec, Cuvee bijeli	1VN0452-1193	1433	t	2026-03-17 09:09:43.56437	2026-03-17 09:09:43.564372	28	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/rj-cuvee-bijeli.jpg
22004	R&amp;J Boutique Winery M. Jalšovec, Chardonnay Sur lie	1VN0452-1-1194	8650	t	2026-03-17 09:09:43.564377	2026-03-17 09:09:43.564379	26	VINO > BIJELA	
22005	R&amp;J Boutique Winery M. Jalšovec, Chardonnay Unicorn	1VN0451-1-1195	2595	t	2026-03-17 09:09:43.564385	2026-03-17 09:09:43.564387	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/rj-sur-lie-chy.jpg
22006	DopoDropo Ulje sjemenki grožđa cr(ve)nih sorti 0,1L	1H10100-1196	995	t	2026-03-17 09:09:43.564393	2026-03-17 09:09:43.564395	40	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/dopodropo-crno.jpg
22007	DopoDropo Ulje sjemenki grožđa bijelih sorti 0,1L	1H1010-1197	995	t	2026-03-17 09:09:43.5644	2026-03-17 09:09:43.564402	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/dopodropo-bijelo.jpg
22008	DopoDropo Ulje sjemenki grožđa poklon pakiranje 2x0,1L	1H10101-1198	2389	t	2026-03-17 09:09:43.564408	2026-03-17 09:09:43.56441	36	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/dopodropo-pokpak.jpg
22009	Chateau Miraval, Rose Cotes de Provence 2022 KARTON 6x0,75L UŠTEDA 20%	VIVAT1199-1199	14100	t	2026-03-17 09:09:43.564417	2026-03-17 09:09:43.564419	8	POPUST	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/miraval-rose-AKCIJA-ZA-KARTON1.jpg
22010	La Liesse Selection Rouge Merlot Grenache KARTON 6x0,75 PROMO -17%	VIVAT1200-1200	5016	t	2026-03-17 09:09:43.564425	2026-03-17 09:09:43.564427	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/liesse-cuvee-rougeWkaron.jpg
22011	Monte Zovo, Pinot grigio delle Venezie KARTON 6x0,75L PROMO -17%	VIVAT1201-1201	5220	t	2026-03-17 09:09:43.564432	2026-03-17 09:09:43.564434	9	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/monte-zovo-pinot-grigio-promo.jpg
22012	Chateau Belair-Coubet rouge - čak 6 zlatnih medalja! KARTON 6x0,75L PROMO -15%	1VN1224-2-1-1202	5820	t	2026-03-17 09:09:43.56444	2026-03-17 09:09:43.564442	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/BELAIR-COUBET-20-W.jpg
22013	Monasterio, Carinena Old Vine Special Selection KARTON 6x0,75L UŠTEDA: -30%	VIVAT1203-1203	51000	t	2026-03-17 09:09:43.564448	2026-03-17 09:09:43.56445	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/monasterio-old-vine-carinena-akcija30W.jpg
22014	Dr. Polidori, Tonic Water Dry - 12 bočica 0,2L	VIVAT1204-1204	16800	t	2026-03-17 09:09:43.564455	2026-03-17 09:09:43.564458	29	DESTILATI > GIN	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/doctor_polidoris_dry_tonic2w.jpg
22016	Mg Spirit Mojito Ready to drink KARTON 24x0,275L	VIVAT1206-1206	5256	t	2026-03-17 09:09:43.564471	2026-03-17 09:09:43.564473	40	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/mg-mojito-karton-popust.jpg
22017	Dr. Polidori, Tonic Water Dry KARTON 24x0,20L - UŠTEDA	VIVAT1207-1207	33600	t	2026-03-17 09:09:43.564479	2026-03-17 09:09:43.564481	38	DESTILATI > GIN	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/doctor_polidoris_dry_tonic-KARTONw.jpg
22018	Montecillo, Crianza Rioja KARTON 6x0,75	VIVAT1208-1208	870	t	2026-03-17 09:09:43.564486	2026-03-17 09:09:43.564488	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/montecillo-crianza-popust-w.jpg
22019	Nerica, Pošip  KARTON 6x0,75L - UŠTEDA	1VN0358901-1-1209	55500	t	2026-03-17 09:09:43.564494	2026-03-17 09:09:43.564497	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/nerica-posip-KARTON-POPUST.jpg
22020	Monkey 47 Schwarzwald Dry Gin 47vol%	1R00328-1210	4114	t	2026-03-17 09:09:43.564502	2026-03-17 09:09:43.564504	37	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/monkey-ginw.jpg
22021	San Marzano, Liboll Bianco Extra Dry	1Š00239-1211	730	t	2026-03-17 09:09:43.56451	2026-03-17 09:09:43.564512	37	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/san-marzano-libol-bianco.jpg
22022	Madirazza, Pet-Nat Pošip	1ŠN1621-1212	1281	t	2026-03-17 09:09:43.564517	2026-03-17 09:09:43.564519	37	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/madirazza-pet-nat-posipW.jpg
22023	Madirazza, Pet-Nat Rukatac (Maraština)	1ŠN1622-1213	1281	t	2026-03-17 09:09:43.564525	2026-03-17 09:09:43.564527	40	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/madirazza-pet-nat-rukatac-W.jpg
22024	Madirazza, Pet-Nat Plavac mali Rose	1ŠN1623-1214	1281	t	2026-03-17 09:09:43.564533	2026-03-17 09:09:43.564535	40	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/madirazza-pet-nat-plavac-rose-W.jpg
22025	Madirazza, Pet-Nat Plavac mali	1ŠN1620-1215	1281	t	2026-03-17 09:09:43.56454	2026-03-17 09:09:43.564542	19	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/madirazza-pet-nat-plavacW.jpg
22026	Carsus Trnjak	1V66322143-1216	3290	t	2026-03-17 09:09:43.564548	2026-03-17 09:09:43.56455	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/carsus-trnjak-w.jpg
22027	Adega de Moncao, Alvarinho Deu la Deu Magnum	1VN1239-1217	2550	t	2026-03-17 09:09:43.564555	2026-03-17 09:09:43.564557	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/alvarinho-deu-la-deu.jpg
22028	Adega de Moncao, Tinto	1VN1238-1218	664	t	2026-03-17 09:09:43.564575	2026-03-17 09:09:43.564578	28	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/adega-redw.jpg
22029	Adega de Moncao, Muralhas Rose	1VN1172-1219	637	t	2026-03-17 09:09:43.564584	2026-03-17 09:09:43.564586	15	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/57ef96b-vvr-muralhas-de-moncao.jpg
22030	Spiegelau, Definition Universal set od 6 čaša	1350301-1220	11500	t	2026-03-17 09:09:43.564604	2026-03-17 09:09:43.564607	91	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/definition-universal.jpg
22031	Spiegelau, Definition Bordeaux set od 6 čaša	1350135-1-1221	11500	t	2026-03-17 09:09:43.564613	2026-03-17 09:09:43.564615	16	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/definition-bordx.jpg
22032	Spiegelau, Definition Burgundy set od 6 čaša	1350300-1222	11500	t	2026-03-17 09:09:43.564621	2026-03-17 09:09:43.564623	51	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/definition-burg.jpg
22033	Spiegelau, Definition Champagne set od 6 čaša	1350329-1223	11500	t	2026-03-17 09:09:43.564629	2026-03-17 09:09:43.564631	33	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/definition-champ.jpg
22034	Corona de Aragon, Vermouth tinto 6x0,75L	VIVAT1224-1224	989	t	2026-03-17 09:09:43.564637	2026-03-17 09:09:43.564639	36	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/corona-vermouth-tinto-akcija-karton.jpg
22035	Errazuriz, Carmenere Max Reserva 2016 KARTON 6x0,75L - UŠTEDA!	1VN1050-1-1225	59700	t	2026-03-17 09:09:43.564646	2026-03-17 09:09:43.564649	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/errazuriz-max-reserva-carmenerew-karton.jpg
22036	Tormaresca, Calafuria Rose 2020 KARTON 6x0,75L - UŠTEDA!	VIVAT1226-1226	51600	t	2026-03-17 09:09:43.564654	2026-03-17 09:09:43.564656	26	POPUST	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/calafuria-akcija-10-posato.jpg
22037	Guado al Tasso Bolgheri DOC Superiore	1VN435-10-1227	14200	t	2026-03-17 09:09:43.564662	2026-03-17 09:09:43.564664	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/guado-al-tasso-w.jpg
22038	Guado al Tasso Cont' Ugo Bolgheri DOC	1VN555-1228	4500	t	2026-03-17 09:09:43.564669	2026-03-17 09:09:43.564671	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/guado-al-tasso-cont-ugow.jpg
22039	Guado al Tasso Il Bruciato Bolgheri	1VN629-1229	2760	t	2026-03-17 09:09:43.564677	2026-03-17 09:09:43.564679	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/il-bruciatoW.jpg
22040	Poli, The Great NEGRONI Cocktail Party Drink Bag in Tube 3 lit alk 25vol%	1RN065-1230	8667	t	2026-03-17 09:09:43.564685	2026-03-17 09:09:43.564687	15	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/negroni-3-l-poliw.jpg
22041	Poli, Gran Bassano Vermouth Bianco alk 18vol%	1RN064-1231	2030	t	2026-03-17 09:09:43.564693	2026-03-17 09:09:43.564695	10	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/poli-gran-bassano-bianco-vermouth.jpg
22042	Jacopo Poli, Po'di Poli Aromatica Traminer Grappa alk. 40vol% u metalnoj tubi	1RN063-1232	3280	t	2026-03-17 09:09:43.5647	2026-03-17 09:09:43.564703	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/poli-aromaticaW.jpg
22043	Spiegelau Special Glasses - Bar Gin and Tonic Glasses, set od 4	4810180-1233	4000	t	2026-03-17 09:09:43.564708	2026-03-17 09:09:43.56471	18	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/spiegelau-gin-tonic-4810180w.jpg
22044	Spiegelau Style 4670185 Champagne set 4 čaše	4670185-1234	2750	t	2026-03-17 09:09:43.564716	2026-03-17 09:09:43.564718	4	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/spiegelau-style-85.jpg
22045	Spiegelau Gin Tonic Glasses set 4 čaše	4390179-1235	4000	t	2026-03-17 09:09:43.564723	2026-03-17 09:09:43.564726	21	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/spiegelau-gin-tonic-set-od-4.jpg
22046	Spiegelau, Special Glasses Expert Tasting set od 6 čaša	4630181-1236	2588	t	2026-03-17 09:09:43.564731	2026-03-17 09:09:43.564733	10	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/expert-tasting-spiegelau.jpg
22047	Raventos i Blanc, Blanc de Blancs Vintage Brut KARTON 6x0,75 - UŠTEDA 18,50 kn/boci!	VIVAT1237-1237	65400	t	2026-03-17 09:09:43.564739	2026-03-17 09:09:43.564741	19	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/raventos-bl-d-bl-karton.jpg
22048	Cota vina, Pero J'Dero	1VN20190-1-1238	1350	t	2026-03-17 09:09:43.564747	2026-03-17 09:09:43.564749	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Cota-vina-PeroW.jpg
22049	DropStop za posluživanje vina CDcard PAK sa 2 diska	1AN00001-1239	319	t	2026-03-17 09:09:43.564754	2026-03-17 09:09:43.564757	18	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/drop-stop-2-packW.jpg
22050	DropStop WINE BREATHER za posluživanje vina PAK sa 2 diska	1AN0000029-1240	397	t	2026-03-17 09:09:43.564762	2026-03-17 09:09:43.564764	95	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/DROPSTOP-WINE-BREATHER.jpg
22051	DropStop za posluživanje vina PAK sa 5 diskova	1AN0000030-1241	657	t	2026-03-17 09:09:43.56477	2026-03-17 09:09:43.564772	33	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/dropstop-pak5-w.jpg
22052	Vislander, Bugava (Vugava)	1V214002-1242	1100	t	2026-03-17 09:09:43.564777	2026-03-17 09:09:43.56478	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/VislanderVugava-19w.jpg
22053	Vislander, Plavac mali Tihobraće	1V214001-1243	2130	t	2026-03-17 09:09:43.564785	2026-03-17 09:09:43.564787	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Vislander-Tihobrace-16w.jpg
22054	Vislander, Gin (s Visa!) alk 40vol%	1R5006-1244	1533	t	2026-03-17 09:09:43.564792	2026-03-17 09:09:43.564794	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/vislander-Gin.jpg
22055	Vislander, Travarica alk 40vol%	1R5008-1245	1261	t	2026-03-17 09:09:43.5648	2026-03-17 09:09:43.564802	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/vislander-travarica.jpg
22056	Vislander, Rogačica alk 40vol%	1R5007-1246	1394	t	2026-03-17 09:09:43.564807	2026-03-17 09:09:43.564809	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/vislander-rogačw.jpg
22057	Vislander, Kruškovača alk 40vol%	1R5009-1247	1141	t	2026-03-17 09:09:43.564815	2026-03-17 09:09:43.564817	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Vislander-Kruskovacaw.jpg
22058	Vislander, Lozovača Barrique alk 40vol%	1R5005-1248	1394	t	2026-03-17 09:09:43.564822	2026-03-17 09:09:43.564824	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Lozovača-Barrique-vislander-w.jpg
22059	Platte Valley Corn Whiskey 3 Years Old 40vol%	1R00413-1249	3252	t	2026-03-17 09:09:43.56483	2026-03-17 09:09:43.564832	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Platte-Valley-Corn-Whiskey-3-Yearsw.jpg
22060	Green Spot Single Pot Still Irish Whiskey 40vol% Giftbox	1R00247-1250	5200	t	2026-03-17 09:09:43.564837	2026-03-17 09:09:43.564839	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Green-Spot-Single-Pot-Still-Irish-Whiskey-40-Vol.-07l-in-Giftbox-w.jpg
22061	Oban Bay Reserve GAME OF THRONES The Night's Watch Single Malt Collection 43vol% Giftbox	1R00316-1251	7831	t	2026-03-17 09:09:43.564845	2026-03-17 09:09:43.564847	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Oban-Bay-Reserve-GAME-OF-THRONES-The-Nights-Watch-Single-Malt-Collection-43vol-Giftboxw.jpg
22062	Ledaig 10 Years Old RICH PEAT Single Malt Scotch Whisky 46,3vol% Giftbox	1R00318-1252	5890	t	2026-03-17 09:09:43.564852	2026-03-17 09:09:43.564854	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Ledaig-10-Years-Old-RICH-PEAT-Single-Malt-Scotch-Whisky-463vol-Giftboxw.jpg
22063	Nikka Yoichi Single Malt Whisky 45vol% Giftbox	1R00324-1253	8250	t	2026-03-17 09:09:43.56486	2026-03-17 09:09:43.564862	38	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Nikka-Yoichi-Single-Malt-Whisky-45vol-Giftboxw.jpg
22064	Aberfeldy 12 Years Old Highland Single Malt Scotch Whisky 40vol% Giftbox	1R00414-1254	4200	t	2026-03-17 09:09:43.564867	2026-03-17 09:09:43.564869	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Aberfeldy-12-Years-Old-Highland-Single-Malt-Scotch-Whisky-40vol-Giftboxw.jpg
22065	Nikka DAYS Smooth &amp; Delicate Blended Whisky 40vol% Giftbox	1R00415-1-1255	3290	t	2026-03-17 09:09:43.564875	2026-03-17 09:09:43.564877	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Nikka-DAYS-Smooth-Delicate-Blended-Whisky-40vol-Giftboxw.jpg
22066	Don Papa Rum 7 Years Old 40vol% Giftbox	1R00416-1256	5800	t	2026-03-17 09:09:43.564882	2026-03-17 09:09:43.564884	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/don-papa-gbx-w.jpg
22067	Zotter, Jogurt i jagoda 70 g	1H-16311-1257	370	t	2026-03-17 09:09:43.56489	2026-03-17 09:09:43.564892	26	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/zotter-jagoda-jogurtW.jpg
22068	Zotter, "A gift for you" punjena čokolada Marc de Champagne i maline 70 g	1H-16473-1258	370	t	2026-03-17 09:09:43.564897	2026-03-17 09:09:43.564899	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/gift-for-youW.jpg
22069	Zotter, "Very Berry" bijela čokolada s "berry" punjenjem 70g	1H-16326-1259	431	t	2026-03-17 09:09:43.564905	2026-03-17 09:09:43.564907	12	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/very-berryW.jpg
22070	Zotter, Višnja Amarena planinski mliječna čokolada s punjenjem 70 g	1H-16510-1260	431	t	2026-03-17 09:09:43.564912	2026-03-17 09:09:43.564914	35	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/amarena-visnjaw.jpg
22071	Zotter, "Volim te toliko puno" čokolada punjenje maline 70 g	1H-16474-1261	370	t	2026-03-17 09:09:43.56492	2026-03-17 09:09:43.564922	38	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/i-love-you-so-muchW.jpg
22072	Zotter, "Squaring of the Circlewild" Bobice, Kokos sa šečerom datulje Vegan 70 g	1H-18608-1262	398	t	2026-03-17 09:09:43.564927	2026-03-17 09:09:43.564929	39	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/wild-berry-coconutw.jpg
22073	Zotter, "Gin Zitronic" čokolada s punjenjem 70 g	1H-16448-1263	540	t	2026-03-17 09:09:43.564935	2026-03-17 09:09:43.564937	20	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/zotter-gin-lemonW.jpg
22074	Salentein, Killka Malbec Valle de Uco	1VN1245-1264	889	t	2026-03-17 09:09:43.564942	2026-03-17 09:09:43.564944	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/salentein-killka-malbec-w.jpg
22075	Nutmaz Pržene bučine sjemenke Colombo 100g	1H51103-1265	320	t	2026-03-17 09:09:43.56495	2026-03-17 09:09:43.564952	26	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/nutmaz-bučine-W.jpg
22076	Nutmaz Pržene bučine sjemenke  Hot Texas 100g	1H51104-1266	320	t	2026-03-17 09:09:43.564957	2026-03-17 09:09:43.56496	17	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/nutmaz-bučine-W.jpg
22077	Nutmaz Tostirani lješnjaci 200 g	1H51100-1267	480	t	2026-03-17 09:09:43.564966	2026-03-17 09:09:43.564969	28	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/nutmaz-lješnjaci.jpg
22078	Coprnica Domaći keksi s brusnicama i zobenim pahuljicama 300 g	1H666-1268	504	t	2026-03-17 09:09:43.564974	2026-03-17 09:09:43.564976	12	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/corpnica-s-brusnicama.jpg
22079	Medene loptice 150 g - fino uz razna pića iz naše ponude	1H2002-1269	345	t	2026-03-17 09:09:43.564981	2026-03-17 09:09:43.564984	15	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/medene-lopticeW.jpg
22080	Pirove frulice grisini 200 g	1H2001-1270	392	t	2026-03-17 09:09:43.564989	2026-03-17 09:09:43.564991	15	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Nutri_kulti_pirove_frulice-W.jpg
22081	Barundić, Manzoni Elegance Extra brut 6 X 0,75l  UŠTEDA ZA KARTON ČAK 222 kn!	VIVAT1271-1271	82800	t	2026-03-17 09:09:43.56501	2026-03-17 09:09:43.565013	22	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/elegance-1-2-akcija.jpg
22082	Barundić, Manzoni  KARTON 6 X 0,75l UŠTEDA 141 kn!	VIVAT1272-1272	65100	t	2026-03-17 09:09:43.565018	2026-03-17 09:09:43.56502	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/1V0069971-AKCIJA.jpg
22083	Barundić, Le Rose Brut KARTON 6 X 0,75l  - UŠTEDA ČAK 198 kn!	VIVAT1273-1273	82800	t	2026-03-17 09:09:43.565026	2026-03-17 09:09:43.565028	27	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/1V0069974-akcija.jpg
22084	Tomac, Marany	1V03214-1274	2055	t	2026-03-17 09:09:43.565034	2026-03-17 09:09:43.565036	19	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/tomac-marany-2w.jpg
22085	Kolarić, Coletti Cat nat	1Š55621-1275	1287	t	2026-03-17 09:09:43.565042	2026-03-17 09:09:43.565044	25	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/coletti-cat-natW.jpg
22086	AnCnoc BLACK HILL RESERVE Highland Single Malt Scotch Whisky alk. 46vol% 1l  Giftbox	1R00417-1276	4221	t	2026-03-17 09:09:43.565049	2026-03-17 09:09:43.565052	38	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/AnCnoc-BLACK-HILL-RESERVE-Highland-Single-Malt-Scotch-Whisky-46-Vol.-1l-in-GiftboxW.jpg
22087	Bruichladdich ISLAY BARLEY Coull, Cruach, Dunlossit, Island and Mulindry 2010 alk. 50vol% 0,7l u lim. Giftbox	1R00418-1277	6099	t	2026-03-17 09:09:43.565057	2026-03-17 09:09:43.565059	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Bruichladdich-ISLAY-BARLEY-Coull-Cruach-Dunlossit-Island-and-Mulindry-2010-50-Vol.-07l-in-TinboxW.jpg
22088	Bruichladdich THE CLASSIC LADDIE Scottish Barley Unpeated Islay Single Malt 50vol% 0,7l u lim. Giftbox	1R00419-1278	5780	t	2026-03-17 09:09:43.565064	2026-03-17 09:09:43.565067	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/BRUICHLADDICH-THE-CLASSIC-LADDIE-SING.MALT-SCOTCH-WHISKY-alk-50-vol-GP-070-L.jpg
22089	Glenfarclas 105 CASK STRENGTH Highland Single Malt Scotch Whisky alk. 60vol% 1l Giftbox	1R00421-1279	5508	t	2026-03-17 09:09:43.565072	2026-03-17 09:09:43.565074	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Glenfarclas-105-CASK-STRENGTH-Highland-Single-Malt-Scotch-Whisky-alk.-60vol-1l-GiftboxW.jpg
22090	Writer's Tears COPPER POT Irish Whiskey alk. 40vol% 0,7l Giftbox	1R00420-1280	3159	t	2026-03-17 09:09:43.565079	2026-03-17 09:09:43.565082	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Writers-Tears-COPPER-POT-Irish-Whiskey-alk.-40vol-07l-GiftboxW.jpg
22091	Tomac, Pet Nat Rose	1Š00514-1281	1550	t	2026-03-17 09:09:43.565087	2026-03-17 09:09:43.565089	26	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/tomac-pet-nat-rose-W3.jpg
22092	Tomac, Pet Nat	1v03390-1282	1724	t	2026-03-17 09:09:43.565094	2026-03-17 09:09:43.565096	28	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/tomac-pet-natW.jpg
22093	Dictador 20 Years Old Distillery Icon Reserve alk. 40vol% 0,7l	1R00422-1283	5574	t	2026-03-17 09:09:43.565102	2026-03-17 09:09:43.565104	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Dictador-20-Years-Old-Distillery-Icon-Reserve-40-Vol.-07lW.jpg
22094	Rose des Plages Premium	1VN1243-1284	990	t	2026-03-17 09:09:43.56511	2026-03-17 09:09:43.565112	31	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/rose-des-plages-cork-w.jpg
22095	Expression du Sud Rose	1VN1242-1285	650	t	2026-03-17 09:09:43.565117	2026-03-17 09:09:43.56512	15	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/expression-du-sudW.jpg
22096	Expression du Sud Rose KARTON 6x0,75l UZ UŠTEDU!	1VN1424-1-1286	30000	t	2026-03-17 09:09:43.565125	2026-03-17 09:09:43.565127	37	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/expression-du-sudW6X.jpg
22097	Nachtmann, ViVino Champagne set sa 4 čaše - NOVO	103744-1287	1984	t	2026-03-17 09:09:43.565133	2026-03-17 09:09:43.565136	21	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/VIVINO-CHAMPAGNE-SET-4.jpg
22098	Nachtmann, ViVino White wine Bijelo vino set sa 4 čaše - NOVO	103742-1288	1984	t	2026-03-17 09:09:43.565142	2026-03-17 09:09:43.565144	30	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/VIVINO-WHITE-SET-4.jpg
22099	Nachtmann, ViVino Bordeaux wine set sa 4 čaše - NOVO	103738-1289	1995	t	2026-03-17 09:09:43.565149	2026-03-17 09:09:43.565151	12	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/VIVINO-BORDEAUX-SET-4.jpg
22100	Nachtmann, ViVino Burgundy wine set sa 4 čaše - NOVO	103740-1290	1984	t	2026-03-17 09:09:43.565157	2026-03-17 09:09:43.565159	24	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/VIVINO-BURGUNDY-SET-4.jpg
22101	Zorzal, Reynoble Tinto Crianza - preporuka!	1VN977-1291	730	t	2026-03-17 09:09:43.565164	2026-03-17 09:09:43.565167	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/reynoble-tinto-crianza-W.jpg
22102	Duboković, 2718 sati sunca u boci Plavac	1V0402-1292	1180	t	2026-03-17 09:09:43.565172	2026-03-17 09:09:43.565174	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/dubokov-2718W.jpg
22103	Duboković, Moja B	1V0401-1293	1560	t	2026-03-17 09:09:43.56518	2026-03-17 09:09:43.565182	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/dobokovic-moja-b-w.jpg
22104	Duboković, Medvjedica	1V0266-1294	4510	t	2026-03-17 09:09:43.565187	2026-03-17 09:09:43.565189	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/dubokovic_medvjedicaW.jpg
22105	Duboković, Prvi poljubac	1V0403-1295	1960	t	2026-03-17 09:09:43.565194	2026-03-17 09:09:43.565197	31	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/dubokov-prvi-poljubacW.jpg
22106	Duboković, Moj Otok	1V0405-1296	1295	t	2026-03-17 09:09:43.565202	2026-03-17 09:09:43.565204	3	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/dubo-moj-otokW.jpg
22107	Simon Coll, Tamna čokolada 70% kakao s bademima u listićima  100 gr	1H2526-1297	440	t	2026-03-17 09:09:43.565209	2026-03-17 09:09:43.565212	34	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/simon-coll-badem.jpg
22108	Jacopo Poli, Marconi 42 dry Gin 42%vol	1RN061-1298	3690	t	2026-03-17 09:09:43.565217	2026-03-17 09:09:43.565219	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/poli-marconi-42W.jpg
22109	Simon Coll, Mliječna čokolada  200 g	1H1471-1299	650	t	2026-03-17 09:09:43.565225	2026-03-17 09:09:43.565227	100	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/simon-coll-mlijecnaW.jpg
22110	Merum Priorati, Desti	1VN1256-5-1300	5190	t	2026-03-17 09:09:43.565233	2026-03-17 09:09:43.565235	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/DESTI-w.jpg
22111	Merum Priorati, Inici	1VN1255-2-1301	3250	t	2026-03-17 09:09:43.565241	2026-03-17 09:09:43.565243	53	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/inici-W.jpg
22112	Cantina Girlan, 448 m.s.l. cuvee bianco	1VN1257-1302	1030	t	2026-03-17 09:09:43.565248	2026-03-17 09:09:43.56525	18	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-448-biancoW.jpg
22113	Cantina Girlan, 448 m.s.l. cuvee rosso	1VN1263-1303	922	t	2026-03-17 09:09:43.565256	2026-03-17 09:09:43.565258	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-448-rossoW.jpg
22114	Cantina Girlan, Pinot Grigio	1VN1259-1304	1300	t	2026-03-17 09:09:43.565264	2026-03-17 09:09:43.565266	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-pinot-gW.jpg
22115	Cantina Girlan, Sauvignon "INDRA"	1VN1260-1305	1680	t	2026-03-17 09:09:43.565271	2026-03-17 09:09:43.565273	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-indra-sauv-W.jpg
22116	Cantina Girlan, Sauvignon "FLORA"	1VN1261-1306	2940	t	2026-03-17 09:09:43.565279	2026-03-17 09:09:43.565281	3	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-flora-sauW.jpg
22117	Cantina Girlan, Cuvee bianco Riserva "FLORA"	1VN1262-1307	2562	t	2026-03-17 09:09:43.565286	2026-03-17 09:09:43.565288	27	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-cuvee-bianco-riservaW.jpg
22118	Cantina Girlan, Pinot noir "PATRICIA"	1VN1264-1308	1920	t	2026-03-17 09:09:43.565294	2026-03-17 09:09:43.565296	105	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-patricia-pnW.jpg
22119	Cantina Girlan, Lagrain Merlot "LAURIN"	1VN1266-1309	1765	t	2026-03-17 09:09:43.565303	2026-03-17 09:09:43.565305	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-laurinW.jpg
22120	Cantina Girlan, Pinot noir Riserva "TRATTMANN"	1VN1269-2-1310	4690	t	2026-03-17 09:09:43.565324	2026-03-17 09:09:43.565327	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-trattman.jpg
22121	Cantina Girlan, Cabernet Merlot Riserva "FLORA" 2016 0,75	1VN1268-1311	3013	t	2026-03-17 09:09:43.565332	2026-03-17 09:09:43.565335	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-cuvee-riserva-rossoW.jpg
22122	Lagar da Condesa, O Filo da Condesa Albarino	1VN1218-1312	1022	t	2026-03-17 09:09:43.56534	2026-03-17 09:09:43.565342	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/o-filo-condesa-albarino.jpg
22123	Juan Gil, Moscatel	1VN1247-1313	900	t	2026-03-17 09:09:43.565348	2026-03-17 09:09:43.56535	23	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/juan-gil-moscatel.jpg
22124	Sacchetto, Rose Brut "Mille Bolle"	1ŠN149-1314	690	t	2026-03-17 09:09:43.565355	2026-03-17 09:09:43.565358	27	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/mille-bolle-roseW.jpg
22125	Sacchetto, Bianco Millesimato Extra Dry "Mille Bolle"	1ŠN150-1315	717	t	2026-03-17 09:09:43.565363	2026-03-17 09:09:43.565365	19	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/mille-bolleW.jpg
22126	Sacchetto, Fili Prosecco DOC Brut Millesimato	1ŠN152-1316	776	t	2026-03-17 09:09:43.565371	2026-03-17 09:09:43.565373	15	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/fili-pros-brutw.jpg
22127	Pere Ventura, Tresor Reserva Brut Vintage ORGANIC	1ŠN153-1317	1061	t	2026-03-17 09:09:43.565379	2026-03-17 09:09:43.565381	32	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/pere-v-tresor-organic-W.jpg
22128	Foradori, Granato 2017	1VN1252-1318	5243	t	2026-03-17 09:09:43.565387	2026-03-17 09:09:43.565389	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/foradori-granato-W.jpg
22129	Foradori, Fontanasanta Manzoni Bianco	1VN1251-1319	2230	t	2026-03-17 09:09:43.565395	2026-03-17 09:09:43.565397	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/fontanasanta-manzoni-bianco-W.jpg
22130	Cusumano, ALTA MORA Etna Bianco DOC	1VN1250-1-1320	1820	t	2026-03-17 09:09:43.565402	2026-03-17 09:09:43.565404	50	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/cusumano-etna-bianco.jpg
22131	Tenuta dell Ornellaia, Le Serre Nuove 2018	1VN1249-1321	6570	t	2026-03-17 09:09:43.56541	2026-03-17 09:09:43.565412	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/serre-nuove-W.jpg
22132	Bumbu XO Handcrafted Rum 40vol% 0,7l	1R00425-1322	3800	t	2026-03-17 09:09:43.565417	2026-03-17 09:09:43.56542	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/bumbu-xo.jpg
22133	The Koshi-No Shinobu Blended Whisky Mizunara Oak Finish alk. 43vol%	1R00435-1323	3800	t	2026-03-17 09:09:43.565438	2026-03-17 09:09:43.565441	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/The-Koshi-No-Shinobu-Blended-Whisky-Mizunara-Oak-Finish-alk.43vol-W.jpg
22134	The Balvenie 14 Years Old Caribbean Cask alk. 43vol% Whisky Giftbox	1R00434-1324	7021	t	2026-03-17 09:09:43.565447	2026-03-17 09:09:43.565449	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/The-Balvenie-14-Years-Old-Caribbean-Cask-43-W.jpg
22135	Starlino ROSÉ Aperitivo alk. 17vol%	1R00437-1325	2601	t	2026-03-17 09:09:43.565455	2026-03-17 09:09:43.565457	23	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/aperitivo-starlino-rose-cl75-W.jpg
22136	Starlino Arancione Aperitivo alk. 17vol%	1R00436-1326	2601	t	2026-03-17 09:09:43.565463	2026-03-17 09:09:43.565465	10	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/STARLINO-ARANCIONE-APERITIVO-17alc-075-L-W.jpg
22137	Slane Irish Whiskey Triple Casked alk. 40vol%	1R00433-1327	3895	t	2026-03-17 09:09:43.56547	2026-03-17 09:09:43.565472	26	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Slane-Castle-Triple-Casked-W.jpg
22138	Ron Zacapa Centenario 23 SISTEMA SOLERA Gran Reserva Rum 40% Giftbox	1R00439-1328	7101	t	2026-03-17 09:09:43.565478	2026-03-17 09:09:43.56548	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/zacapa-23.jpg
22139	Loch Lomond Inchmurrin 12 Years Old 46vol% Giftbox	1R00432-1329	4333	t	2026-03-17 09:09:43.565485	2026-03-17 09:09:43.565487	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Loch-Lomond-Inchmurrin-12-Years-W.jpg
22140	Glen Grant 12 Years Old Single Malt alk. 43vol% Giftbox	1R00431-1330	4100	t	2026-03-17 09:09:43.565493	2026-03-17 09:09:43.565495	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Glen-Grant-12-Years-Old-Single-Malt-alk.-43vol-in-Giftbox-W.jpg
22141	Rum &amp; Cane BRITISH WEST INDIES XO Rum alk.43vol% metalni Giftbox	1R00426-1331	4380	t	2026-03-17 09:09:43.565501	2026-03-17 09:09:43.565503	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/rum-rum-cane-british-west-indies-W.jpg
22142	Aviation Gin alk.42vol%	1R00423-1332	3190	t	2026-03-17 09:09:43.565508	2026-03-17 09:09:43.56551	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/aviation-gin.jpg
22143	Auchentoshan THREE WOOD Single Malt Scotch Whisky alk.43vol% Giftbox	1R22351-1333	5037	t	2026-03-17 09:09:43.565516	2026-03-17 09:09:43.565518	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Auchentoshan-three-wood-W.jpg
22144	Auchentoshan BLOOD OAK Single Malt Scotch Whisky alk. 46vol% Giftbox	1R00429-1334	6503	t	2026-03-17 09:09:43.565523	2026-03-17 09:09:43.565525	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Auchentoshan-BLOOD-OAK-Single-Malt-Scotch-Whisky-alk.-46vol-Giftbox-W.jpg
22145	Auchentoshan 12 Years Old Single Malt Scotch Whisky alk.40vol% Giftbox	1R00428-1335	3950	t	2026-03-17 09:09:43.565531	2026-03-17 09:09:43.565533	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Auchentoshan-12-Years-Old-Single-Malt-Scotch-Whisky-alk.40vol-Giftbox-W.jpg
22146	Appleton Estate Reserve Blend Jamaica Rum alk.40vol%	1R00424-1336	2920	t	2026-03-17 09:09:43.565538	2026-03-17 09:09:43.56554	28	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Appleton-Estate-Reserve-Blend-Jamaica-Rum-alk.40vol-w.jpg
22147	Amrut Two Indies Rum alk.42,8vol% Giftbox	1R00438-1337	2721	t	2026-03-17 09:09:43.565545	2026-03-17 09:09:43.565548	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Amrut-Two-Indies-Rum-alk.428vol-Giftbox-W.jpg
22148	Amrut Indian Single Malt Whisky alk.46vol% metal Giftbox	1R00427-1338	4181	t	2026-03-17 09:09:43.565553	2026-03-17 09:09:43.565555	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Amrut-Indian-Single-Malt-Whisky-alk.46vol-metal-Giftbox-w.jpg
22149	Madirazza, Grk Herakles 2013	1V1620-1339	2124	t	2026-03-17 09:09:43.565561	2026-03-17 09:09:43.565563	40	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/MADIRAZZA-GRK-HERAKLES-W2.jpg
22150	Madirazza, Grk Herakles 2020	1V1622-1340	1858	t	2026-03-17 09:09:43.565568	2026-03-17 09:09:43.56557	29	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/MADIRAZZA-GRK-HERAKLES-W2.jpg
22151	Madirazza, Dingač Tramontana 6Bf	1VN1620-1341	1820	t	2026-03-17 09:09:43.565576	2026-03-17 09:09:43.565578	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/MADIRAZZA-6-BF-W.jpg
22152	Errazuriz, Don Maximiano Founder's Reserve "150 Edition Anniversary" 2017	1VN750-3-1342	7353	t	2026-03-17 09:09:43.565584	2026-03-17 09:09:43.565586	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/don-maximiano-founders-reserve-150-W.jpg
22153	Errazuriz, Pinot noir Aconcagua Costa 2019	1VN1049-1343	2044	t	2026-03-17 09:09:43.565591	2026-03-17 09:09:43.565593	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/errazuriz-aconcagua-costa-pn-W.jpg
22154	Errazuriz, Max Carmenere 2018 "150 Edition Anniversary"	1VN1050-2-1344	1447	t	2026-03-17 09:09:43.565599	2026-03-17 09:09:43.565601	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/errazuriz-150-carmener-max-W.jpg
22155	Nachtmann, Aspen Tumbler set od 4 čaše	92126-1345	1964	t	2026-03-17 09:09:43.565607	2026-03-17 09:09:43.565609	31	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/92126_Aspen_PR_WhiskyBox.jpg
22156	Chateau Miraval, Rose Cotes de Provence 2023	1VN819-9-1346	2380	t	2026-03-17 09:09:43.565614	2026-03-17 09:09:43.565617	15	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/miraval-rose.jpg
22157	Domaine Hubert &amp; Olivier Sinson, Valencay Rouge "Cuvee Prestige"	1VN1274-1347	929	t	2026-03-17 09:09:43.565622	2026-03-17 09:09:43.565624	27	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/valencay-rouge-w.jpg
22158	Cattunar, Chardonnay Barrique 2004 Arhiva - PRILIKA!	1VN6161-1348	2117	t	2026-03-17 09:09:43.56563	2026-03-17 09:09:43.565632	25	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/cattunar-chy-2004-w.jpg
22159	Cattunar, Limited Edition 4 Terre CRNA ZEMLJA Malvazija	1VN6160-1349	1260	t	2026-03-17 09:09:43.565637	2026-03-17 09:09:43.565639	35	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/CATTUNAR-4-TERRE-CRNA-ZEMLJA-W.jpg
22160	Cattunar, Limited Edition Teran KAPPI	1VN1613-1350	2700	t	2026-03-17 09:09:43.565645	2026-03-17 09:09:43.565647	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/CATTUNAR-TERAN-KAPPI-W.jpg
22161	Cattunar, Lim. Edit. COLLINA Malvazija	1VN1614-1351	2700	t	2026-03-17 09:09:43.565654	2026-03-17 09:09:43.565656	4	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/cattunar-collina-w.jpg
22162	Cattunar, Limited Edition Tre Regine Cuvee 2007 - PRILIKA	1VN1609-1352	3000	t	2026-03-17 09:09:43.565661	2026-03-17 09:09:43.565663	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/cattunar-tre-regine-cuvee-w.jpg
22163	Cattunar, Muškat ruža	1VN1612-1353	1210	t	2026-03-17 09:09:43.565669	2026-03-17 09:09:43.565671	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/cattunar-muskat-ruza-w.jpg
22164	Zotter, "Caipirinha" čokolada s punjenjem 70 g	1H-16321-1354	370	t	2026-03-17 09:09:43.565677	2026-03-17 09:09:43.565679	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Caipirinha-w.jpg
22165	Zotter, "Firewood Brandy" čokolada s punjenjem 70 g	1H-16406-1355	490	t	2026-03-17 09:09:43.565684	2026-03-17 09:09:43.565687	38	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Firewood-Brandy-w.jpg
22166	Zotter, "Kir Royal" čokolada s punjenjem 70 g	1H-16465-1356	370	t	2026-03-17 09:09:43.565692	2026-03-17 09:09:43.565694	34	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/kir-royal-w.jpg
22167	Zotter, "Ribisel Chili Rock" čokolada s punjenjem 70 g	1H-16356-1357	490	t	2026-03-17 09:09:43.5657	2026-03-17 09:09:43.565702	6	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Ribisel-Chili-Rock-w.jpg
22168	Zotter, "Tequila-Sol-Limun" čokolada s punjenjem 70 g	1H-16277-1358	431	t	2026-03-17 09:09:43.565707	2026-03-17 09:09:43.56571	27	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Tequila-Sol-Limun-w.jpg
22169	Zotter, "Smokva Port vino" čokolada s punjenjem 70 g	1H-16547-1359	540	t	2026-03-17 09:09:43.565715	2026-03-17 09:09:43.565717	20	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/smokva-porto-w.jpg
22170	Pljuvačnica Spittoon pljuvačnica pri kušanju vina	1DN37-1360	995	t	2026-03-17 09:09:43.565722	2026-03-17 09:09:43.565725	29	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/spitoon-pljuvacnica-w1.jpg
22171	Sanctum, Leptir Cuvee	1V56002-1361	1394	t	2026-03-17 09:09:43.56573	2026-03-17 09:09:43.565732	20	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/sanctum-leptir-w.jpg
22172	Sanctum, Chardonnay Presetige Kraemer Vineyard	1V56001-1362	2190	t	2026-03-17 09:09:43.565738	2026-03-17 09:09:43.56574	29	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/Sanctum_Chardonnay-Kraemer-Prestige-w.jpg
22173	Sanctum, Volk Noir Pet Nat Rose	1V56006-1363	1513	t	2026-03-17 09:09:43.565746	2026-03-17 09:09:43.565748	14	PJENUŠAVA VINA > PET NAT	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/sanctum-pet-nat-rose-w.jpg
22174	Sanctum, "My Red" cuvee 2015	1V56005-1364	2124	t	2026-03-17 09:09:43.565753	2026-03-17 09:09:43.565755	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/sanctum-my-red-w.jpg
22175	Sanctum, Pinot modri 2016	1V56003-1365	1779	t	2026-03-17 09:09:43.565761	2026-03-17 09:09:43.565763	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/sanctum-pinot-noir-w.jpg
22176	Sanctum, Pinot modri Prestige 2016	1V56004-1366	2654	t	2026-03-17 09:09:43.565769	2026-03-17 09:09:43.565771	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/sanctum-pinot-modri-prestige-w.jpg
22177	Loimer, Gluegglich Weiss cuvee	1VN1275-1367	1300	t	2026-03-17 09:09:43.565776	2026-03-17 09:09:43.565779	26	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/loimer-gluck-white-w.jpg
22178	Loimer, Gluegglich Rose	1VN1276-1368	1022	t	2026-03-17 09:09:43.565784	2026-03-17 09:09:43.565786	24	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/loimer-gluck-rose-w2.jpg
22179	Loimer, Lois Gruner Veltliner Kamptal	1VN446-4-1369	1260	t	2026-03-17 09:09:43.565792	2026-03-17 09:09:43.565794	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/loimer-lois-w.jpg
22180	Loimer, Riesling Loiserberg Langenlois (Kopiraj)	1VN679-1-1370	14450	t	2026-03-17 09:09:43.5658	2026-03-17 09:09:43.565802	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN679.jpg
22181	Cota vina, Baba Manda	1VN20191-1371	1581	t	2026-03-17 09:09:43.565808	2026-03-17 09:09:43.56581	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/baba-manda.jpg
22182	Bodegas Borsao, Seleccion Tinto	1VN1282-1372	783	t	2026-03-17 09:09:43.565815	2026-03-17 09:09:43.565818	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/borsao-selection-w.jpg
22183	Heinrich, Muscat Freyheit	1VN1278-1373	3092	t	2026-03-17 09:09:43.565823	2026-03-17 09:09:43.565825	7	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/heinrich-muscat-w.jpg
22184	Heinrich, Roter Traminer Freyheit	1VN972-3-1374	3390	t	2026-03-17 09:09:43.565831	2026-03-17 09:09:43.565833	9	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/heinrich-traminer-w.jpg
22185	Heinrich, Weisze Freyheit	1VN1279-1375	2429	t	2026-03-17 09:09:43.565839	2026-03-17 09:09:43.565841	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/weisze-freyheit-w.jpg
22186	Notte Rossa Malvasia Nera	1VN1205-1376	796	t	2026-03-17 09:09:43.56586	2026-03-17 09:09:43.565863	44	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/notte-rossa-malv-nera-w.jpg
22187	Notte Rossa Primitivo di Manduria	1VN1206-1377	1188	t	2026-03-17 09:09:43.565868	2026-03-17 09:09:43.56587	70	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/notte-rossa-priitivo-di-m-w.jpg
22188	Diplomático RESERVA EXCLUSIVA	1R00441-1378	4450	t	2026-03-17 09:09:43.565876	2026-03-17 09:09:43.565878	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/Diplomático-RESERVA-EXCLUSIVA.jpg
22189	Tomatin 15 Years Old American Oak Casks 46vol% 0,7l Giftbox	1R00440-1379	4579	t	2026-03-17 09:09:43.565884	2026-03-17 09:09:43.565886	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/Tomatin-15-Years-Old-American-Oak-Casks-46vol-07l-Giftbox-w.jpg
22190	Bernobić, Malvazija Istarska	1VN6650-1380	980	t	2026-03-17 09:09:43.565892	2026-03-17 09:09:43.565894	2	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/BERNOBIC-MALVAZIJA-075-L-w2.jpg
22191	Bernobić, Borgonja	1VN6651-1381	950	t	2026-03-17 09:09:43.5659	2026-03-17 09:09:43.565902	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/BERNOBIC-BORGONJA-075-L-w.jpg
22192	Haras de Pirque Albis	1VN1270-1-1382	5500	t	2026-03-17 09:09:43.565908	2026-03-17 09:09:43.56591	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/ALBIS-w.jpg
22193	Haras de Pirque Galantas Gran Reserva Cabernet franc	1VN1271-1383	2800	t	2026-03-17 09:09:43.565915	2026-03-17 09:09:43.565917	27	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/galantas-w.jpg
22194	Antica Napa Valley Mountain Select Chardonnay	1VN1272-1384	2986	t	2026-03-17 09:09:43.565923	2026-03-17 09:09:43.565925	19	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/Antica-Chardonnay-w.jpg
22195	Antica Napa Valley Mountain Select Cabernet sauvignon	1VN1273-1385	5296	t	2026-03-17 09:09:43.565931	2026-03-17 09:09:43.565933	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/AnticaNapaValleyCabernetSauvignon_-w.jpg
22196	ČEP ZATVARAČ ZA PJENUŠAVO VINO 1DN109	1DN109-1386	186	t	2026-03-17 09:09:43.565939	2026-03-17 09:09:43.565941	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/19-20r-w.jpg
22197	ČEP ZATVARAČ ZA PJENUŠAVO VINO 1DN112	1DN112-1387	186	t	2026-03-17 09:09:43.565946	2026-03-17 09:09:43.565948	19	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/19-40-w.jpg
22198	Bouvet Cremant de Loire Rose Brut	1ŠN630-1388	1300	t	2026-03-17 09:09:43.565954	2026-03-17 09:09:43.565956	397	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/bouvet-rose-excellence-w.jpg
22199	Domaine Rolet, ARBOIS Chardonnay	1VN1034-1-1389	1832	t	2026-03-17 09:09:43.565962	2026-03-17 09:09:43.565964	27	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/rolet-chy-w.jpg
22200	Domaine Rolet, ARBOIS Pinot noir	1VN1285-1390	1062	t	2026-03-17 09:09:43.565969	2026-03-17 09:09:43.565971	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/rolet-pinot-noir-w.jpg
22201	Domaine Rolet, ARBOIS Poulsard Vieille Vignes	1VN1284-1391	1725	t	2026-03-17 09:09:43.565977	2026-03-17 09:09:43.565979	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/rolet-poulsard-vv-w.jpg
22202	Wieninger, Wiener Riesling	1VN677-6-1392	1395	t	2026-03-17 09:09:43.565984	2026-03-17 09:09:43.565986	47	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/wieninger-w-riesling-w.jpg
22203	Wieninger, Wiener Gruner Veltliner	1VN1280-4-1393	1350	t	2026-03-17 09:09:43.565993	2026-03-17 09:09:43.565996	52	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/wieninger-w-gruner-w.jpg
22204	Hajszan Neumann (Fritz Wieninger), Natural Gruner Veltliner	1VN1281-1394	1128	t	2026-03-17 09:09:43.566001	2026-03-17 09:09:43.566004	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/HAJSZAN-NEUMANN-NATURAL-GRUNER-VELTLINER-w.jpg
22205	Loimer, Brut Reserve Rose	1ŠN950-1395	2500	t	2026-03-17 09:09:43.566009	2026-03-17 09:09:43.566011	29	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/fred-loimer-brut-rose-reserve-w.jpg
22206	Ipša, Pinot sivi	1V005255-1396	1995	t	2026-03-17 09:09:43.566017	2026-03-17 09:09:43.566019	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/ipsa-sivi-W.jpg
22207	Santa Cristina, Orvieto Classico Campogrande	1VANORV01-1397	750	t	2026-03-17 09:09:43.566024	2026-03-17 09:09:43.566026	38	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/orvieto-sc-w.jpg
22208	Castello della Sala, Orvieto Classico Superiore San Giovanni	1VN937-1398	1890	t	2026-03-17 09:09:43.566032	2026-03-17 09:09:43.566034	1	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/castello-san-giovani-orvieto-w.jpg
22209	Master's London Dry Gin KARTON 6 x 0,70	1R0305-3-1399	2190	t	2026-03-17 09:09:43.56604	2026-03-17 09:09:43.566042	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/masters-new4w.jpg
22210	Silvio Carta Bitter Roma Assoluto	1R0526-1400	5200	t	2026-03-17 09:09:43.566047	2026-03-17 09:09:43.56605	23	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/carta-Bitter-Assoluto-w.jpg
22211	Chateau de Chamirey, Mercurey en Pierrelet	1VN1291-1401	3517	t	2026-03-17 09:09:43.566055	2026-03-17 09:09:43.566057	11	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/CH-DE-CHAMIREY-MERCUREY-EN-PIERRELET-w.jpg
22212	Chateau de Chamirey, Mercurey Clos de La Maladiere	1VN1290-1402	3517	t	2026-03-17 09:09:43.566062	2026-03-17 09:09:43.566064	40	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/CH-DE-CHAMIREY-MERCUREY-CLOS-DE-LA-MALADIERE-w.jpg
22213	Domaine de la Ferte, Givry	1VN1289-1403	2854	t	2026-03-17 09:09:43.56607	2026-03-17 09:09:43.566072	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/ferge-givry-w.jpg
22214	Domaine de la Garenne, Macon Aze	1VN1292-1404	2124	t	2026-03-17 09:09:43.566078	2026-03-17 09:09:43.56608	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/garenne-macon-aze.jpg
22215	Le Renard, Burgogne Pinot noir	1VN1286-1405	1911	t	2026-03-17 09:09:43.566096	2026-03-17 09:09:43.566099	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/le-renard-pinot-noir-burgogne-w.jpg
22216	Le Renard, Coteaux Bourguignons rouge	1VN1287-1406	1433	t	2026-03-17 09:09:43.566105	2026-03-17 09:09:43.566107	23	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/le-renard-coteaux-rouge-w.jpg
22217	Le Renard, Bourgogne Chardonnay	1VN1288-1407	1725	t	2026-03-17 09:09:43.566112	2026-03-17 09:09:43.566115	29	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/le-renard-chardonnay-w.jpg
22218	Fosso Corno, Zeresimo	1VN1293-1408	1850	t	2026-03-17 09:09:43.56612	2026-03-17 09:09:43.566122	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/zeresimo-fosso-w2.jpg
22219	Fosso Corno, Montepulciano d'Abruzzo Orsus RISERVA Magnum 1,5L u drv. kut.	1VN1294-1409	5280	t	2026-03-17 09:09:43.566128	2026-03-17 09:09:43.56613	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/FOSSO-CORNO-Montepul-d-Abruzzo-Riserva-Orsus.jpg
22220	Taittinger, Les Folies de La Marquetterie Brut	1ŠN78-1410	7350	t	2026-03-17 09:09:43.566136	2026-03-17 09:09:43.566139	20	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2021/06/TAITTINGER-FOLIES-DE-LA-MARQUETTERIE-CHAMPAGNE-BRUT-075-L-w.jpg
22221	Taittinger, Les Folies de La Marquetterie Brut karton 6x0,75 Decanter Platinum	VIVAT1411-1411	249000	t	2026-03-17 09:09:43.566144	2026-03-17 09:09:43.566146	26	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2021/06/taittinger_folies_de_la_marquetterie-wPROMO.jpg
22222	Maison Valette, Macon-Chaintre Vieilles Vignes 2016	1VN1295-1412	3517	t	2026-03-17 09:09:43.566152	2026-03-17 09:09:43.566154	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/06/valette-macon-chaintre-w.jpg
22223	Maison Valette, Mesdemoizelles 2016	1VN1296-1413	4513	t	2026-03-17 09:09:43.56616	2026-03-17 09:09:43.566162	44	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/06/valette-MESDEMOIZELLES-w.jpg
22224	Maison Valette, POUILLY-FUISSE 2015	1VN1297-1414	4513	t	2026-03-17 09:09:43.566167	2026-03-17 09:09:43.566169	35	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/06/valette-POUILLY-FUISSe-TRADITION-w.jpg
22225	Ipša, Selekcija ekstra djevičansko maslinovo ulje	1H00000142-1415	2160	t	2026-03-17 09:09:43.566175	2026-03-17 09:09:43.566177	1	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/06/ipsa-selekcija-ulje-w.jpg
22226	Spiegelau, Definition Bordeaux set od 2 čaše	1350165-1416	3990	t	2026-03-17 09:09:43.566183	2026-03-17 09:09:43.566185	30	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/spiegelau-definition-bordeaux-2-packw.jpg
22227	Spiegelau, Definition Universal set od 2 čaše	1350161-1417	3990	t	2026-03-17 09:09:43.56619	2026-03-17 09:09:43.566192	13	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/spiegelau-definition-universal-2-packw.jpg
22228	Spiegelau, Definition Champagne set od 2 čaše	1350169-1418	3990	t	2026-03-17 09:09:43.566199	2026-03-17 09:09:43.566202	25	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/spiegelau-definition-champagne-2-packw.jpg
22229	OPG Plenković, Atena Premium Ekstradjevičansko maslinovo ulje	1H665511-1419	3318	t	2026-03-17 09:09:43.566207	2026-03-17 09:09:43.56621	16	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/atena-premium-w.jpg
22230	OPG Plenković, Atena Premium Ekstradjevičansko maslinovo ulje u poklon pakiranju	1H66551-1420	3716	t	2026-03-17 09:09:43.566215	2026-03-17 09:09:43.566218	39	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/atena-premium-gift-w.jpg
22231	OPG Plenković, Atena SLAVAČ Ekstradjevičansko maslinovo ulje	1H665512-1421	2124	t	2026-03-17 09:09:43.566223	2026-03-17 09:09:43.566225	39	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/atena-slavac-035-w.jpg
22232	Clase Azul Tequila REPOSADO alk. 40% vol. Tequila	1R00559-1422	23900	t	2026-03-17 09:09:43.566231	2026-03-17 09:09:43.566233	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/CLASE-AZUL-REPOSADO-w.jpg
22233	Glengoyne CUARTILLO American Oak Oloroso Sherry Casks 40% Vol  Giftbox	1R00600-1423	4898	t	2026-03-17 09:09:43.566239	2026-03-17 09:09:43.566241	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/GLENGOYNE-CUARTILLO-w.jpg
22234	Atimo Istarska Malvazija	1VN6422-1424	3390	t	2026-03-17 09:09:43.566247	2026-03-17 09:09:43.566249	4	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/atimo-w.jpg
22235	Spiegelau, Definition Burgundy set od 2 čaše	1350160-1425	3990	t	2026-03-17 09:09:43.566254	2026-03-17 09:09:43.566257	1	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/07/definition-burgundy-w.jpg
22236	Pere Ventura, Tresor GRAN Reserva Brut Vintage	1ŠN627-1426	1390	t	2026-03-17 09:09:43.566262	2026-03-17 09:09:43.566264	254	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/08/PF-TRESOR-GRAN-RESERVA-GB-W.jpg
22237	Pere Ventura, Primer Reserva Brut ORGANIC	1ŠN626-1427	1100	t	2026-03-17 09:09:43.566269	2026-03-17 09:09:43.566272	23	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/08/pere-ventura-organic-reserva-brut-w.jpg
22238	Rose des Plages Premium - PROMO: KARTON 6 boca uz POPUST	VIVAT1428-1428	39900	t	2026-03-17 09:09:43.566291	2026-03-17 09:09:43.566294	23	POPUST	https://www.vivat-finavina.hr/wp-content/uploads/2021/08/clr-fonjoya-sca-rose-des-plages-premium-AKCIJA-6-BOCA.jpg
22239	Roederer Luis, Champagne Brut Premier	1ŠN631-1429	4778	t	2026-03-17 09:09:43.5663	2026-03-17 09:09:43.566302	27	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2021/08/roederer-brut-premier-wz.jpg
22240	Roederer Luis, Cristal Brut Champagne 2013	1ŠN632-1430	26273	t	2026-03-17 09:09:43.566307	2026-03-17 09:09:43.56631	40	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2021/08/cristal-w.jpg
22241	Nerica, Pošip crni	1VN0576-1431	2050	t	2026-03-17 09:09:43.566315	2026-03-17 09:09:43.566317	147	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2021/08/nerica-posip-crni-www.jpg
22242	Prapian, Prosecco Valdobbiadene Superiore DOCG Brut COL DE L’UTIA - BIO	1ŠN633-1432	1150	t	2026-03-17 09:09:43.566323	2026-03-17 09:09:43.566325	173	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN210.jpg
22243	Senjanović, Vugava	1V54452-1433	1550	t	2026-03-17 09:09:43.566331	2026-03-17 09:09:43.566333	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/09/senjanovic-vugava-w.jpg
22244	Senjanović, Plavac Tihe braće	1V54453-1-1434	1995	t	2026-03-17 09:09:43.566338	2026-03-17 09:09:43.566341	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/09/PLAVAC-VINUM-LEVIUS_.jpg
22245	Senjanović, Plavac Tihe braće Magnum 2018	1V54454-1435	2950	t	2026-03-17 09:09:43.566348	2026-03-17 09:09:43.56635	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/09/senjanovic-plavac-tihob-magn.jpg
22246	Zotter, "Ananas i indijski oraščići" mliječna čokolada s punjenjem 70 g	1H-16057-1436	540	t	2026-03-17 09:09:43.566356	2026-03-17 09:09:43.566358	7	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/zotter-ananas-ind-oras-w.jpg
22247	Zotter, "Čokoladni mousse s rumom" čokolada s punjenjem 70 g	1H-16506-1437	540	t	2026-03-17 09:09:43.566363	2026-03-17 09:09:43.566366	24	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/zotter-chocomuss-rum-w.jpg
22248	Zotter, "Pivo" čokolada s punjenjem 70 g	1H-16416-1438	431	t	2026-03-17 09:09:43.566371	2026-03-17 09:09:43.566373	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/zotter-pivo-w.jpg
22249	Zotter, "Rum i grožđice" čokolada s punjenjem 70 g	1H-16608-1439	431	t	2026-03-17 09:09:43.566379	2026-03-17 09:09:43.566381	23	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/zotter-rum-i-grozdice-w.jpg
22250	Zotter, "Sir, orasi, grožđe" čokolada s punjenjem 70 g	1H-16403-1440	431	t	2026-03-17 09:09:43.566386	2026-03-17 09:09:43.566389	33	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/zotter-sir-orasi-grozde-w.jpg
22251	Dobravac, Sonata Malvazija Riserva	1V6638-1441	2010	t	2026-03-17 09:09:43.566394	2026-03-17 09:09:43.566396	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/sonata-riserva1-.jpg
22252	Dobravac, Simfonija Malvazija	1V6621-1442	3760	t	2026-03-17 09:09:43.566402	2026-03-17 09:09:43.566404	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/dobravac-simfonija-w.jpg
22253	Dobravac, Gašpar Teran	1V6624-1443	1560	t	2026-03-17 09:09:43.56641	2026-03-17 09:09:43.566412	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/dobravac-gaspar-w.jpg
22254	Dobravac, Fuga Teran	1V6622-1444	2720	t	2026-03-17 09:09:43.566417	2026-03-17 09:09:43.566419	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/dobravac-fuga-w.jpg
22255	Komparak, TRUT Gin Signature	1R40010-1445	3590	t	2026-03-17 09:09:43.566425	2026-03-17 09:09:43.566427	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/trut-gin-w.jpg
22256	Madirazza, Grande Madirazza Nobile D'Oro Cuvee 2020	1V1650-1446	3716	t	2026-03-17 09:09:43.566433	2026-03-17 09:09:43.566435	30	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/MADIRAZZA-GRANDE-DORO-NOBILE-CUVEE-GRK-POSIP-075-L-w.jpg
22257	Karaman, Malvasija dubrovačka 2018 👍	1V00279-1447	1533	t	2026-03-17 09:09:43.566441	2026-03-17 09:09:43.566443	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/KARAMAN-DUBROVACKA-MALVASIJA-075-L-w2.jpg
22258	Knob Creek Kentucky Straight Rye Whiskey Small Batch 50% Vol. 1 L	1R0060-1448	4579	t	2026-03-17 09:09:43.566448	2026-03-17 09:09:43.566451	40	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Knob-Creek-Kentucky-Straight-Rye-Whiskey-Small-Batch-50-Vol..jpg
22259	The Macallan QUEST Highland Single Malt 40vol% Giftbox	1R00450-1449	6503	t	2026-03-17 09:09:43.566456	2026-03-17 09:09:43.566458	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/macallan-quest.jpg
22260	Fam vrećica za 1-2 boce natron s motivom	FAM660650-1450	180	t	2026-03-17 09:09:43.566463	2026-03-17 09:09:43.566466	66	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/fam-660650-w.jpg
22261	Fam Kutija karton poklon 4 boce natur	FAM000426-1451	571	t	2026-03-17 09:09:43.566471	2026-03-17 09:09:43.566473	67	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/fam-000426-w.jpg
22262	Fam Kutija karton poklon 6 boca crna	FAM000664-1452	1000	t	2026-03-17 09:09:43.566479	2026-03-17 09:09:43.566481	17	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/fam-000664-w.jpg
22263	Fam Elastična vrpca crvena duga	FAM510221-1453	49	t	2026-03-17 09:09:43.566487	2026-03-17 09:09:43.566489	296	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/510221.jpg
22264	Fam Elastična vrpca srebrna duga	FAM510220-1454	49	t	2026-03-17 09:09:43.566494	2026-03-17 09:09:43.566496	244	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/510220w.jpg
22265	Fam Elastična vrpca zlatna kratka	FAM510110-1455	49	t	2026-03-17 09:09:43.566502	2026-03-17 09:09:43.566504	158	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/510110w.jpg
22266	Fam Poklon pakiranje s vrpcom za 1 bocu	FAM007802-1456	199	t	2026-03-17 09:09:43.566509	2026-03-17 09:09:43.566512	103	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/fam-007802w.jpg
22267	Fam ukrasna vrećica pvc 1/1	FAM605811-1457	35	t	2026-03-17 09:09:43.566517	2026-03-17 09:09:43.566519	235	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/605811w.jpg
22268	Fam ukrasna vrećica pvc 1/1	FAM605806-1458	44	t	2026-03-17 09:09:43.566525	2026-03-17 09:09:43.566527	307	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/605806W.jpg
22269	Prunotto, Bric Turot Barbaresco DOCG	1VN1299-3-1459	4780	t	2026-03-17 09:09:43.566533	2026-03-17 09:09:43.566535	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/prunotto-bric-turot-barbaresco.jpg
22270	Prunotto, Barolo DOCG Riserva Bussia Vigna Colonnello	1VN1301-2-1460	21950	t	2026-03-17 09:09:43.56654	2026-03-17 09:09:43.566542	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/Vigna-Colonnello-Barolo-Riserva-Bussia.jpg
22271	Prunotto, Grappa di Barolo Bussia 45%vol	1RN069-1461	3822	t	2026-03-17 09:09:43.566548	2026-03-17 09:09:43.56655	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/prunotto-grappa-bussia.jpg
22272	Marchese Antinori, Vinsanto del Chianti Classico	1VN1298-1462	2973	t	2026-03-17 09:09:43.566556	2026-03-17 09:09:43.566558	7	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2021/10/antinori-vinsanto-chianti-classw.jpg
22273	Finca La Estacada, La Estecada Syrah Merlot	1VN1307-1463	1526	t	2026-03-17 09:09:43.566563	2026-03-17 09:09:43.566565	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/finca-estecada-syrah-merlot.jpg
22274	Finca La Estacada, Secua Merlot Reserva	1VN1308-1464	1792	t	2026-03-17 09:09:43.566571	2026-03-17 09:09:43.566573	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/finca-secua-merlot.jpg
22275	Finca La Estacada, Viginti XX Cabernet franc	1VN1309-1465	730	t	2026-03-17 09:09:43.566578	2026-03-17 09:09:43.566581	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/FIN-LA-ESTACADA-VIGINTI-XX-CABERNET-FRANC-075-L-w.jpg
22276	Finca La Estacada, 6 Meses Barrica Magnum 1,5L u drv. kutiji	1VN1310-1466	2455	t	2026-03-17 09:09:43.566586	2026-03-17 09:09:43.566588	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/FLE-6-magnum.jpg
22277	Finca La Estacada, Secua Cabernet Syrah Reserva	1VN1306-1467	2256	t	2026-03-17 09:09:43.566594	2026-03-17 09:09:43.566596	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/FIN-LA-ESTACADA-SECUA-CABERNET-SYRAH-075-w.jpg
22278	Torres Selecta Veggie Čips 90g	1H307-1468	440	t	2026-03-17 09:09:43.566601	2026-03-17 09:09:43.566604	38	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/torres-veggie-w-1.jpg
22279	Torres Selecta Čips s okusom "De La Vera Paprika" 50g	1H309-1469	186	t	2026-03-17 09:09:43.566609	2026-03-17 09:09:43.566612	13	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/torres-paprika-ww.jpg
22280	Torres Selecta Čips s okusom "Questo Curado" SAZRIJEVAN SIR 50g	1H308-1470	186	t	2026-03-17 09:09:43.566617	2026-03-17 09:09:43.56662	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/torres-sir1-w.jpg
22281	Possente, "Zohra" Syrah Salaparuta	1VN1303-1471	1195	t	2026-03-17 09:09:43.566625	2026-03-17 09:09:43.566627	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/Possenta-zohra-w.jpg
22282	Possente, "Accini di Nero" Nero d'Avola	1VN1302-1472	1593	t	2026-03-17 09:09:43.566633	2026-03-17 09:09:43.566635	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/accini-di-nero-w.jpg
22283	Possente, "Cinque Inverni" Catarratto	1VN1304-1473	3517	t	2026-03-17 09:09:43.566641	2026-03-17 09:09:43.566643	62	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/Cinque-Inverni-w.jpg
22284	Masi, Mazzano Amarone della Valpolicella Classico	1VN1305-1-1474	14960	t	2026-03-17 09:09:43.566649	2026-03-17 09:09:43.566651	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/mazzano-w.jpg
22285	Aura, Karbun Gin Navy Strenght 58,53%vol	1R552172-1475	6000	t	2026-03-17 09:09:43.566656	2026-03-17 09:09:43.566658	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/navy-gin-w.jpg
22286	Simon Coll, Turron Čokolada 70% kakao s cijelim lješnjacima 250 g	1H2831-1476	903	t	2026-03-17 09:09:43.566664	2026-03-17 09:09:43.566666	40	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/simon-coll-2831.jpg
22287	Simon Coll, Turron Čokolada 70% kakao s cijelim bademima 250 g	1H2490-1477	1160	t	2026-03-17 09:09:43.566673	2026-03-17 09:09:43.566675	41	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/simon-coll-2490.jpg
22288	Amatller, Čokolada tamna MADAGASCAR kakao 74% 70g	1H2591-1478	530	t	2026-03-17 09:09:43.566681	2026-03-17 09:09:43.566683	12	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/amatller-madagascar-w.jpg
22290	NINSKA SPA SOL GROŽĐE 200 g	1A551104-1480	305	t	2026-03-17 09:09:43.566713	2026-03-17 09:09:43.566716	22	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/spa-sol-grozde-w.jpg
22291	Pere Ventura, Tresor Gran Reserva Brut Vintage (Kopiraj)	GRUPAPVTRGR-1-1481	9500	t	2026-03-17 09:09:43.566722	2026-03-17 09:09:43.566724	115	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/08/PF-TRESOR-GRAN-RESERVA-GB-W.jpg
22292	Pere Ventura, Tresor GRAN Reserva Brut Vintage 1,5 L MAGNUM	1ŠN629-1482	3190	t	2026-03-17 09:09:43.56673	2026-03-17 09:09:43.566732	20	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/PF-TRESOR-GRAN-RESERVA-MAGNUM-W.jpg
22293	Pere Ventura, Tresor Reserva Brut Vintage "Half" 0,375	1ŠN620-1483	870	t	2026-03-17 09:09:43.566737	2026-03-17 09:09:43.566739	43	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/PF-TRESOR-GRAN-RESERVA-half-W.jpg
22294	Pere Ventura, Tresor GRAN Reserva Brut Vintage 3,0L  JEREBOAM	1ŠN701-1484	9000	t	2026-03-17 09:09:43.566745	2026-03-17 09:09:43.566747	6	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/PERE-V-TRESOR-GRAN-RES-JEREBOAM.jpg
22295	Poggio Le Volpi, Roma Rosso DOC Ed. Limitata u kutiji	1VN1318-1485	2309	t	2026-03-17 09:09:43.566753	2026-03-17 09:09:43.566755	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/roma-doc-ed-limitata-w.jpg
22296	Poggio Le Volpi, Roma Rosso DOC Ed. Limitata Magnum u kutiji	1VN1318-1-1486	43500	t	2026-03-17 09:09:43.56676	2026-03-17 09:09:43.566762	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/roma-doc-ed-limitata-magnum-w.jpg
22297	Masca del Tacco, Primitivo di Manduria Riserva "Li Filitti"	1VN1089-1487	2097	t	2026-03-17 09:09:43.566768	2026-03-17 09:09:43.56677	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/masca-li-filitti-riserva-w.jpg
22298	Zotter, "O du frohliche/Santa" punjena čokolada Marc de Champagne 70 g	1H-16427-1488	431	t	2026-03-17 09:09:43.566776	2026-03-17 09:09:43.566778	25	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/ZOTTER-COKOLADA-MARC-CHAMP-SANTA-16427-70g-w.jpg
22299	Zotter, Lobooko "Maya" čokolada 100% kakaoa 70 gr	1H-20601-1489	431	t	2026-03-17 09:09:43.566783	2026-03-17 09:09:43.566785	33	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/zotter-maya-w.jpg
22300	Zotter, "Krampus-Šljivovica" u tamnoj čokoladi 70% kakaoa 70 g	1H-16218-1490	431	t	2026-03-17 09:09:43.566791	2026-03-17 09:09:43.566793	19	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/zotter-sljivovica-w.jpg
22301	Zotter, Mitzi Blue "Rock&amp;Roses" 70 g	1H-24176-1491	431	t	2026-03-17 09:09:43.566798	2026-03-17 09:09:43.5668	9	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/mitzi-rroses-w.jpg
22302	Zotter, Kesten i brusnice u čokoladi 70 g	1H-16550-1492	431	t	2026-03-17 09:09:43.566806	2026-03-17 09:09:43.566808	12	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/zotter-kesten-brusnica-w.jpg
22303	Zotter, "Jingle bells rock" Marcipan i crveno vino u čokoladi 70% 70 g	1H-16386-1493	431	t	2026-03-17 09:09:43.566813	2026-03-17 09:09:43.566815	15	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/jingle-bellsrock.jpg
22304	Dr. Škobić, Pašteta Jelen s tartufima 150 g	1H1006-1494	490	t	2026-03-17 09:09:43.566821	2026-03-17 09:09:43.566823	8	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/skobic-jelen-tartuf.jpg
22305	Dr. Škobić, Pašteta Crna svinja 150 g	1H1007-1495	490	t	2026-03-17 09:09:43.566829	2026-03-17 09:09:43.566831	25	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/skobic-crna-svinja.jpg
22306	Dr. Škobić, Pašteta Gušćja pašteta 150 g	1H1008-1496	490	t	2026-03-17 09:09:43.566836	2026-03-17 09:09:43.566838	20	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/skobic-guska.jpg
22307	Dr. Škobić, Pašteta divlja svinja s tartufima 150 g	1H1006-1-1497	2600	t	2026-03-17 09:09:43.566844	2026-03-17 09:09:43.566846	10	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/skobic-jelen-tartuf.jpg
22308	6 x Finca La Estacada, 6 Meses Barrica Magnum 1,5L u drv. kutiji	VIVAT1498-1498	14730	t	2026-03-17 09:09:43.566852	2026-03-17 09:09:43.566854	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/12/finca-magnum-w.jpg
22309	Henri Bourgeois, Pouilly Fume "En Travertin"	1VN547-1499	2390	t	2026-03-17 09:09:43.566859	2026-03-17 09:09:43.566872	25	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/12/hb-en-tavertin.jpg
22310	Penfolds, Grange 2017	1VN509-1-1500	69016	t	2026-03-17 09:09:43.566879	2026-03-17 09:09:43.566881	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/12/penfolds-grange-w.jpg
22311	Orimos Grande Reserve Rouge	1VN1170-1501	1050	t	2026-03-17 09:09:43.566887	2026-03-17 09:09:43.566889	941	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/orimos-cut-wb-2.jpg
22312	Chateau Rousselle "Tradition" rouge 2018	1VN1321-1502	1394	t	2026-03-17 09:09:43.566894	2026-03-17 09:09:43.566897	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/12/chat-rousselle-tradition.jpg
22313	Chateau Rousselle "Prestige" rouge 2018	1VN1323-1-1503	2420	t	2026-03-17 09:09:43.566902	2026-03-17 09:09:43.566904	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/12/ROUSSELLE-PRESTIGE-W2.jpg
22314	Chateau Haut Vigneau Rouge Blaye	1VN1322-1-1504	1430	t	2026-03-17 09:09:43.56691	2026-03-17 09:09:43.566912	200	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/12/Chateau-Haut-Vigneau-w2.jpg
22315	Alianca, XO 40 Anos Brandy 40%vol	1R00103-1505	12277	t	2026-03-17 09:09:43.566917	2026-03-17 09:09:43.566919	34	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/alianca-xo-40-w.jpg
22316	Alianca, XO 20 Anos Brandy 40%vol	1R00102-1506	9500	t	2026-03-17 09:09:43.566925	2026-03-17 09:09:43.566927	24	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/alianca-xo-20-w.jpg
22317	Bacalhoa, Quinta dos Quatro Ventos Reserva Douro	1VN1311-1507	2031	t	2026-03-17 09:09:43.566932	2026-03-17 09:09:43.566934	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/QUATROVENTOS-RESERVA-ALIANCA.jpg
22318	Leclerc Briant, Champagne Reserve Brut	1ŠN900-1508	5250	t	2026-03-17 09:09:43.56694	2026-03-17 09:09:43.566942	53	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/LeclercBriant-Brut-Reserve-w.jpg
22319	Leclerc Briant, Champagne Rose Extra Brut	1ŠN901-1509	6150	t	2026-03-17 09:09:43.566948	2026-03-17 09:09:43.56695	52	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/leclerc-briant-rose-extra-brut-w.jpg
22320	Leclerc Briant, Champagne Rose de Saignee Extra Brut	1ŠN906-1510	6835	t	2026-03-17 09:09:43.566956	2026-03-17 09:09:43.566958	13	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/leclerc-briant-rose-saignee-extra-brut-w.jpg
22321	Leclerc Briant, Champagne Premier Cru Extra Brut	1ŠN905-1511	6211	t	2026-03-17 09:09:43.566963	2026-03-17 09:09:43.566965	11	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/leclerc-briant-premier-cru-w.jpg
22322	Leclerc Briant, Champagne Grand blanc Millesime 2014 Zero	1ŠN904-1512	19046	t	2026-03-17 09:09:43.566971	2026-03-17 09:09:43.566973	23	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/leclerc-briant-grand-mill-w.jpg
22323	Leclerc Briant, Champagne Blanc de Meuniers Premier Cru Mill. 2015 Zero	1ŠN902-1513	15993	t	2026-03-17 09:09:43.566979	2026-03-17 09:09:43.566981	4	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/leclerc-briant-Prem-cru-Bl-de-Mw.jpg
22324	Leclerc Briant, Champagne Cuvee Divine en Solera Extra Brut	1ŠN903-1514	15993	t	2026-03-17 09:09:43.566987	2026-03-17 09:09:43.566989	2	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/leclerc-briant-devine-cuvee-w.jpg
22325	San Marzano, GranTrio Bianco Salento	1VN1323-1515	796	t	2026-03-17 09:09:43.566994	2026-03-17 09:09:43.566997	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/san-marzano-gran-trio-bianco-w.jpg
22326	San Marzano, GranTrio Rosso Salento	1VN1324-1516	796	t	2026-03-17 09:09:43.567002	2026-03-17 09:09:43.567004	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/01/san-marzano-gran-trio-rosso-w.jpg
22327	Spiegelau, Perfect Serve Collection 4500198 Whisky 3 SET	4500198-1517	9490	t	2026-03-17 09:09:43.56701	2026-03-17 09:09:43.567012	9	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2022/02/4500198_Spiegelau-PSC-whisky-set-w2.jpg
22328	Spiegelau Lifestyle 4450159 Dekanter	4450159-1518	5990	t	2026-03-17 09:09:43.567018	2026-03-17 09:09:43.56702	1	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/02/Spiegelau-Lifestyle-4450159-Dekanter-w-2.jpg
22329	Beluga Noble Russian Vodka 40% Alk. vol. 0,7l	1R00451-1519	3970	t	2026-03-17 09:09:43.567027	2026-03-17 09:09:43.567029	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/02/vodka-beluga-w.jpg
22330	Blanton's The Original Single Barrel Bourbon Whiskey 46,5vol% 0,7l Giftbox	1R00452-1520	14800	t	2026-03-17 09:09:43.567035	2026-03-17 09:09:43.567037	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/02/BLANTONS-THE-ORIGINAL-SINGLE-BARREL-BOURBON-WHISKY-alk465-vol-GP-070-L.jpg
22331	Studio by Miraval Blanc	1VN1328-1521	1327	t	2026-03-17 09:09:43.567043	2026-03-17 09:09:43.567045	23	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2022/02/studio-by-miraval-blanc-w.jpg
22332	Chateau Miraval, Rose Cotes de Provence 2024 Magnum 1,5	1VN820-9-1522	4680	t	2026-03-17 09:09:43.567052	2026-03-17 09:09:43.567054	36	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/miraval-rose.jpg
22333	Merum Priorati, El Cel	1VN1327-1-1523	7150	t	2026-03-17 09:09:43.56706	2026-03-17 09:09:43.567062	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/merum-priorati-el-cel-w.jpg
22334	Pere Ventura, On the Rocks Ice White Semi Sec	1ŠN613-1524	1128	t	2026-03-17 09:09:43.567068	2026-03-17 09:09:43.56707	31	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/pere-ventura-on-the-rock-ice-white-w.jpg
22335	Pere Ventura, On the Rocks Ice Rose Semi Sec	1ŠN614-1525	1128	t	2026-03-17 09:09:43.567075	2026-03-17 09:09:43.567077	27	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/PV-ICE-Rose-Semi-Sec-Reserva-w.jpg
22336	Gut Hermannsberg, Riesling Brut	1ŠN907-1526	2124	t	2026-03-17 09:09:43.567083	2026-03-17 09:09:43.567086	5	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/GH-Sekt-RieslingBrut_075L-w.jpg
22337	Gut Hermannsberg, Just Riesling Magnum	1VN1326-1527	3146	t	2026-03-17 09:09:43.567091	2026-03-17 09:09:43.567094	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/Magnum_GUTSWEINE_JustRiesling_KUPFER_w.jpg
22338	Limonio, Arancione 30%vol liquore	1RN030-1528	1991	t	2026-03-17 09:09:43.567099	2026-03-17 09:09:43.567101	48	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/limonio-arancion-w.jpg
22339	Limonio, Mandaretto 35%vol liquore di mandarino	1RN038-1529	1991	t	2026-03-17 09:09:43.567107	2026-03-17 09:09:43.567109	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/limonio_mandaretto-w.jpg
22340	Villa Maria, Private Bin Sauvignon Blanc	1VN1320-1530	1250	t	2026-03-17 09:09:43.567114	2026-03-17 09:09:43.567117	172	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/villa-maria-sbl-w.jpg
22341	Curatolo Arini, Marsala Superiore Riserva Storica 20 Anni	1PN71-1531	4048	t	2026-03-17 09:09:43.567122	2026-03-17 09:09:43.567124	15	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/arini-riserva-storica-20-anni-w.jpg
22342	Cantina Girlan, 448 m.s.l. cuvee bianco Magnum 1,5	1VN1258-1532	2270	t	2026-03-17 09:09:43.56713	2026-03-17 09:09:43.567132	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-448-biancoW.jpg
22343	Jagunić, Amber Selection Pinot crni	1V64455-1533	2800	t	2026-03-17 09:09:43.56715	2026-03-17 09:09:43.567153	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/JAGUNIC-AMBER-PINOT-CRNI-VINO-075L-W.jpg
22344	Jagunić, Amber Selection Pinot sivi	1V644845-1534	1875	t	2026-03-17 09:09:43.567159	2026-03-17 09:09:43.567161	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/JAGUNIC-AMBER-PINOT-SIVI-VINO-075L-W.jpg
22345	Tomac, Rockstar	1VN0340-1535	2055	t	2026-03-17 09:09:43.567167	2026-03-17 09:09:43.567169	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/rockstar-w.jpg
22346	Mount Nelson, Ram's Hill Sauvignon blanc Marlborough	1VN513-1536	2495	t	2026-03-17 09:09:43.567175	2026-03-17 09:09:43.567177	30	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/ramshill-sbl-mount-nelson-ww.jpg
22347	Baron Bornemisza Tokaji Aszu 6 Puttonyos 2013	1VN1330-1537	6105	t	2026-03-17 09:09:43.567182	2026-03-17 09:09:43.567185	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/BARON-BORNEMISZA-TOKAJI-6-Putt-w.jpg
22348	Salentein, Numina Malbec	1VN1325-1538	2695	t	2026-03-17 09:09:43.56719	2026-03-17 09:09:43.567192	28	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/Salentein-Numina-Malbec-w.jpg
22349	Zotter, "Marillenwalzer - Valcer marelica" u čokoladi 70 g	1H-16404-1539	490	t	2026-03-17 09:09:43.567198	2026-03-17 09:09:43.5672	21	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/zotter-marelica-w.jpg
22350	Zotter, Jagode bijela čokolada s punjenjem 70g	1H-16062-1540	435	t	2026-03-17 09:09:43.567205	2026-03-17 09:09:43.567207	36	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/zotter-jagoda-w.jpg
22351	Studio by Miraval Rose	1VN1192-6-1541	1450	t	2026-03-17 09:09:43.567213	2026-03-17 09:09:43.567215	471	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/STUDIO-BY-MIRVAL-W.jpg
22352	Maison les Alexandrins Le Cabanon Viognier	1VN1331-2-1542	970	t	2026-03-17 09:09:43.567221	2026-03-17 09:09:43.567223	371	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/perrin-le-cabanon-viognier-w.jpg
22353	Perrin, Cotes du Rhone Reserve Blanc	1VN616-1-1543	1150	t	2026-03-17 09:09:43.567228	2026-03-17 09:09:43.56723	45	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/perrin-cotes-du-rhone-blanc-reserve-w.jpg
22354	Perrin, Cotes du Rhone Reserve Rouge	1VN617-1-1544	1150	t	2026-03-17 09:09:43.567236	2026-03-17 09:09:43.567238	139	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/perrin-cotes-du-rhone-rouge-res-w.jpg
22355	Perrin, Cotes du Rhone Reserve Rouge Magnum	1VN1332-1545	2300	t	2026-03-17 09:09:43.567243	2026-03-17 09:09:43.567245	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/perrin-cotes-du-rhone-rouge-res-w.jpg
22356	Bura, Dingač uz 2 boce Bura Galerija plavac	1V7445-2-1546	6910	t	2026-03-17 09:09:43.567251	2026-03-17 09:09:43.567253	28	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/bura-dingac-x-2-galerija.jpg
22357	Conde Vimioso Sommelier Edition Tinto	1VN1334-1547	1400	t	2026-03-17 09:09:43.567259	2026-03-17 09:09:43.567261	117	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/Falua-conde-vimioso-sommelier-edition-W.jpg
22358	Conde Vimioso Sommelier Edition Tinto Magnum 1,5	1VN1335-1548	3050	t	2026-03-17 09:09:43.567267	2026-03-17 09:09:43.567269	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/Falua-conde-vimioso-sommelier-edition-W.jpg
22359	Tagus Creek Reserve Cabernet Sauvignon &amp; Touriga Nacional	1VN1336-1549	1394	t	2026-03-17 09:09:43.567274	2026-03-17 09:09:43.567276	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/tagus-creek-reserva-w.jpg
22360	Bodegas Borsao, Zarihs Shiraz	1VN1337-1550	1680	t	2026-03-17 09:09:43.567282	2026-03-17 09:09:43.567284	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/borsao-zarihs-w.jpg
22361	Kentia Albarino	1VN1338-1551	1168	t	2026-03-17 09:09:43.56729	2026-03-17 09:09:43.567292	30	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/gil-kentia-albarino-w.jpg
22362	Sacchetto, Fili Prosecco ICE Extra Dry	1ŠN780-1552	1020	t	2026-03-17 09:09:43.567298	2026-03-17 09:09:43.5673	27	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/SACCHETTO-FILI-ICE_DOC-PROSECCO-DRY-w.jpg
22363	Markus, Franz Ferdinand 102 Babić	1V004532-1553	53000	t	2026-03-17 09:09:43.567305	2026-03-17 09:09:43.567308	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/markus-ff-magnum5.jpg
22364	The Dalmore PORT WOOD RESERVE Highland Single Malt Scotch Whisky 46,5%vol. 0,7l Giftbox	1R00535-1554	9500	t	2026-03-17 09:09:43.567313	2026-03-17 09:09:43.567315	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/dalm-port-wood-res-ww.jpg
22365	The Dalmore CIGAR MALT Reserve Highland Single Malt Scotch Whisky 44% vol. 0,7l Giftbox	1R00447-1555	15260	t	2026-03-17 09:09:43.567321	2026-03-17 09:09:43.567323	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/THE-DALMORE-CIGAR-MALT-RES-w.jpg
22366	Knob Creek 9 Years Old Kentucky Straight Bourbon 50% vol.	1R00457-1556	3650	t	2026-03-17 09:09:43.567328	2026-03-17 09:09:43.567331	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Knob-Creek-9-Years-Old-Kentucky-Straight-Bourbon-w.jpg
22367	White Oak AKASHI Blended Whisky 40% Vol. 0,5l  Giftbox	1R7402-1557	2800	t	2026-03-17 09:09:43.567336	2026-03-17 09:09:43.567338	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/White-Oak-AKASHI-Blended-Whisky-40-w.jpg
22368	Bunnahabhain 12 Years Old Islay Single Malt Scotch Whisky 46,3% Vol. 0,7l Giftbox	1R00317-1558	6390	t	2026-03-17 09:09:43.567344	2026-03-17 09:09:43.567346	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Bunnahabhain-12-Years-Old-Islay-Single-Malt-Scotch-Whisky-Vol.-07l-Giftbox-w.jpg
22369	AnCnoc 12 Years Old Highland Single Malt 40% Vol. 0,7l Giftbox	1R00313-1559	3637	t	2026-03-17 09:09:43.567351	2026-03-17 09:09:43.567354	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/AnCnoc-12-Years-Old-Highland-Single-Malt-40-Vol.-07l-in-Giftbox-w.jpg
22370	Tito's Handmade Vodka 40% Vol. 0,7l	1R002151-1560	2250	t	2026-03-17 09:09:43.567359	2026-03-17 09:09:43.567361	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Titos-Handmade-Vodka-40-Vol.-07l-w.jpg
22371	1800 Tequila Reserva AÑEJO 100% Agave 38% Vol. 0,7l	1R00332-1561	3842	t	2026-03-17 09:09:43.567368	2026-03-17 09:09:43.56737	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/1800-Tequila-Reserva-ANEJO-100-Agave-38-Vol.-07l-w.jpg
22372	Kirk and Sweeney GRAN RESERVA SUPERIOR Dominican Rum 40% Vol. 0,7l	1R00449-1562	4995	t	2026-03-17 09:09:43.567376	2026-03-17 09:09:43.567378	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Kirk-and-Sweeney-GRAN-RESERVA-SUPERIOR-Dominican-Rum-40-Vol.-07l-w.jpg
22373	Evan Williams Kentucky Straight Bourbon Whiskey Black Label 43% Vol. 1l	1R00454-1563	2450	t	2026-03-17 09:09:43.567384	2026-03-17 09:09:43.567386	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/EVAN-WILLIAMS-KENTUCKY-STRAIGHT-BOURBON-WHISKY-alk.-43-vol.-10-L-w.jpg
22374	Elijah Craig Small Batch Kentucky Bourbon Whiskey 47% Vol.	1R00465-1564	4670	t	2026-03-17 09:09:43.567392	2026-03-17 09:09:43.567394	25	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Elijah-Craig-Small-Batch-Kentucky-Straight-Bourbon.jpg
22375	Laphroaig 10 Years Old 40% Vol. 0,7l Giftbox	1R00200-1565	5400	t	2026-03-17 09:09:43.5674	2026-03-17 09:09:43.567402	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Laphroaig-10-Years-Old-40-Vol.-07l-Giftbox-w.jpg
22376	Yellow Rose RYE Whiskey 45% vol. 0,7l	1R00442-1566	4450	t	2026-03-17 09:09:43.567407	2026-03-17 09:09:43.567409	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Yellow-Rose-RYE-Whiskey-45-Vol.-07l-w.jpg
22377	Glen Grant 10 Years Old Single Malt 40% vol. 1l Giftbox	1R00448-1567	3517	t	2026-03-17 09:09:43.567415	2026-03-17 09:09:43.567417	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Glen-Grant-10-Years-Old-Single-Malt-40-Vol.-1l-Giftbox-w.jpg
22378	Maker's Mark Kentucky Straight Bourbon Whisky 45% Vol. 1.0L	1R00458-1568	3438	t	2026-03-17 09:09:43.567423	2026-03-17 09:09:43.567425	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Makers-Mark-Kentucky-Straight-Bourbon-Whisky-45.jpg
22379	Duncan Taylor Black Bull KYLOE Blended Scotch Whisky 50% Vol. 0,7l	1R00462-1569	3278	t	2026-03-17 09:09:43.56743	2026-03-17 09:09:43.567432	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Duncan-Taylor-Black-Bull-KYLOE-Blended-Scotch-Whisky-50-Vol.-07l-w.jpg
22380	Douglas Laing THE EPICUREAN 12 Years Old Lowland Blended Malt 46% vol. 0,7l Giftbox	1R00533-1570	4884	t	2026-03-17 09:09:43.567438	2026-03-17 09:09:43.56744	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Douglas-Laing-THE-EPICUREAN-12-Years-Old-Lowland-Blended-Malt-46-Vol.-07l-Giftbox-w.jpg
22381	Jura 10 Years Old Single Malt Scotch Whisky 40% Vol. 0,7l Giftbox	1R00534-1571	3783	t	2026-03-17 09:09:43.567445	2026-03-17 09:09:43.567448	26	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Jura-10-Years-Old-Single-Malt-Scotch-Whisky-40-Vol.-07l-in-Giftbox-w.jpg
22382	Kaiyo Whisky Japanese Mizunara Oak 43% vol. 0,7l	1R00323-1572	8361	t	2026-03-17 09:09:43.567453	2026-03-17 09:09:43.567455	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Kaiyo-Whisky-Japanese-Mizunara-Oak-43-Vol.-07l-w.jpg
22383	Evan Williams SINGLE BARREL Vintage 2012 43,3% vol. 0,7l	1R00455-1573	5070	t	2026-03-17 09:09:43.567461	2026-03-17 09:09:43.567463	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Evan-Williams-SINGLE-BARREL-Vintage-2012-433-Vol.-07l-w.jpg
22384	Four Roses Small Batch Bourbon 45% Vol. 0,7l	1R00456-1574	3750	t	2026-03-17 09:09:43.56747	2026-03-17 09:09:43.567473	25	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Four-Roses-Small-Batch-Bourbon-45-Vol.-07lw.jpg
22385	Jura THE ROAD Single Malt Scotch Whisky 43,6% vol. 1l Giftbox	1R00463-1575	5282	t	2026-03-17 09:09:43.56748	2026-03-17 09:09:43.567483	37	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Jura-THE-ROAD-Single-Malt-Scotch-Whisky-436-Vol.-1l-in-Giftbox-w.jpg
22386	Redbreast 12 Years Old Single Pot Still Irish Whiskey 40% vol. 0,7l Giftbox	1R00211-1576	5500	t	2026-03-17 09:09:43.567489	2026-03-17 09:09:43.567491	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Redbreast-12-Years-Old-Single-Pot-Still-Irish-Whiskey-40-Vol.-07l-Giftbox-w.jpg
22387	Kavalan DISTILLERY SELECT Single Malt Whisky No. 1 40% vol. 0,7l Giftbox	1R002669-1577	5900	t	2026-03-17 09:09:43.567497	2026-03-17 09:09:43.5675	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Kavalan-DISTILLERY-SELECT-Single-Malt-Whisky-No.-1-40-Vol.-07l-Giftbox-w.jpg
22388	Brockmans Intensly Smooth Premium Gin 40% vol. 0,7l	1R00330-1578	3291	t	2026-03-17 09:09:43.567505	2026-03-17 09:09:43.567508	30	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Brockmans-Intensly-Smooth-PREMIUM-GIN-40-Vol.-07l-w.jpg
22389	Bushmills 10 Years Old Single Malt Irish Whiskey 40% vol. 0,7l Giftbox	1R00453-1579	3460	t	2026-03-17 09:09:43.567513	2026-03-17 09:09:43.567516	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Bushmills-10-Years-Old-Single-Malt-Irish-Whiskey-40-Vol.-07l-in-Giftbox-w.jpg
22390	The Six Isles Blended Malt Scotch Whisky BATCH STRENGTH 58% vol. 0,7l Giftbox	1R00537-1580	5110	t	2026-03-17 09:09:43.567523	2026-03-17 09:09:43.567527	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/The-Six-Isles-Blended-Malt-Scotch-Whisky-BATCH-STRENGTH-58-Vol.-07l-in-Giftboxw.jpg
22423	Don Papa BAROKO 40% Vol. 0,7l	1R00481-1613	4550	t	2026-03-17 09:09:43.567815	2026-03-17 09:09:43.567817	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/DON-PAPA-BAROKO-rum-40vol-070-L-w.jpg
22391	Nikka Gold &amp; Gold Samurai Whisky 43% Vol. 0,75l Giftbox	1R00322-1581	23800	t	2026-03-17 09:09:43.567534	2026-03-17 09:09:43.567537	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Nikka-Gold-Gold-Samurai-Whisky-43-Vol.-075l-in-Giftboxw.jpg
22392	Dictador 12 Years Old ICON RESERVE Colombian Rum 40% Vol. 0,7l	1R00242-1582	4000	t	2026-03-17 09:09:43.567544	2026-03-17 09:09:43.567546	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Dictador-12-Years-Old-ICON-RESERVE-Colombian-Rum-Vol.-07lw.jpg
22393	Proper No. Twelve Irish Whiskey 40% Vol 1.0L	1R00459-1583	4712	t	2026-03-17 09:09:43.567552	2026-03-17 09:09:43.567554	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Proper-No.-Twelve.jpg
22394	Woodford Reserve DOUBLE OAKED Kentucky Straight Bourbon Whiskey 43,2% vol. 0,7 Giftbox	1R00461-1584	5850	t	2026-03-17 09:09:43.567561	2026-03-17 09:09:43.567563	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Woodford-Reserve-DOUBLE-OAKED-Kentucky-Straight-Bourbon-Whiskey-432-Vol.-07l-in-Giftbox-w.jpg
22395	Maker's Mark 46 Kentucky Bourbon Whisky 47% Vol. 0,7l	1R00464-1585	5667	t	2026-03-17 09:09:43.567583	2026-03-17 09:09:43.567586	29	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Makers-Mark-46-Kentucky-Bourbon-Whisky-47-Vol.-07lw.jpg
22396	Signatory Vintage GLENLOSSIE 13 Y.O. Un-Chillfiltered 2007 46% vol. 0,7l Tinbox	1R00460-1586	8693	t	2026-03-17 09:09:43.567592	2026-03-17 09:09:43.567594	25	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/Signatory-Vintage-GLENLOSSIE-13-Years-Old-The-Un-Chillfiltered-2007-46-Vol.-07l-Tinbox-w.jpg
22397	Loimer, Ried Loiserberg Gruner Veltliner Erste Lage 2019	1VN678-1587	1924	t	2026-03-17 09:09:43.5676	2026-03-17 09:09:43.567602	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/loimer-za1.jpg
22398	Loimer, Ried Loiserberg Riesling Erste Lage	1VN1277-2-1588	2650	t	2026-03-17 09:09:43.567608	2026-03-17 09:09:43.56761	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/loimer-za1.jpg
22399	Hajszan Neumann (Fritz Wieninger), Natural Gemischter Satz 2020	1VN1340-1589	2581	t	2026-03-17 09:09:43.567615	2026-03-17 09:09:43.567618	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/HAJSZAN-NEUMANN-NATURAL-GEMISCHTER-SATZ-075-L-vino.jpg
22400	Wieninger, Nussberg Gruner Veltliner	1VN1040-3-1590	1800	t	2026-03-17 09:09:43.567623	2026-03-17 09:09:43.567625	43	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/wieninger-nussberg-gruner-veltliner.jpg
22401	Šoškić Haiku 2	1V7883-1591	6500	t	2026-03-17 09:09:43.567631	2026-03-17 09:09:43.567633	30	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/haiku-2-soskic-w.jpg
22402	Sattlerhof, Pfarrweingarten Morillon (Chardonnay) 2019	1VN976-1-1592	4513	t	2026-03-17 09:09:43.567639	2026-03-17 09:09:43.567641	15	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN976.jpg
22403	Domaine Guerrin &amp; Fils, Pouilly-Fuisse Vieille Vignes	1VN1344-1-1593	2670	t	2026-03-17 09:09:43.567646	2026-03-17 09:09:43.567648	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/GUERRIN-ET-FILS-POUILLY-FUISSE-VIEILLES-VIGNES-075-L-w.jpg
22404	Domaine Fillon, Chablis 1er Cru Montmains	1VN1341-1594	2986	t	2026-03-17 09:09:43.567654	2026-03-17 09:09:43.567656	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/FILLON-FILS-CHABLIS-1-er-MONTMAINS-075-L.jpg
22405	Domaine Fillon, Pinot noir Bourgogne Fut de Chene	1VN1342-1595	1964	t	2026-03-17 09:09:43.567662	2026-03-17 09:09:43.567664	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/FILLON-FILS-BOUR-PINOT-NOIR-FDC-075-L-w.jpg
22406	Domaine Ph. Charmond Pouilly Fuisse 1er Cru "Sur La Roche"	1VN1343-1596	2700	t	2026-03-17 09:09:43.56767	2026-03-17 09:09:43.567685	101	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/PHIL.-CHARMOND-POUILLY-FUISSE-1er-SUR-LA-ROCHE-075-L-w.jpg
22407	Monte Zovo, Le Civaie Terralbe Lugana DOC	1VN838-1597	1750	t	2026-03-17 09:09:43.567691	2026-03-17 09:09:43.567693	61	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/monte-zovo-lugana.jpg
22408	Cantina Iorio, Taburno Falanghina del Sannio	1VN1347-1598	969	t	2026-03-17 09:09:43.567699	2026-03-17 09:09:43.567701	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/iorio-falanghina-w.jpg
22409	Cantina Iorio, Aglianico del Sannio	1VN1346-1599	969	t	2026-03-17 09:09:43.567706	2026-03-17 09:09:43.567708	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/Iorio_aglianico-w.jpg
22410	Gin Mare Mediterranean Gin 42,7% Vol. 0,7l	1R00474-1600	4380	t	2026-03-17 09:09:43.567714	2026-03-17 09:09:43.567716	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/GIN-MARE-W.jpg
22411	Citadelle Original Dry Gin 44% vol. 0,7l	1R00472-1601	2350	t	2026-03-17 09:09:43.567722	2026-03-17 09:09:43.567724	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/citadelle-gin-w.jpg
22412	Baron Otard VSOP Cognac 40% Vol. 1l Giftbox	1R00470-1602	6736	t	2026-03-17 09:09:43.56773	2026-03-17 09:09:43.567732	19	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/otard-vsop-gift-w.jpg
22413	Firestarter Vodka 40% Vol. 0,7l	1R00482-1603	1950	t	2026-03-17 09:09:43.567739	2026-03-17 09:09:43.567741	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/firestarter-vodka-w.jpg
22414	Dictador XO PERPETUAL Colombian Aged Rum 40% Vol. 0,7l Giftbox	1R00477-1604	8361	t	2026-03-17 09:09:43.567746	2026-03-17 09:09:43.567749	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/Dictador-XO-PERPETUAL-Vol.-07l-GB-w.jpg
22415	Dictador XO INSOLENT Colombian Aged Rum 40% Vol. 0,7l Giftbox	1R00476-1605	9950	t	2026-03-17 09:09:43.567754	2026-03-17 09:09:43.567756	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/Dictador-XO-insolent-Vol.-07l-Giftbox-w.jpg
22416	Pampero Aniversario Reserva Exclusiva Ron Extra Añejo 40% vol. 0,7l	1R00480-1606	2750	t	2026-03-17 09:09:43.567762	2026-03-17 09:09:43.567764	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/PAMPERO-ANIVERS.-RES-EXCLUSIVA-rum-40vol-GP-070-L2-wz.jpg
22417	Opthimus Ron Artesanal Solera 15 Años Res Laude 38% vol. 0,7l  Giftbox	1R00479-1607	4513	t	2026-03-17 09:09:43.567769	2026-03-17 09:09:43.567771	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/OPTHIMUS-15-ANOS-RES-LAUDE-38-vol-rum-GP-070-L-w.jpg
22418	Oban Little Bay Single Malt Scotch Whisky Small Cask 43% vol. 0,7l Giftbox	1R00489-1608	6980	t	2026-03-17 09:09:43.567777	2026-03-17 09:09:43.567779	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/OBAN-LITTLE-BAY-SINGLE-MALT-WHISKY-alk43vol-GP-070-L-w.jpg
22419	Kirk and Sweeney XO Dominican Rum Edicion Limitada No.1 65,5% vol. 0,7l Giftbox	1R00490-1609	25881	t	2026-03-17 09:09:43.567785	2026-03-17 09:09:43.567787	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/KIRK-SWEENEY-XO-DOMINIC.-RUM-ED-No.1-alk655vol-GP-070-L-w.jpg
22420	Hine HOMAGE XO Cognac Grande Champagne 40% Vol. 0,7l Giftbox	1R00471-1610	13392	t	2026-03-17 09:09:43.567793	2026-03-17 09:09:43.567795	16	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/HINE-HOMAGE-XO-COGNAC-GRANDE-alk.40vol-GP-070-L-w.jpg
22421	Hampden Estate 8 Years Old Pure Single Jamaican Rum 46% Vol. 0,7l Giftbox	1R00478-1611	7280	t	2026-03-17 09:09:43.5678	2026-03-17 09:09:43.567802	39	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/HAMPDEN-ESTATE-8-YO-JAMAICAN-46-rum-GP-070-L-w.jpg
22422	Dictador Treasure Colombian Aged Gold Gin 43% vol. 0,7l	1R00473-1612	3783	t	2026-03-17 09:09:43.567808	2026-03-17 09:09:43.56781	29	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/DICTADOR-TREASURE-COLOMBIAN-AGED-GOLD-GIN-43vol-070-L-w.jpg
22424	Botran Ron Añejo 8 Sistema Solera 40% Vol. 0,7l	1R00475-1614	1141	t	2026-03-17 09:09:43.567823	2026-03-17 09:09:43.567825	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/BOTRAN-RON-ANEJO-8-SIST.-SOLERA-40vol-070-L-w.jpg
22425	Douglas Laing BIG PEAT Islay Blended Malt Whisky 46% vol. 0,7l	1R00484-1615	5200	t	2026-03-17 09:09:43.567831	2026-03-17 09:09:43.567833	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/DOUGLAS-LAING-BIG-PEAT-ISLAY-alk46vol-GP-070-L-whisky-w.jpg
22426	Douglas Laing PREMIER BARREL Glen Garioch 9 Years Old Single Malt 2010 46% vol. 0,7l Giftbox	1R00485-1616	6623	t	2026-03-17 09:09:43.567839	2026-03-17 09:09:43.567841	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/DOUGLAS-LAING-PREM.-BARREL-G.-GARIOCH-9-YO-WHISKY-alk46vol-GP-070-L-2-w.jpg
22427	Douglas Laing PREMIER BARREL Speyburn 10 Years Old Single Malt 2008 46% vol. 0,7l	1R00486-1617	7433	t	2026-03-17 09:09:43.567847	2026-03-17 09:09:43.567849	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/DOUGLAS-LAING-PREM.-BARREL-SPEYBURN-10-YO-WHISKY-alk46vol-GP-070-L-w.jpg
22428	Douglas Laing SYNDICATE 58/6 12 Years Old Small Batch Release 40% vol. 0,7l Giftbox	1R00487-1618	4360	t	2026-03-17 09:09:43.567854	2026-03-17 09:09:43.567856	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/DOUGLAS-LAING-SYNDICATE-58-6-12-YO-WHISKY-alk40vol-GP-070-L-w.jpg
22429	Douglas Laing TIMOROUS BEASTIE 10 Years Old Small Batch Release 2 46,8% vol. 0,7l Giftbox	1R00488-1619	4690	t	2026-03-17 09:09:43.567862	2026-03-17 09:09:43.567864	25	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/DOUGLAS-LAING-TIMOROUS-BEASTIE-10-YO-WHISKY-alk-468vol-GP-070-L-w.jpg
22430	Poli Segretario di Stato Whisky 43% alko vol. 0,7	1RN040-1620	4900	t	2026-03-17 09:09:43.56787	2026-03-17 09:09:43.567872	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/J-POLI-SEGRETARIO-DI-STATO-43vol-whisky-070-L-metal-gp-w.jpg
22431	Noilly Prat Original Dry Vermouth 18% Vol. 1l	1R00491-1621	2050	t	2026-03-17 09:09:43.567878	2026-03-17 09:09:43.56788	18	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/NOILLY-PRAT-ORIGINAL-DRY-18-vol-10-L-vermouth-w.jpg
22432	Lillet Blanc 17% Vol. 0,75l aperitiv na bazi vina	1R00492-1622	1792	t	2026-03-17 09:09:43.567885	2026-03-17 09:09:43.567887	11	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/LILLET-BLANC-17-vol-075-L-vinski-aperitiv-w.jpg
22433	Lillet Rose 17% Vol. 0,75l aperitiv na bazi vina	1R00493-1623	1845	t	2026-03-17 09:09:43.567893	2026-03-17 09:09:43.567895	15	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/LILLET-ROSE-17-vol-075-L-vinski-aperitiv-w.jpg
22434	Wolf Blass, Yellow Label Shiraz	1VN144-1624	950	t	2026-03-17 09:09:43.567901	2026-03-17 09:09:43.567903	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/Wolf-Blass-YELLOW-Label-SHIRAZ-075L.jpg
22435	Wynns, Coonawarra Shiraz	1VN1352-1625	1115	t	2026-03-17 09:09:43.567908	2026-03-17 09:09:43.56791	209	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/WYNNS-CWA-SHIRAZ-075-L-w.jpg
22436	Tormaresca, Furia di Calafuria Rosato Salento	1VN1351-1626	2986	t	2026-03-17 09:09:43.567916	2026-03-17 09:09:43.567918	11	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/furia-di-calafuria2-w.jpg
22437	Komparak, TRUT GIN Minty Breeze	1R40011-1627	3590	t	2026-03-17 09:09:43.567924	2026-03-17 09:09:43.567926	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/trut-minty-w.jpg
22438	Sablja za otvaranje pjenušca / champagne sabre	1D10784000-1628	11900	t	2026-03-17 09:09:43.567932	2026-03-17 09:09:43.567934	12	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/PULLTEX-SABLJA-ZA-PJENUSAC-107840-w.jpg
22439	Tenuta Bocca di Lupo, Pietrabianca Chardonnay Castel del Monte D.O.C.	1VN212-1629	2290	t	2026-03-17 09:09:43.56794	2026-03-17 09:09:43.567942	82	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/tormaresca-pietrabianca-w.jpg
22440	Choya Single Year Japan. Ume fruit liker 0,20 L	1R11781-1630	622	t	2026-03-17 09:09:43.567947	2026-03-17 09:09:43.567949	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-SINGLE-YEAR-155-vol-070-L-liqueur-w.jpg
22441	Choya Yuzu liker	1R11812-1631	2800	t	2026-03-17 09:09:43.567955	2026-03-17 09:09:43.567957	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-YUZU-147vol-075-L-liqueur.jpg
22442	Choya Uji Green Tea Umeshu liker	1R11950-1632	2170	t	2026-03-17 09:09:43.567962	2026-03-17 09:09:43.567965	72	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-UJI-GREEN-TEA-UMESHU-75vol-072-L-liqueur-w.jpg
22443	Choya Kokuto Umeshu liker	1R11923-1633	2200	t	2026-03-17 09:09:43.56797	2026-03-17 09:09:43.567972	64	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-KOKUTO-155-070-L-liker-w.jpg
22444	Choya Extra Years Umeshu liker	1R14124-1634	2363	t	2026-03-17 09:09:43.567978	2026-03-17 09:09:43.56798	38	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-EXTRA-YEARS-17vol-070-L-Umeshu-liqueur-w.jpg
22445	Choya Extra Sisho Ume liker	1R14125-1635	2509	t	2026-03-17 09:09:43.567985	2026-03-17 09:09:43.567987	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-EXTRA-SHISO-17-vol-070-L-Umeshu-liqueur-w.jpg
22446	Choya Dry Umeshu Plum wine	1VN1353-1636	1035	t	2026-03-17 09:09:43.567993	2026-03-17 09:09:43.567995	316	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-DRY-075-L-Umeshu-Plum-Wine-10vol-w.jpg
22447	Šoškić Sauvignon	1V48821-2-1637	1400	t	2026-03-17 09:09:43.568014	2026-03-17 09:09:43.568017	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/soskic-sauvignon-w.jpg
22448	Gölles, Williams / Rakija od kruške 43%vol	10R0703-1638	4500	t	2026-03-17 09:09:43.568023	2026-03-17 09:09:43.568025	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/GOLLES-WILLIAMS-RAKIJA-OD-KRUSKE-alk43vol-035-L.jpg
22449	Sikkim Greenery Premium Gin 40vol%	1R00494-1639	3159	t	2026-03-17 09:09:43.568031	2026-03-17 09:09:43.568033	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/SIKKIM-GREENERY-PREMIUM-GIN-40vol-070-L-w.jpg
22450	Compagnie des Indes West Indies 8 Years Old Blended Rum 40vol%	1R00495-1640	4632	t	2026-03-17 09:09:43.568039	2026-03-17 09:09:43.568041	37	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/COMPAGNIE-DES-INDES-WEST-INDIES-8-YO-40vol-rum-070-L-w.jpg
22451	Puchheimer Williamsbirnen Schnaps Viljamovka 35%	1R00593-1641	1725	t	2026-03-17 09:09:43.568046	2026-03-17 09:09:43.568048	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/PUCHHEIMER-WILLIAMSBIRNEN-35vol-070-L-rakija-w.jpg
22452	AnCnoc RÙDHAN Highland Single Malt 46 vol% 1l Giftbox	1R00497-1642	5680	t	2026-03-17 09:09:43.568054	2026-03-17 09:09:43.568056	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/AnCnoc-RUDHAN-Highland-Single-Malt-46-vol-1l-Giftbox-W.jpg
22453	Black Bottle 10 Years Old Blended Scotch Whisky 40 vol% 0,7l Giftbox	1R00498-1643	3676	t	2026-03-17 09:09:43.568062	2026-03-17 09:09:43.568064	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/BLACK-BOTTLE-10-YO-WHISKY-alk40vol-GP-070-L-W.jpg
22454	Buffalo Trace Kentucky Straight Bourbon Whiskey 40% Vol. 1 L	1R00499-1644	3451	t	2026-03-17 09:09:43.568069	2026-03-17 09:09:43.568071	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/buffalo-trace-kentucky-straight-bourbon-whi.jpg
22455	Bunnahabhain AN CLADACH Islay Single Malt Scotch Whisky 50 vol% 1l Giftbox	1R00508-1645	6040	t	2026-03-17 09:09:43.568078	2026-03-17 09:09:43.56808	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/BUNNAHABHAIN-AN-CLADACH-ISLAY-whisky-alk-50vol-GP-10-L-w.jpg
22456	Bunnahabhain TOITEACH A DHA Islay Single Malt Scotch Whisky 46,3 vol% 0,7l Giftbox	1R00509-1646	5990	t	2026-03-17 09:09:43.568086	2026-03-17 09:09:43.568088	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/Bunnahabhain-TOITEACH-A-DHA-Islay-Single-Malt-Scotch-Whisky-463-vol-07l-Giftbox-W.jpg
22457	Dimple GOLDEN SELECTION Blended Scotch Whisky 40 vol% 0,7l Giftbox	1R00567-1647	2893	t	2026-03-17 09:09:43.568093	2026-03-17 09:09:43.568095	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/DIMPLE-GOLDEN-SELECTION-WHISKY-alk40vol-GP-070-L-w.jpg
22458	Highland Park FULL VOLUME 1999/2017 Single Malt Scotch Whisky 47,2 vol% 0,7l Giftbox	1R00568-1648	11932	t	2026-03-17 09:09:43.568101	2026-03-17 09:09:43.568103	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/HIGHLAND-PARK-FULL-VOLUME-1999-2017-WHISKY-alk472vol-GP-070-L-w.jpg
22459	Old Ballantruan the PEATED MALT Unchillfiltered 50 vol% 0,7l Giftbox	1R00570-1649	4446	t	2026-03-17 09:09:43.568108	2026-03-17 09:09:43.56811	40	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/OLD-BALLANTRUAN-PEATED-MALT-WHISKY-alk50vol-GP-070-L-w.jpg
22460	Peat's Beast Batch Strength 52,1 vol% 0,7l Giftbox	1R00571-1650	3982	t	2026-03-17 09:09:43.568116	2026-03-17 09:09:43.568118	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/PEATS-BEAST-BATCH-STRENGHT-WHISKY-alk521vol-GP-070-L-w.jpg
22461	Tamnavulin DOUBLE CASK Speyside Single Malt Scotch Whisky 40 vol% 0,7l Giftbox	1R00572-1651	3000	t	2026-03-17 09:09:43.568123	2026-03-17 09:09:43.568125	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/TAMNAVULIN-DOUBLE-CASK-SPEYSIDE-WHISKY-alk40vol-GP-070-L-w.jpg
22462	Gold 999.9 Finest Tangerines Gin 40 vol%	1R00331-1652	3517	t	2026-03-17 09:09:43.568131	2026-03-17 09:09:43.568133	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/GOLD-9999-FINEST-TANGER-GIN-40vol-070-L-W.jpg
22463	Aecovi-Jerez, Alexandro Pedro Ximenez Sherry	1VNSHERRY8-1653	1168	t	2026-03-17 09:09:43.568138	2026-03-17 09:09:43.56814	28	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/AECOVI-JEREZ-ALEXANDRO-Pedro-Ximenez-sherry-075L-w.jpg
22464	Aecovi-Jerez, Alexandro Moscatel dulce Sherry	1VNSHERRY9-1654	657	t	2026-03-17 09:09:43.568146	2026-03-17 09:09:43.568148	358	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/AECOVI-JEREZ-ALEXANDRO-Moscatel-dulce-sherry-0375L-w.jpg
22465	Aecovi-Jerez, Alexandro Moscatel de Pasas Sherry	1VNSHERRY11-1655	1188	t	2026-03-17 09:09:43.568165	2026-03-17 09:09:43.568169	38	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/AECOVI-JEREZ-ALEXANDRO-Moscatel-de-Pasas-sherry-075L-w.jpg
22466	Tenuta Tignanello, Solaia	1VN713-12-1656	39850	t	2026-03-17 09:09:43.568176	2026-03-17 09:09:43.568179	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN713-3-1.jpg
22467	Lipanović, Vugava	1VLIPVUG-1657	1450	t	2026-03-17 09:09:43.568186	2026-03-17 09:09:43.568189	2	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/LIPANOVIC-VUGAVA-075-L-W.jpg
22468	Gin Mare Mediterranean Gin Capri Limited Edition 42,7vol% 1l	1R00560-1658	5995	t	2026-03-17 09:09:43.568197	2026-03-17 09:09:43.568199	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/GIN-MARE-MEDITERRANEAN-GIN-CAPRI-427-10-L-w.jpg
22469	Glencairn whisky set 2 čaše	913563-1659	2190	t	2026-03-17 09:09:43.568205	2026-03-17 09:09:43.568207	15	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/GLENCAIRN-casa-ZA-VISKI-PAK-set-2-kom-019-L-w.jpg
22470	Lagavulin 10 Years Old Single Malt Whisky 43vol% Giftbox	1R00562-1660	9556	t	2026-03-17 09:09:43.568213	2026-03-17 09:09:43.568215	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/LAGAVULIN-10-YO-WHISKY-alk43-GP-070-L-w.jpg
22471	Lagavulin 9 Years Old GAME OF THRONES House Lannister Single Malt Collection 46% Giftbox	1R00563-1661	11414	t	2026-03-17 09:09:43.568221	2026-03-17 09:09:43.568223	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/LAGAVULIN-9-YO-GAME-OF-THRONES-WHISKY-alk46-GP-070-L-w.jpg
22472	The Macallan 12 Years Old SHERRY OAK CASK 40 vol% Giftbox	1R00564-1662	10900	t	2026-03-17 09:09:43.568228	2026-03-17 09:09:43.56823	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/MACALLAN-12-Y-SHERRY-OAK-WHISKY-alk40-vol-GP-070-L-w.jpg
22473	Milan Budinski, Malvazija OMO	1VOMO-1663	3880	t	2026-03-17 09:09:43.568236	2026-03-17 09:09:43.568238	19	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/OMO_Malvazija-w.jpg
22474	Jagunić, Blanc de Noirs Extra Brut	1V64485-1664	1991	t	2026-03-17 09:09:43.568244	2026-03-17 09:09:43.568246	11	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/JAGUNIC-BLANC-DE-NOIRS-extra-dry-pjenusac-075-L.jpg
22475	Jagunić, Three Stars Rose Brut	1Š64484-1665	1720	t	2026-03-17 09:09:43.568252	2026-03-17 09:09:43.568254	52	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/JAGUNIC-LA-BULLE-ROSE-brut-pjenusac-075-L.jpg
22476	Dobravac, Sonata Malvazija	1V6623-1666	1210	t	2026-03-17 09:09:43.56826	2026-03-17 09:09:43.568262	25	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/DOBRAVAC-SONATA-malvazija-075-L-w.jpg
22477	Fosso Corno, Maslinovo ulje Ekstra djevičansko	1HOEV25-FC-1667	1394	t	2026-03-17 09:09:43.568268	2026-03-17 09:09:43.56827	38	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/fosso-corno-extra-virgine-olive-oil-w.jpg
22478	Sacchetto, Prosecco Asolo DOCG Brut	1ŠN781-1668	850	t	2026-03-17 09:09:43.568276	2026-03-17 09:09:43.568278	457	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/SACCHETTO-PROSECCO-ASOLO-BRUT-DOCG-pjenusavo-vino-075-L.jpg
22479	Boškinac, Cuvee Crni Cabernet Merlot	1V5214412-1669	4350	t	2026-03-17 09:09:43.568283	2026-03-17 09:09:43.568285	48	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/BOSKINAC-CRNI-CUVEE-075-w.jpg
22480	Boškinac, Ocu Cuvee	1V551421-1670	4350	t	2026-03-17 09:09:43.568291	2026-03-17 09:09:43.568293	23	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/BOSKINAC-OCU-075-Lw.jpg
22481	Taittinger, FIFA Wold Cup 2022 Brut Reserve Champagne (Limited Edition)	1ŠN114-1671	5442	t	2026-03-17 09:09:43.568299	2026-03-17 09:09:43.568301	27	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/fifa-edition-2022_bottle-w.jpg
22482	Crystal Head Vodka 40v% 0,7l Giftbox s dodat. čepom	1R00578-1672	5090	t	2026-03-17 09:09:43.568307	2026-03-17 09:09:43.568309	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/CRYSTAL-HEAD-VODKA-40vol-GP-070-L2-w.jpg
22483	Ilegal Mezcal Joven Special Edition 40vol% 0,7l	1R00574-1673	4645	t	2026-03-17 09:09:43.568314	2026-03-17 09:09:43.568316	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/ILEGAL-MEZCAL-JOVEN-SPEC.-EDIT.40vol-070-Lw.jpg
22484	Cihuatan 8 Anos INDIGO Rum El Salvador 40v% 0,7l Giftbox	1R00573-1674	3398	t	2026-03-17 09:09:43.568322	2026-03-17 09:09:43.568324	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/CIHUATAN-8-ANOS-INDIGO-RUM-EL-SALVADOR-40vol-GP-070-Lw.jpg
22485	Sierra Tequila Milenario Extra Añejo 100% de Agave 41,5v%	1R00577-1675	5747	t	2026-03-17 09:09:43.568329	2026-03-17 09:09:43.568331	38	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/SIERRA-TEQUILA-MILENARIO-EXTRA-ANEJO-415vol-070-Lw.jpg
22486	Padre Azul Super Premium Tequila Reposado 100% Agave 40v%	1R00576-1676	9815	t	2026-03-17 09:09:43.568337	2026-03-17 09:09:43.568339	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/PADRE-AZUL-PREMIUM-TEQUILA-REPOSADO-40vol-070-Lw.jpg
22487	Los Arango Tequila Añejo 100% de Agave 40vol% 0,7l	1R00575-1677	5375	t	2026-03-17 09:09:43.568344	2026-03-17 09:09:43.568346	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/LOS-ARANGO-TEQUILA-ANEJO-40vol-070-Lw.jpg
22488	Michter's US*1 Small Batch Whiskey 45,7vol%	1R00591-1678	6437	t	2026-03-17 09:09:43.568352	2026-03-17 09:09:43.568354	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/michters2-1.jpg
22489	Michter's US*1 Kentucky Single Barrel Straight Rye Whiskey 42,4vol%	1R00581-1679	6930	t	2026-03-17 09:09:43.568359	2026-03-17 09:09:43.568361	31	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/MICHTERS-US1-KENTUCKY-SINGLE-BARREL-424vol-070-L-w.jpg
22490	Sazerac RYE Straight Rye Whiskey 45vol%	1R680435-1680	5090	t	2026-03-17 09:09:43.568367	2026-03-17 09:09:43.568369	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/SAZERAC-RYE-STRAIGHT-WHISKEY-45vol-075-L-w.jpg
22491	Suntory Haku Japanese Craft Vodka 40vol%	1R00579-1681	3495	t	2026-03-17 09:09:43.568374	2026-03-17 09:09:43.568377	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/SUNTORY-HAKU-VODKA-40vol-070-L-w.jpg
22492	Suntory The Hakushu DISTILLER'S RESERVE Single Malt Japanese Whisky 43vol% Giftbox	1R00590-1682	12650	t	2026-03-17 09:09:43.568382	2026-03-17 09:09:43.568384	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/SUNTORY-THE-HAKUSHU-DISTILLERS-RES-WHISKY-43vol-GP-070-L-w.jpg
22493	Suntory Whisky KAKUBIN Yellow Label Special Blend 40vol%	1R00583-1683	5163	t	2026-03-17 09:09:43.568389	2026-03-17 09:09:43.568391	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/SUNTORY-WHISKY-KAKUBIN-40vol-070-L-w.jpg
22494	Dewar's 12 Years Old Blended Scotch Whisky Double Aged 40vol% Giftbox	1R00580-1684	2850	t	2026-03-17 09:09:43.568396	2026-03-17 09:09:43.568399	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/DEWARS-12-YO-SCOTCH-WHISKY-40vol-GP-070-L-w.jpg
22495	Westward American Single Malt Whiskey 45vol%	1R00584-1685	8000	t	2026-03-17 09:09:43.568404	2026-03-17 09:09:43.568406	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/WESTWARD-AMERICAN-WHISKEY-45vol-070-L-w.jpg
22496	William Lawson's Blended Scotch Whisky 40vol%	1R00585-1686	1250	t	2026-03-17 09:09:43.568411	2026-03-17 09:09:43.568413	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/WILLIAM-LAWSONS-BLENDED-SCOTCH-WHISKY-40vol-070-L-w.jpg
22497	Franković, Korona Sur Lie Malvazija	1V663221-1687	2600	t	2026-03-17 09:09:43.56842	2026-03-17 09:09:43.568422	3	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/korona-vino-frankovic4-3.jpg
22498	Dubois Brut	1ŠN512-1688	498	t	2026-03-17 09:09:43.568441	2026-03-17 09:09:43.568444	38	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/Dubois-brut.jpg
22499	Expression du Sud Rose KARTON 6x0,75 UZ UŠTEDU	VIVAT1689-1689	3900	t	2026-03-17 09:09:43.568449	2026-03-17 09:09:43.568452	10	POPUST	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/expression-du-suD-6TAJEGRTIS.jpg
22500	Benriach THE ORIGINAL TEN Single Malt Three Cask Matured 43vol% Giftbox	1R00585-1-1690	31500	t	2026-03-17 09:09:43.568457	2026-03-17 09:09:43.568471	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/08/BENRIACH-ORIGINAL-TEN-WHISKY-43-GP-070L-w.jpg
22501	Hatozaki Japanese Blended Whisky 40vol%	1R00588-1691	3500	t	2026-03-17 09:09:43.568478	2026-03-17 09:09:43.56848	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/08/HATOZAKI-JAPANESE-WHISKY-40GP-070L-w.jpg
22502	Benriach THE ORIGINAL TEN Single Malt Three Cask Matured 43vol% Giftbox	1R00586-1692	4600	t	2026-03-17 09:09:43.568485	2026-03-17 09:09:43.568487	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/08/BENRIACH-ORIGINAL-TEN-WHISKY-43-GP-070L-w.jpg
22503	BenRiach Birnie Moss Peated Malt 48vol% Giftbox	1R00592-1693	4380	t	2026-03-17 09:09:43.568493	2026-03-17 09:09:43.568495	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/08/THE-BENRIACH-BIRNIE-MOSS-WHISKY-48-GP-070L-w.jpg
22504	Glengoyne 10 Years Old Highland Single Malt Scotch Whisky 40vol% Giftbox	1R00587-1694	4446	t	2026-03-17 09:09:43.5685	2026-03-17 09:09:43.568503	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/08/GLENGOYNE-10YO-WHISKY40GP-070L-w.jpg
22505	Vina Bora, Pošip	1V9988-1-1695	1890	t	2026-03-17 09:09:43.568508	2026-03-17 09:09:43.56851	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/08/posip_vivat.jpg
22506	Čečavac&amp;Gašpar, Jeka Dalmatia 2020	1V554411-1-1696	11650	t	2026-03-17 09:09:43.568516	2026-03-17 09:09:43.568518	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/jeka-w.jpg
22507	La Tunella, Pinot nero	1VN1348-1697	1540	t	2026-03-17 09:09:43.568524	2026-03-17 09:09:43.568526	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/LA-TUNELLA-PINOT-NERO-075-L-w.jpg
22508	Radović, Dingač	1V00065-1698	1860	t	2026-03-17 09:09:43.568531	2026-03-17 09:09:43.568533	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/RADOVIC-DINGAC-075L.jpg
22509	Radović, Postup	1V265-1699	1180	t	2026-03-17 09:09:43.568539	2026-03-17 09:09:43.568541	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/RADOVIC_POSTUP1.jpg
22510	Wild Turkey LONGBRANCH 8 Years Old Kentucky Straight Bourbon Whiskey 43vol%	1R00599-1700	4390	t	2026-03-17 09:09:43.568546	2026-03-17 09:09:43.568548	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/WILD-TURKEY-LONGBRANCH-8Y-WHISKY-43-10L-w.jpg
22511	Heaven's Door TENNESSEE BOURBON Straight Bourbon Whiskey 42vol%	1R00596-1701	6400	t	2026-03-17 09:09:43.568554	2026-03-17 09:09:43.568556	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/HEAVENS-DOOR-TENNES.-WHISKY-42-070L-w.jpg
22512	The Pogues The Official Irish Whiskey of the Legendary Band 40%	1R00597-1702	3060	t	2026-03-17 09:09:43.568561	2026-03-17 09:09:43.568564	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/THE-POGUES-OFFIC.IRISH-WHISKY-40-070L-w-1.jpg
22513	Tomatin 12 Years Old Bourbon &amp; Sherry Casks 43vol% Giftbox	1R00598-1703	3990	t	2026-03-17 09:09:43.568569	2026-03-17 09:09:43.568571	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/TOMATIN-12Y-BOURSHERRY-CASK-WHISKY-43GB-070L-w.jpg
22514	Madirazza, Grk Herakles 2023	1V1622-3-1704	2350	t	2026-03-17 09:09:43.568576	2026-03-17 09:09:43.568578	43	VINO > BIJELA	
22515	Vinarija MI, Babić	1V1101-1705	5500	t	2026-03-17 09:09:43.568584	2026-03-17 09:09:43.568586	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/VINARIJA-MI-BABIC-2020-075L-w.jpg
22516	Radović, Dingač President	1V227-1706	4260	t	2026-03-17 09:09:43.568591	2026-03-17 09:09:43.568593	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/RADOVIC-DINGAC-PRESIDENT-075L-w.jpg
22517	Bodegas Mazas, Roble	1VN1359-1707	1395	t	2026-03-17 09:09:43.568599	2026-03-17 09:09:43.568601	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/mazas-roble-1VN1359.jpg
22518	Craigellachie 13 Years Old Speyside Single Malt 46vol% Giftbox	1R00594-1708	5590	t	2026-03-17 09:09:43.568606	2026-03-17 09:09:43.568608	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CRAIGELLACHIE-13-YO-SPEYS-WHISKY-46-GP-w.jpg
22519	Douglas Laing PREMIER BARREL Glenrothes 10 Years Old Single Malt 2009 46% Giftbox	1R00595-1709	7300	t	2026-03-17 09:09:43.568614	2026-03-17 09:09:43.568616	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/DOUGLAS-PREM.BAR-GLENROT.-10-YO-WHISKY-46-GP-070L-w.jpg
22520	Juan Gil, 18 Meses Blue label	1VN1358-1710	2568	t	2026-03-17 09:09:43.568621	2026-03-17 09:09:43.568623	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/JUAN-GIL-18-MESES-Monastrell-075-L-Blue-label-w.jpg
22521	Milan Budinski, Refošk OMO	1VOMOREF-1-1711	4400	t	2026-03-17 09:09:43.568629	2026-03-17 09:09:43.568631	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/Budinski-omo-refosk-w.jpg
22522	Yamazakura Fine Blended Whisky 40vol% Giftbox	1R7407-1712	4700	t	2026-03-17 09:09:43.568636	2026-03-17 09:09:43.568638	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/YAMAZAKURA-FINE-BLEN.-WHISKY-alk40GP-070L-w.jpg
22523	The Kraken Black Spiced rum 40vol%	1R607950-1713	2530	t	2026-03-17 09:09:43.568644	2026-03-17 09:09:43.568646	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/THE-KRAKEN-BLACK-SPICED-40-rum-070-L-w.jpg
22524	Pyrat XO Reserve Premium Caribbean rum 40vol% Giftbox	1R601012-1714	3790	t	2026-03-17 09:09:43.568651	2026-03-17 09:09:43.568653	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PYRAT-XO-RESERVE-CARIBBEAN-40-rum-070-L-w.jpg
22525	Barceló Imperial Ron Dominicano rum 38vol% Giftbox	1R604144-1715	2920	t	2026-03-17 09:09:43.568659	2026-03-17 09:09:43.568661	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/BARCELO-IMPERIAL-RON-DOMINIC.-38-GP-070-L-w.jpg
22526	Casa Castillo, Monastrell	1VN1360-1716	1500	t	2026-03-17 09:09:43.568666	2026-03-17 09:09:43.568668	92	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CASA-CASTILLO-MONASTRELL-075-L-w.jpg
22527	Casa Castillo, El Molar	1VN1361-1717	2300	t	2026-03-17 09:09:43.568674	2026-03-17 09:09:43.568676	64	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CASA-CASTILLO-EL-MOLAR-075-L-w.jpg
22528	Casa Castillo, Las Gravas	1VN1362-1718	6450	t	2026-03-17 09:09:43.568681	2026-03-17 09:09:43.568683	102	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CASA-CASTILLO-LAS-GRAVAS-075-L-w.jpg
22529	Casa Castillo, Las Gravas Magnum	1VN1365-1719	13200	t	2026-03-17 09:09:43.568688	2026-03-17 09:09:43.56869	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CASA-CASTILLO-LAS-GRAVAS-075-L-w.jpg
22530	Casa Castillo, Cuvée ´N´	1VN1364-1720	8361	t	2026-03-17 09:09:43.568696	2026-03-17 09:09:43.568698	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CASA-CASTILLO-CUVEE-N-075-L-w.jpg
22531	Casa Castillo, Pie Franco - Parker 99!	1VN1363-1721	15180	t	2026-03-17 09:09:43.568703	2026-03-17 09:09:43.568705	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CASA-CASTILLO-PIE-FRANCO-075-L-w.jpg
22532	Casa Castillo, Pie Franco Magnum - 99 Parker	1VN1366-1722	30100	t	2026-03-17 09:09:43.56871	2026-03-17 09:09:43.568712	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CASA-CASTILLO-PIE-FRANCO-075-L-w.jpg
22533	Chateau Jansenant rouge - čak 4 zlatne medalje!	1VN1253-1-1723	940	t	2026-03-17 09:09:43.568718	2026-03-17 09:09:43.56872	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/CHATEAU-JANSENANT-ROUGE-075-L-w.jpg
22534	GlenDronach 12 YO Original Single Malt 43vol% Giftbox	1R005003-1724	5840	t	2026-03-17 09:09:43.568725	2026-03-17 09:09:43.568727	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/GLENDRONACH-12-YO-WHISKY-alk-43-vol-GP-070-L-w.jpg
22535	Sinković, San Maruo Muškat Momjanski	1VN0152-1725	1049	t	2026-03-17 09:09:43.568733	2026-03-17 09:09:43.568735	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/SINKOVIC-MUSKAT-MOMJANSKI-PS-05-L.jpg
22536	Sinković, San Maruo Muškat Ruža	1VN0153-1726	1049	t	2026-03-17 09:09:43.56874	2026-03-17 09:09:43.568742	16	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/SINKOVIC-MUSKAT-RUZA-PS-05-L.jpg
22537	Hokkan Ougyoku Junmai Sake 0,30 L	1VN1357-1727	1009	t	2026-03-17 09:09:43.568748	2026-03-17 09:09:43.56875	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/HOKKAN-OUGYOKU-JUNMAI-SAKE-145-rizino-vino.jpg
22538	Hokkan Daiginjo Honjirushi Sakura Sake	1R18086-1728	2429	t	2026-03-17 09:09:43.568755	2026-03-17 09:09:43.568757	39	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/HOKKAN-DAIG.-HONJIR.-SAKURA-SAKE-158-vol-072-L.jpg
22539	Lustau, Pedro Ximenez 'SAN EMILIO' Solera Familiar sherry 0,75L	1VNSHERRY6-1729	2950	t	2026-03-17 09:09:43.568764	2026-03-17 09:09:43.568767	55	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY21.png
22540	Lustau, Brandy de Jerez Solera Reserva 40% vol.	1VNBRANDY3-1730	2250	t	2026-03-17 09:09:43.568772	2026-03-17 09:09:43.568774	52	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/brandy_lustau_solerea-reserva-w.jpg
22541	Vinarija MI, Terca	1V1103-1731	3290	t	2026-03-17 09:09:43.568779	2026-03-17 09:09:43.568782	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/VINARIJA-MI-TERCA-2017-075L-w.jpg
22542	Vinarija MI, Babić Forma	1V1102-1732	3500	t	2026-03-17 09:09:43.568787	2026-03-17 09:09:43.568789	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/VINARIJA-MI-BABIC-FORMA-2019-075L-w.jpg
22543	Darroze Unique Collection, Chateau de Gaube 1963 Bas-Armagnac	1R0531-1733	36764	t	2026-03-17 09:09:43.568795	2026-03-17 09:09:43.568797	28	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/DARROZE-CHATEAU-DE-GAUBE-1963-Bas-Armagnac-4550-070-L-w.jpg
22544	Darroze Unique Collection, Domaine la Poste 1973 Armagnac-Tenareze	1R0530-1734	19643	t	2026-03-17 09:09:43.568803	2026-03-17 09:09:43.568805	15	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/DARROZE-DOMAINE-LA-POSTE-1973-Armagnac-Tenareze-485-070-L.jpg
22545	Vinedos de Sonsierra, Duermealmas Rioja Vinedo Singular	1VN1367-1735	5176	t	2026-03-17 09:09:43.56881	2026-03-17 09:09:43.568812	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/VINEDOS-DE-SONSIERRA-DUERMEALMAS-075-L-w.jpg
22546	Perfume de Sonsierra Tinto Rioja Alta	1VN1369-1736	3517	t	2026-03-17 09:09:43.568818	2026-03-17 09:09:43.56882	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PERFUME-DE-SONSIERRA-075-L-w.jpg
22547	Vinedos de Sonsierra, El Rincón de los Galos Rioja Vinedo Singular	1VN1368-1737	5176	t	2026-03-17 09:09:43.568825	2026-03-17 09:09:43.568827	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/VINEDOS-DE-SONSIERRA-EL-RINCON-DE-LOS-GALOS-075-L-w.jpg
22548	Bodren, Cuvee Sweet 2018	1VN521126-1738	1254	t	2026-03-17 09:09:43.568833	2026-03-17 09:09:43.568835	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/BODREN-SWEET-CUVEE-IZBORNA-BERBA-050-L-w.jpg
22549	Pulltex, Vadičep elektronički Monza	1D10918800-1739	5973	t	2026-03-17 09:09:43.56884	2026-03-17 09:09:43.568842	8	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PULLTEX-ELEKT.VADICEP-MINI-MONZA-10918800-w.jpg
22550	Pulltex, Vadičep Puller	1D11994500-1740	730	t	2026-03-17 09:09:43.568861	2026-03-17 09:09:43.568864	20	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PULLTEX-VADICEP-PULLER-119945-w.jpg
22551	Pulltex, Dispenzer/Dozator za istakanje set od 2	1D11995201-1741	730	t	2026-03-17 09:09:43.568869	2026-03-17 09:09:43.568871	82	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PULLTEX-DISPENZER-119952-w2.jpg
22552	Pulltex, Posuda za hlađenje s gelom	1D10963100-1742	1860	t	2026-03-17 09:09:43.568877	2026-03-17 09:09:43.568879	11	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PULLTEX-POSUDA-ZA-HLADENJEGEL-crno-109631-w.jpg
22553	Pulltex, Vadičep Hybrid ecoBlis	1D11994601-1743	723	t	2026-03-17 09:09:43.568884	2026-03-17 09:09:43.568887	152	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PULLTEX-VADICEP-HYBRID-ecoBlis-119946-w.jpg
22554	Pulltex, Vadičep Pulltap's Classic	1D11990101-1744	723	t	2026-03-17 09:09:43.568892	2026-03-17 09:09:43.568894	19	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PULLTEX-PULLTAPS-VADICEP-CLASSIC-CRNI-EKOPAK-11990101-w.jpg
22555	Pulltex, Elektronski Wine Saver čep	1D10952400-1745	3300	t	2026-03-17 09:09:43.568899	2026-03-17 09:09:43.568902	13	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/PULLTEX-CEP-SAVER-STOPER-ELEKTRONSKI-109524-w.jpg
22556	Pulltex, Rashlađivač pjenušaca i vina 1,5L	1D10961700-1746	1858	t	2026-03-17 09:09:43.568907	2026-03-17 09:09:43.568909	6	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/1D10961700.jpg
22558	Pulltex, Vadičep Pulltap's Wood Efekt	1D10911500-1748	995	t	2026-03-17 09:09:43.568922	2026-03-17 09:09:43.568924	9	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/1D10911500.jpg
22559	Pulltex, Rashlađivač pjenušaca i vina sivi	1D10961200-1749	1301	t	2026-03-17 09:09:43.56893	2026-03-17 09:09:43.568932	26	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/PULLTEX-TORBA-ZA-HLADENJE-BOCA-siva-109612.jpg
22560	Pulltex, Dozator Jigger Inox	1D11794300-1750	783	t	2026-03-17 09:09:43.568937	2026-03-17 09:09:43.56894	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/1D11794300.jpg
22561	Pulltex, Torba nosač za 6 boca crna	1D00472601-1751	465	t	2026-03-17 09:09:43.568945	2026-03-17 09:09:43.568947	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/1D00472601.jpg
22562	Prgin, Babić Primošten Bucavac	1V8001-1-1752	3090	t	2026-03-17 09:09:43.568953	2026-03-17 09:09:43.568955	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/prgin-babic-w.jpg
22563	Popić, Grk Lumbarda	1V3558-1753	2124	t	2026-03-17 09:09:43.568961	2026-03-17 09:09:43.568963	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/POPIC-GRK-vino-075L-w.jpg
22564	Fides, Grk	1V554114-1754	2380	t	2026-03-17 09:09:43.568968	2026-03-17 09:09:43.56897	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/FIDES-GRK-075-l-w.jpg
22565	Bernobić, Malvazija Istarska Barrique	1VN6652-1755	1650	t	2026-03-17 09:09:43.568976	2026-03-17 09:09:43.568978	18	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/BERNOBIC-MALVAZIJA-BQ-075-L-w.jpg
22566	Penfolds, Grange Bin 95 2019	1VN509-3-1756	69890	t	2026-03-17 09:09:43.568983	2026-03-17 09:09:43.568985	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/12/penfolds-grange-w.jpg
22567	Vinarija Baraka, Prisbus Riserva Merlot-Cabernet Sauvignon	1V22003-1-1757	4950	t	2026-03-17 09:09:43.568991	2026-03-17 09:09:43.568993	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/BARAKA-PRISBUS-RISERVA-MERLOT-CS-075Lwww.jpg
22568	Vinarija Baraka, Memento Syrah	1V22004-1758	1990	t	2026-03-17 09:09:43.568998	2026-03-17 09:09:43.569	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/BARAKA-MEMENTO-SYRAH-075-Lw.jpg
22569	Radović, Dingač Reserve	1V00066-1759	2900	t	2026-03-17 09:09:43.569005	2026-03-17 09:09:43.569008	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/NEMA-FOTOGRAFIJE.jpg
22571	Radović, Kapi o zlata Pečeno vino desertno	1V229-1761	2640	t	2026-03-17 09:09:43.56902	2026-03-17 09:09:43.569023	19	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/RADOVIC-DESERTNO-Kapi-o-zlata-0375L-w.jpg
22572	Radović, Divinus Dingač	1V228-1762	6500	t	2026-03-17 09:09:43.569028	2026-03-17 09:09:43.56903	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/RADOVIC-DIVINUS-075L.jpg
22573	Dobravac, Allegro Muškat Žuti	1V6685-1763	2760	t	2026-03-17 09:09:43.569035	2026-03-17 09:09:43.569038	1	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/DOBRAVAC-ALLEGRO-muskat-zuti-05-L.jpg
22574	Duboković, Moja M	1V0404-1764	2490	t	2026-03-17 09:09:43.569043	2026-03-17 09:09:43.569045	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/DUBOKOVIC-MOJA-M-075-L.jpg
22575	Duboković, Don Petar	1V0416-1765	2700	t	2026-03-17 09:09:43.56905	2026-03-17 09:09:43.569052	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/DUBOKOVIC-DON-PETAR-0375-L.jpg
22576	Duboković, Medvid	1V0269-1766	6900	t	2026-03-17 09:09:43.569058	2026-03-17 09:09:43.56906	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/DUBOKOVIC-MEDVID-075-L.jpg
22577	Trapan, The One 2015	1V00692-1767	3990	t	2026-03-17 09:09:43.569065	2026-03-17 09:09:43.569067	7	VINO > CR(VE)NA	
22578	Trapan, Malvazija Istraditional	1V00693-1768	2481	t	2026-03-17 09:09:43.569072	2026-03-17 09:09:43.569075	18	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/TRAPAN-MALVAZIJA-ISTRADITONAL-075-w.jpg
22579	Prats &amp; Symington, Prazo de Roriz Douro	1VN1216-1769	1470	t	2026-03-17 09:09:43.56908	2026-03-17 09:09:43.569082	143	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/prats_symington_prazo_de_roriz-w.jpg
22580	Jacopo Poli, Grappa Sarpa Oro di Poli Barrique Big Mama 3l	1RN012-1770	12100	t	2026-03-17 09:09:43.569088	2026-03-17 09:09:43.56909	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/srpa-oro-big-mama-w.jpg
22581	Jacopo Poli, El Barili di Sassicaia 40vol% grappa + 2 čaše	1R060-1771	11480	t	2026-03-17 09:09:43.569096	2026-03-17 09:09:43.569099	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN009.jpg
22582	Jacopo Poli, Bassano Classica 40%vol Grappa	1RN071-1772	2320	t	2026-03-17 09:09:43.569104	2026-03-17 09:09:43.569106	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/J-POLI-BASSANO-CLASSICA-40vol-GRAPPA-050-L.jpg
22583	Jacopo Poli, Bassano 24 Carati Oro 40%vol grappa	1RN072-1773	2480	t	2026-03-17 09:09:43.569111	2026-03-17 09:09:43.569113	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/J-POLI-BASSANO-24-CARATI-ORO-40vol-grappa-070-L.jpg
22584	Jacopo Poli, Bassano 24 Carati Oro 40%vol grappa + 2 čaše	1RN073-1774	5820	t	2026-03-17 09:09:43.569119	2026-03-17 09:09:43.569121	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/J-POLI-GRAPPA-BASSANO-24-CARATI-ORO-2case40-vol-070-L.jpg
22585	Jacopo Poli, Cleopatra Moscato Oro Grappa	1RN020-1775	4100	t	2026-03-17 09:09:43.569126	2026-03-17 09:09:43.569129	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/J-POLI-CLEOPATRA-MOSCATO-DI-POLI-grappa-40vol-070L.jpg
22586	Jacopo Poli, Cleopatra Amarone Oro Grappa	1RN022-1776	4100	t	2026-03-17 09:09:43.569134	2026-03-17 09:09:43.569136	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/J-POLI-CLEOPATRA-AMARONE-DI-POLI-grappa-40vol-070L.jpg
22587	Jacopo Poli, Baby Duetto Metal PACK 2/1 40%vol grappa	1RN070-1777	1950	t	2026-03-17 09:09:43.569142	2026-03-17 09:09:43.569144	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/J-POLI-BABY-DUETTO-PACK-2-40vol-grappa-2-x-010-L.jpg
22588	Jacopo Poli, Grappa Amorosa di Settembre Magnum 1,5L	1RN100-1778	13180	t	2026-03-17 09:09:43.569149	2026-03-17 09:09:43.569151	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN019.jpg
22589	Jacopo Poli, Grappa Amorosa di Dicembre Magnum 1,5L	1RN101-1779	13180	t	2026-03-17 09:09:43.569157	2026-03-17 09:09:43.569159	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/J-POLI-AMOROSA-DI-DICEMBRE-Magnum-grappa-40-15-L-w.jpg
22590	Kracher, Auslese Cuvee	1VN1370-1780	1195	t	2026-03-17 09:09:43.569164	2026-03-17 09:09:43.569166	1	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/KRACHER-AUSLESE-CUVEE-0375-L-w.jpg
22557	Pulltex, Rashlađivač pjenušaca i vina crni	1D10961100-1747	1195	t	2026-03-17 09:09:43.568915	2026-06-30 15:10:24.158131	30	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/1D10961100.jpg
22591	Kracher, Spatlese Cuvee	1VN1022-1-1781	880	t	2026-03-17 09:09:43.569172	2026-03-17 09:09:43.569174	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/CASA-CASTILLO-CUVEE-N-075-L-ww.jpg
22592	Torčol Novo Mlado, extra djevičansko maslinovo ulje	1H00470-1782	1659	t	2026-03-17 09:09:43.569179	2026-03-17 09:09:43.569181	12	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/mladi-torcol-w.jpg
22593	Barceló Gran Añejo Ron Dominicano 37,5%	1R00521-1783	1950	t	2026-03-17 09:09:43.569198	2026-03-17 09:09:43.569201	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/BARCELO-GRAN-ANEJO-RON-DOMINICANO-375-rum-070-L-w.jpg
22594	A.H. Riise X.O. Reserve Ambre d'Or Reserve Rum 42% Giftbox	1R00523-1784	5550	t	2026-03-17 09:09:43.569207	2026-03-17 09:09:43.569209	13	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/A.H.RIISE-XO-RES-AMB-DOR-42-rum-GP-070-L-w.jpg
22595	A.H. Riise NON PLUS ULTRA Ambre d'Or Rum 42% Giftbox	1R00522-1785	9570	t	2026-03-17 09:09:43.569214	2026-03-17 09:09:43.569217	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/A.H.RIISE-NON-PLUS-ULT-AMB-DOR-42-rum-GP-070-L-w.jpg
22596	Glenfarclas 10 Years Old Highland Single Malt Scotch Whisky 40% Giftbox	1R00524-1786	3960	t	2026-03-17 09:09:43.569222	2026-03-17 09:09:43.569224	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/GLENFARCLAS-10YO-SM-SC-WHISKY-40-GP-070-L-w.jpg
22597	Glenfarclas 12 Years Old Highland Single Malt Scotch Whisky 43% Giftbox	1R00525-1787	5950	t	2026-03-17 09:09:43.569229	2026-03-17 09:09:43.569232	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/GLENFARCLAS-12YO-SM-SC-WHISKY-43-GP-10-L-w.jpg
22598	Caliterra, Chardonnay Reserva -15%/6 boca	VIVAT1788-1788	5178	t	2026-03-17 09:09:43.569237	2026-03-17 09:09:43.569239	23	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN191.png
22599	Tormaresca, Calafuria Negroamaro Rose -15%/6 boca	VIVAT1789-1789	8340	t	2026-03-17 09:09:43.569245	2026-03-17 09:09:43.569247	29	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/calafuria.jpg
22600	La Tunella, Pinot nero KARTON 6x0,75	VIVAT1790-1790	1540	t	2026-03-17 09:09:43.569254	2026-03-17 09:09:43.569256	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/09/LA-TUNELLA-PINOT-NERO-075-L-w.jpg
22601	La Tunella, RJGialla Ribolla Gialla -15%/6 boca	VIVAT1791-1791	9240	t	2026-03-17 09:09:43.569262	2026-03-17 09:09:43.569264	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/tunella-ribolla.jpg
22602	Cantina Iorio, Aglianico del Sannio -15%/6 boca	VIVAT1792-1792	5814	t	2026-03-17 09:09:43.569282	2026-03-17 09:09:43.569285	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/Iorio_aglianico-w.jpg
22603	Wynns, Coonawarra Shiraz 6x0,75	VIVAT1793-1793	1115	t	2026-03-17 09:09:43.569291	2026-03-17 09:09:43.569293	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/WYNNS-CWA-SHIRAZ-075-L-w.jpg
22604	Conde Vimioso Sommelier Edition Tinto -20%/6 boca	VIVAT1794-1794	8364	t	2026-03-17 09:09:43.569298	2026-03-17 09:09:43.569301	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/Falua-conde-vimioso-sommelier-edition-W.jpg
22605	Orimos Grande Reserve Rouge 6x0,75	VIVAT1795-1795	1050	t	2026-03-17 09:09:43.569306	2026-03-17 09:09:43.569308	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/orimos-cut-wb-2.jpg
22606	Glenfarclas 15 Years Old Highland Single Malt Scotch Whisky 46% Giftbox	1R00333-1796	8300	t	2026-03-17 09:09:43.569314	2026-03-17 09:09:43.569316	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/GLENFARCLAS-15YO-SM-SC-WHISKY-46-GP-070-w.jpg
22607	Glenfarclas 25 Years Old Highland Single Malt Scotch Whisky 43% Giftbox	1R0445-1797	23900	t	2026-03-17 09:09:43.569321	2026-03-17 09:09:43.569324	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/GLENFARCLAS-25-YO-WHISKY-43-alc-070L-w.jpg
22608	Fam Tuljac za bocu crni	FAM008115-1798	372	t	2026-03-17 09:09:43.569329	2026-03-17 09:09:43.569331	17	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/FAM008115.jpg
22609	Korlat, Cuvee Supreme	1V001389-1799	2790	t	2026-03-17 09:09:43.569337	2026-03-17 09:09:43.569339	62	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/KORLAT-SUPREME-CUVEE-075-L.jpg
22610	Bruichladdich ISLAY BARLEY Coull Rockside Island Mulindry Cruac Dunlossit 2013 50% Giftbox	1R00526-1800	7141	t	2026-03-17 09:09:43.569344	2026-03-17 09:09:43.569346	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/BRUICHLADDICH-ISLAY-BAR-2013-SM-SCOT-WHISKY-50-GP-070L-w.jpg
22611	Fam Drvena kutija za 6 boca	FAM708526-1801	2256	t	2026-03-17 09:09:43.569352	2026-03-17 09:09:43.569354	11	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/FAM708526.jpg
22612	Fam Drvena kutija za 3 boce	FAM708423-1802	2450	t	2026-03-17 09:09:43.56936	2026-03-17 09:09:43.569362	29	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/FAM-708523.jpg
22613	Fam Kutija karton za 3 boce uspravna bordo	FAM130022-1803	212	t	2026-03-17 09:09:43.569367	2026-03-17 09:09:43.569369	42	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/FAM130022.jpg
22614	Fam Privjesnica za bocu jelka	FAM410405-1804	53	t	2026-03-17 09:09:43.569375	2026-03-17 09:09:43.569377	53	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/FAM410405.jpg
22615	Fam košara karton smeđa	FAM270407-1805	338	t	2026-03-17 09:09:43.569382	2026-03-17 09:09:43.569384	6	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fam-007767.jpg
22616	Benvenuti, Malvazija	1V00016-1806	1295	t	2026-03-17 09:09:43.56939	2026-03-17 09:09:43.569392	35	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/benvenuti-malvazija-w.jpg
22617	Benvenuti, Rose	1V0433661-1807	1260	t	2026-03-17 09:09:43.569397	2026-03-17 09:09:43.569399	17	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/Benvenuti-rose.jpg
22618	Benvenuti, Caldierosso	1V6621418-1808	1380	t	2026-03-17 09:09:43.569404	2026-03-17 09:09:43.569407	23	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/Benvenuti-Caldirosso.jpg
22619	Nicolas Maillart, Platine Premier Cru Champagne Extra Brut Magnum	1ŠN909-1809	9890	t	2026-03-17 09:09:43.569412	2026-03-17 09:09:43.569414	12	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/N.-MAILLART-PLATINE-1er-CRU-CHAMPAGNE-EXTRA-BRUT-075-L.jpg
22620	Nicolas Maillart, Rose Grand Cru Champagne Extra Brut	1ŠN916-1810	5600	t	2026-03-17 09:09:43.569421	2026-03-17 09:09:43.569423	104	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/N.-MAILLART-ROSE-GRAND-CRU-CHAMPAGNE-EXTRA-BRUT-075-L.jpg
22621	Nicolas Maillart, Mont Martin Premier Cru Champagne Extra Brut	1ŠN917-1811	7034	t	2026-03-17 09:09:43.569428	2026-03-17 09:09:43.569431	40	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/N.-MAILLART-MONT-MARTIN-1er-CRU-CHAMPAGNE-EXTRA-BRUT-075-L.jpg
22622	Nicolas Maillart, Montchenot Premier Cru Champagne Extra Brut	1ŠN918-1812	6750	t	2026-03-17 09:09:43.569436	2026-03-17 09:09:43.569439	37	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/N.-MAILLART-MONTCHENOT-1-er-CRU-CHAMPAGNE-EXTRA-BRUT-075-L.jpg
22623	Nicolas Maillart, Jolivettes Grand Cru Champagne Extra Brut	1ŠN919-1813	10550	t	2026-03-17 09:09:43.569446	2026-03-17 09:09:43.569448	10	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/N.-MAILLART-JOLIVETTES-GRAND-CRU-CHAMPAGNE-EXTRA-BRUT-075-L.jpg
22625	Vino Brigo, Triangolo Grand Cru	1V8005-1815	2787	t	2026-03-17 09:09:43.569462	2026-03-17 09:09:43.569464	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/triangolo-gc-w.jpg
22626	Bulleit Bourbon 10 Years Old Frontier Whiskey 45,6%	1R00527-1816	3900	t	2026-03-17 09:09:43.569469	2026-03-17 09:09:43.569472	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/BULLEIT-BOURB-10-YO-FRONT-WHISKEY-456-070-L-w.jpg
22627	Glenglassaugh Highland Single Malt Pedro Ximenez Sherry Wood Finish 46% Giftbox	1R00528-1817	6351	t	2026-03-17 09:09:43.569477	2026-03-17 09:09:43.569479	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/GLENGLASS.-SM-PEDRO-XIME.-SHER.-FINISH-46-GP-070-L-w.jpg
22628	Glenglassaugh REVIVAL Highland Single Malt Scotch Whisky 46% Giftbox	1R00529-1818	4470	t	2026-03-17 09:09:43.569485	2026-03-17 09:09:43.569487	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/GLENGLASS.-REVIVAL-SM-WHISKY-46-GP-070-L-w.jpg
22629	Kilchoman MACHIR BAY Islay Single Malt Scotch Whisky 46% Giftbox	1R00530-1819	5574	t	2026-03-17 09:09:43.569492	2026-03-17 09:09:43.569494	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/KILCHOMAN-MACHIR-BAY-SM-WHISKY-46-GP-070-L-w.jpg
22630	Kilchoman SANAIG Islay Single Malt Scotch Whisky 46% Vol. Giftbox	1R00531-1820	6700	t	2026-03-17 09:09:43.5695	2026-03-17 09:09:43.569502	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/KILCHOMAN-SANAIG-SM-WHISKY-46-GP-070-L-w.jpg
22631	Tullamore D.E.W. Irish Whiskey 40%	1R00532-1821	2000	t	2026-03-17 09:09:43.569507	2026-03-17 09:09:43.569509	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/TULLAMORE-D.E.W.-WHISKY-4070-L-w.jpg
22632	Tullibardine 500 Sherry Finish Highland Single Malt Scotch Whisky 43% Giftbox	1R00538-1822	4181	t	2026-03-17 09:09:43.569515	2026-03-17 09:09:43.569517	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/TULLIBARDINE-500-SHERRY-FIN-SM-WHISKY-43-GP-070-L-w.jpg
22633	Tullibardine SOVEREIGN Highland Single Malt Scotch Whisky 43% Giftbox	1R00539-1823	3451	t	2026-03-17 09:09:43.569522	2026-03-17 09:09:43.569524	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/TULLIBARDINE-SOVEREIGN-SM-WHISKY-43-GP-070-L-w.jpg
22635	Gin Mare Mediterranean Gin Capri Limited Edition 42,7vol% 0,7L	1R00540-1825	5309	t	2026-03-17 09:09:43.569538	2026-03-17 09:09:43.56954	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/GIN-MARE-MEDITERRANEAN-GIN-CAPRI-427-070-L-w.jpg
22636	Domaine Fillon, Chablis 1er Cru Les Beauregards	1VN1371-1826	2854	t	2026-03-17 09:09:43.569545	2026-03-17 09:09:43.569547	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/FILLON-FILS-CHABLIS-1er-Cru-LES-BEAUREGARDS-075-L-w.jpg
22637	Graham's, Tawny Port 10 Y.O. 4,5L	1PN42-1827	24200	t	2026-03-17 09:09:43.569552	2026-03-17 09:09:43.569555	2	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/GRAHAMS-PORT-10-god.20vol-45-L-vino-w.jpg
22638	Josić, Rose	1V0375-1828	1280	t	2026-03-17 09:09:43.56956	2026-03-17 09:09:43.569562	36	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/j_rose.jpg
22639	Chateau Dereszla, Tokaji Forditas 2010	1V00259-1829	2750	t	2026-03-17 09:09:43.569567	2026-03-17 09:09:43.569569	9	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/CHATEAU-DERESZLATOKAJI-FORDITAS-w.jpg
22640	Chateau Dereszla, Tokaji 5 Puttonyos Aszu 2019	1V00252-1830	3690	t	2026-03-17 09:09:43.569575	2026-03-17 09:09:43.569577	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1V00252-w.jpg
22641	Taittinger, FIFA Wold Cup 2022 Brut Reserve Champagne 6x0,75	VIVAT1831-1831	5442	t	2026-03-17 09:09:43.569583	2026-03-17 09:09:43.569585	38	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/fifa-edition-2022_bottle-w.jpg
22642	Kozlović, Malvazija Selekcija	1V36621-1832	2750	t	2026-03-17 09:09:43.569591	2026-03-17 09:09:43.569593	55	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1V36621.jpg
22643	Zotter, "Chilli Bird‘s Eye" u tamnoj čokoladi 70 g	1H-16049-1833	431	t	2026-03-17 09:09:43.569598	2026-03-17 09:09:43.569601	24	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1H-16049-w.jpg
22644	La Braccesca, Santa Pia Vino Nobile di Montepulciano Riserva DOCG	1VN1372-1-1834	4170	t	2026-03-17 09:09:43.569606	2026-03-17 09:09:43.569608	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1VN1372.jpg
22645	Treml Punsch punč Apfelstrudel alko 27vol%	1PCH234-1835	1765	t	2026-03-17 09:09:43.569614	2026-03-17 09:09:43.569616	40	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Punsch.jpg
22646	Treml Punsch punč Limun-med alko 27vol%	1PCH233-1836	1930	t	2026-03-17 09:09:43.569622	2026-03-17 09:09:43.569624	6	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Punsch.jpg
22647	Aroma Ragusea, Beškotini s limunom	1H0000038-1837	498	t	2026-03-17 09:09:43.569629	2026-03-17 09:09:43.569631	29	OSTALO > ČOKOLADE I SLATKO	
22648	Aroma Ragusea, Beškotini naranča &amp; cimet sa krokantom	1H0000032-1838	540	t	2026-03-17 09:09:43.569637	2026-03-17 09:09:43.569639	8	OSTALO > ČOKOLADE I SLATKO	
22649	Aroma Ragusea, Beškotini čokolada	1H0000036-1839	498	t	2026-03-17 09:09:43.569644	2026-03-17 09:09:43.569646	40	OSTALO > ČOKOLADE I SLATKO	
22650	Aroma Ragusea, Beškotini smokva &amp; rogač sa krokantom	1H0000033-1840	540	t	2026-03-17 09:09:43.569652	2026-03-17 09:09:43.569654	1	OSTALO > ČOKOLADE I SLATKO	
22651	Kozlović, Malvazija Magnum 1,5L	1V03165-1841	3600	t	2026-03-17 09:09:43.569659	2026-03-17 09:09:43.569661	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/KOZMALV.jpg
22652	Aroma Ragusea, Arancini	1H000036-1842	436	t	2026-03-17 09:09:43.569666	2026-03-17 09:09:43.569669	34	OSTALO > ČOKOLADE I SLATKO	
22653	Aroma Ragusea, Limuncini	1H000039-1843	480	t	2026-03-17 09:09:43.569674	2026-03-17 09:09:43.569676	28	OSTALO > ČOKOLADE I SLATKO	
22654	Prunotto, Bansella Nizza Barbera Magnum	1VN1300-1844	4030	t	2026-03-17 09:09:43.569694	2026-03-17 09:09:43.569697	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1135.jpg
22655	Tenuta di Biserno, Il Pino di Biserno Magnum	1VN1141-5-1845	11000	t	2026-03-17 09:09:43.569703	2026-03-17 09:09:43.569705	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN271.jpg
22656	Tenuta di Biserno, Insoglio del Cinghiale	1VN272-1846	2770	t	2026-03-17 09:09:43.569711	2026-03-17 09:09:43.569713	211	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN272.png
22657	Monte Zovo, Caligo Rosso Veronese	1VN1374-1847	1350	t	2026-03-17 09:09:43.569718	2026-03-17 09:09:43.569721	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1VN1374.jpg
22658	Salvela, Rošinjola 0,25 L	1H00462-1848	1400	t	2026-03-17 09:09:43.569726	2026-03-17 09:09:43.569728	16	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/salvela-rosinjola-250-w.jpg
22659	Claude Chatelier VSOP Fine Cognac Giftbox	1R00542-1849	4890	t	2026-03-17 09:09:43.569733	2026-03-17 09:09:43.569736	12	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1R00542-w.jpg
22660	Jack Daniel's MASTER DISTILLER Series No. 4 Limited Edition 43% Giftbox	1R00543-1850	8693	t	2026-03-17 09:09:43.569741	2026-03-17 09:09:43.569743	36	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1R00543-w.jpg
22661	Jack Daniel's MASTER DISTILLER Series No. 6 Limited Edition Giftbox	1R00544-1851	4247	t	2026-03-17 09:09:43.569748	2026-03-17 09:09:43.569751	40	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1R00544-w.jpg
22662	Jameson BLACK BARREL Triple Distilled Irish Whiskey Giftbox	1R00569-1852	3889	t	2026-03-17 09:09:43.569756	2026-03-17 09:09:43.569758	37	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1R00569-w.jpg
22663	Monte Zovo, Lugana Le Civaie Terralbe Doc Riserva 2019	1VN1375-1853	2600	t	2026-03-17 09:09:43.569763	2026-03-17 09:09:43.569766	15	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1VN1375-w.jpg
22664	Benvenuti, Santa Elisabetta 2021	1V56563221-3-1854	6890	t	2026-03-17 09:09:43.569771	2026-03-17 09:09:43.569773	80	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/Benvenuti-Santa-Elisabetta-w.jpg
22665	Masi, Serego Alighieri Monte Piazzo Valpolicella Classico Superiore -15%/6 boca	1VN864-1-1855	14178	t	2026-03-17 09:09:43.56978	2026-03-17 09:09:43.569782	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/monte-piazzo-15.jpg
22666	Medea Adventski set 5+1gratis	VIVAT1856-1856	30400	t	2026-03-17 09:09:43.569787	2026-03-17 09:09:43.56979	21	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/medea-advent-set.jpg
22667	Košutić, Noel Extra Brut	1Š15521-1857	1890	t	2026-03-17 09:09:43.569795	2026-03-17 09:09:43.569798	32	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1S15521-w.jpg
22668	San Marzano, F Negroamaro Salento IGP	1VN1093-3-1858	2588	t	2026-03-17 09:09:43.569803	2026-03-17 09:09:43.569805	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1VN1093-2-w.jpg
22669	Aura, Mliječna čokolada s bademom, grožđicama i sezamom	1H50051-1859	750	t	2026-03-17 09:09:43.56981	2026-03-17 09:09:43.569813	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/Mlijecna-mix-grozdice-badem-sezam-120-g-w.jpg
22670	Aura, Mliječna čokolada s lješnjakom, brusnicama i narančom	1H50050-1860	750	t	2026-03-17 09:09:43.569818	2026-03-17 09:09:43.56982	15	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/Mlijecna-mix-cokolada-brusnice-ljesnjak-naranca-120-g-w.jpg
22671	Aura, Bijela čokolada s bademom, jagodama i malinom	1H50054-1861	750	t	2026-03-17 09:09:43.569825	2026-03-17 09:09:43.569827	15	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/Bijela-mix-cokolada-jagode-badem-malina-120-g-w.jpg
22672	Aura, Tamna čokolada s narančom, jagodama i crvenim paprom	1H50052-1862	750	t	2026-03-17 09:09:43.569833	2026-03-17 09:09:43.569835	4	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/Tamna-mix-cokolada-jagode-narance-crveni-papar-120-g-w.jpg
22673	Santa Cristina, Le Maestrelle	1VN467-1863	1030	t	2026-03-17 09:09:43.56984	2026-03-17 09:09:43.569842	122	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN467.jpg
22674	Aura, Bijela čokolada s jabukom, lješnjakom i chia sjemenkama	1H00054-1864	750	t	2026-03-17 09:09:43.569847	2026-03-17 09:09:43.56985	16	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/Bijela-mix-cokolada-jabuka-ljesnjak-chia-120-g-w.jpg
22675	Aura, Tamna čokolada s bademom, limunom i jabukom	1H50053-1865	750	t	2026-03-17 09:09:43.569855	2026-03-17 09:09:43.569857	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/Tamna-mix-cokolada-limun-jabuka-badem-120-g-w.jpg
22676	Košutić, Škrlet Familia	1VN47147-1866	1760	t	2026-03-17 09:09:43.569863	2026-03-17 09:09:43.569865	31	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/1VN47147-w.jpg
22677	Košutić, Pinot bijeli Familia	1VN4745521-1867	836	t	2026-03-17 09:09:43.56987	2026-03-17 09:09:43.569873	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/1VN4745521.jpg
22678	Rizman, Primus Tribidrag	1V04794-1868	2149	t	2026-03-17 09:09:43.569878	2026-03-17 09:09:43.56988	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/rizman-tribidrag-w.jpg
22679	Kopjar, Muškat žuti	1V00889-1869	1149	t	2026-03-17 09:09:43.569885	2026-03-17 09:09:43.569888	39	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/KOPJAR-MUSKAT-ZUTI-W.jpg
22680	The Macallan 18 Years Old DOUBLE CASK 43% Giftbox	1R00536-1870	44660	t	2026-03-17 09:09:43.569893	2026-03-17 09:09:43.569895	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/1R00536-w.jpg
22681	Signatory Vintage TEANINICH 13 Years Old The Un-Chillfiltered 2008 46% Giftbox	1R00601-1871	5500	t	2026-03-17 09:09:43.5699	2026-03-17 09:09:43.569903	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/1R00601-w.jpg
22682	Kopjar, Blanc de Blancs Brut Organic	1Š0801-1872	1749	t	2026-03-17 09:09:43.569908	2026-03-17 09:09:43.56991	9	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/KOPJAR-BL-D-BLCS.jpg
22683	Kopjar, Rose Brut Organic	1Š0802-1873	1810	t	2026-03-17 09:09:43.569915	2026-03-17 09:09:43.569917	16	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/KOPJAR-ROSE-ORGANIC-W.jpg
22684	Kopjar, Muscat Demisec	1Š0800-1874	1425	t	2026-03-17 09:09:43.569923	2026-03-17 09:09:43.569925	16	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/KOPJAR-MUSCAT-ORGANIC-W.jpg
22685	Dalmatian Dog, Pošip	1VN0897-1875	1249	t	2026-03-17 09:09:43.56993	2026-03-17 09:09:43.569932	11	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/dalmatian-dog-posip-w.jpg
22686	Tomac, Blanc de Noirs Brut Nature	1Š8055-1876	2570	t	2026-03-17 09:09:43.569937	2026-03-17 09:09:43.56994	22	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/1S8055.jpg
22687	Bodegas Mazas, Roble Magnum 2020	1VN1376-1877	3450	t	2026-03-17 09:09:43.569945	2026-03-17 09:09:43.569947	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/mazas-roble-w.jpg
22688	Bodegas Mazas, Crianza	1VN1377-1878	1830	t	2026-03-17 09:09:43.569952	2026-03-17 09:09:43.569966	92	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/mazas-crianza-1VN1377.jpg
22689	Spiegelau, Definition Digestive Set od 6 čaša	1350326-1879	11500	t	2026-03-17 09:09:43.569973	2026-03-17 09:09:43.569975	3	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/spiegelau-definition-digestive-w.jpg
22690	Spiegelau, Perfect Serve Collection Shot Set od 4 čaše	4500170-1880	2350	t	2026-03-17 09:09:43.56998	2026-03-17 09:09:43.569983	24	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/Spiegelau-perfect-serve-shot-4500170-w.jpg
22691	Spiegelau, Defintion karaf s čepom	1350157-1881	11950	t	2026-03-17 09:09:43.569988	2026-03-17 09:09:43.56999	2	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/spiegelau-definition-carafe-2-w.jpg
22692	Spiegelau, Style White Wine Set 4 čaše	4670182-1882	2750	t	2026-03-17 09:09:43.569996	2026-03-17 09:09:43.569999	13	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/4670182__Style_WhiteWine-w.jpg
22693	Spiegelau, Style Tumbler Set 4 čaše	4670184-1883	2750	t	2026-03-17 09:09:43.570007	2026-03-17 09:09:43.57001	5	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/4670184_Style_Tumbler_S-w.jpg
22694	Spiegelau, Style Burgundy Set 4 čaše	4670180-1884	2750	t	2026-03-17 09:09:43.570016	2026-03-17 09:09:43.570018	1	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/4670180_Style_Burgundy-w.jpg
22695	Spiegelau, Special Glasses 4460177 Whisky Snifter SET/4 čaša	4460177-1885	3500	t	2026-03-17 09:09:43.570024	2026-03-17 09:09:43.570026	2	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/spiegelau-snifter-set-4-w.jpg
22697	Nachtmann, Highland Longdrink set od 4 čaše	97784-1887	2390	t	2026-03-17 09:09:43.570039	2026-03-17 09:09:43.570042	4	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	
22698	Spiegelau, Perfect Serve Collection 4500177 Perfect S.O.F. SET/4 čaša	4500177-1888	2350	t	2026-03-17 09:09:43.570048	2026-03-17 09:09:43.570052	7	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	
22699	Spiegelau, Perfect Serve Collection Perfect Longdrink SET/4 čaše	4500179-1889	2350	t	2026-03-17 09:09:43.57006	2026-03-17 09:09:43.570063	21	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/4500179-ps-londrink-set-w.jpg
22700	Spiegelau, Willsberger Collection Anniversary Whisky SET/4 čaše	1416186-1890	4995	t	2026-03-17 09:09:43.57007	2026-03-17 09:09:43.570073	31	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2023/01/Willsberger_Anniversary_Whisky-set-w.jpg
22701	R&amp;J Boutique Winery M. Jalšovec, Invictus	1VN0453-1891	1795	t	2026-03-17 09:09:43.570081	2026-03-17 09:09:43.570084	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/invictus.jpg
22702	Coronica, Grabar	1V0262-1892	2780	t	2026-03-17 09:09:43.570092	2026-03-17 09:09:43.570095	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/coronica-grabar-w.jpg
22703	Loch Lomond SIGNATURE Blended Scotch Whisky 40% Vol. Giftbox	1R00545-1893	1720	t	2026-03-17 09:09:43.570103	2026-03-17 09:09:43.570106	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/1R00545-w.jpg
22704	Spiegelau Lifestyle Dekanter Set s 2 čaše	4450193-1894	8950	t	2026-03-17 09:09:43.570114	2026-03-17 09:09:43.570117	19	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/decanter-set-lifestyle-spiegelau-w.jpg
22705	Nachtmann, Aspen Whisky Set s 2 čaše	90024-1895	13000	t	2026-03-17 09:09:43.570125	2026-03-17 09:09:43.570127	12	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/nachtmann-set-aspen-90024-w.jpg
22706	Nachtmann, Vivendi Dekanter	59518-1896	3950	t	2026-03-17 09:09:43.570133	2026-03-17 09:09:43.570151	32	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/nachtmann-vivendi-59518-w.jpg
22707	Nachtmann, Vivendi Dekanter	54880-1897	5900	t	2026-03-17 09:09:43.570189	2026-03-17 09:09:43.570194	27	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/nachtmann-vivendi-54880-w.jpg
22708	Nachtmann, Vivendi Dekanter Set sa 4 čaše	93605-1898	6500	t	2026-03-17 09:09:43.570204	2026-03-17 09:09:43.570207	24	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/93605_BOX_Vivendi_Premium_PU5_DecanterSet_www.jpg
22709	Dalmatian Dog, Babić	1VN0896-1899	1029	t	2026-03-17 09:09:43.570216	2026-03-17 09:09:43.570219	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/dalmatian-dog-babic-w.jpg
22710	Gracin, Kontra	1VN0267-1900	2790	t	2026-03-17 09:09:43.570227	2026-03-17 09:09:43.57023	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/kontra.jpg
22711	Kutjevo, Koria Cuvée 2017	1V28008-1901	5150	t	2026-03-17 09:09:43.570238	2026-03-17 09:09:43.570242	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/kutjevo-koria-cuvee-w.jpg
22712	Masi Tupungato, Passo Doble	1VN68-1902	1168	t	2026-03-17 09:09:43.570249	2026-03-17 09:09:43.570252	81	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/02/masi-passo-doble-w.jpg
22713	Alianca, Casal Mendes Sangria	1VN1380-1903	495	t	2026-03-17 09:09:43.57026	2026-03-17 09:09:43.570263	48	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/casal-mendes-sangria-w.jpg
22714	Castello della Sala, Cervaro della Sala Umbria	1VN754-10-1904	6500	t	2026-03-17 09:09:43.570268	2026-03-17 09:09:43.57027	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/cervaro-della-sala-.jpg
22715	Loimer, Extra Brut Reserve	1ŠN951-1905	2500	t	2026-03-17 09:09:43.570276	2026-03-17 09:09:43.570278	2	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1SN951-loimer-w.jpg
22716	Alianca, XO 10 Anos Brandy 40%vol	1R00108-1906	6500	t	2026-03-17 09:09:43.570283	2026-03-17 09:09:43.570286	5	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/alianca-xo-10-w.jpg
22717	Guado al Tasso, Vermentino DOC	1VN484-1907	1830	t	2026-03-17 09:09:43.570291	2026-03-17 09:09:43.570293	189	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/guado-al-tasso-vermentino-w.jpg
22718	Šoškić Haiku 4	1V7884-1908	5000	t	2026-03-17 09:09:43.570299	2026-03-17 09:09:43.570301	5	VINO > ORANGE/MACERIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/haiku-4w.jpg
22719	Wieninger, Wiener Trilogie	1VN584-3-1909	1750	t	2026-03-17 09:09:43.570306	2026-03-17 09:09:43.570309	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/trilogie-w.jpg
22720	Mayer am Pfarrplatz, Asia Cuvee	1VN1382-2-1910	1300	t	2026-03-17 09:09:43.570314	2026-03-17 09:09:43.570316	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/Mayer-am-Pf-Asia-Cuvee-w.jpg
22721	Mayer am Pfarrplatz, Sekt Brut	1ŠN953-1911	1380	t	2026-03-17 09:09:43.570322	2026-03-17 09:09:43.570324	126	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/mayer-sekt-brut-w.jpg
22722	Mayer am Pfarrplatz, Rose Brut	1ŠN954-1912	1500	t	2026-03-17 09:09:43.570329	2026-03-17 09:09:43.570331	89	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/mayerFraulein-Rose-brut-w.jpg
22723	Wieninger, Merlot Grand Select	1VN1379-1913	3800	t	2026-03-17 09:09:43.570337	2026-03-17 09:09:43.570339	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/wieninger-gs-merlot-w.jpg
22724	Blasius, Kräuterbitter 32vol%	1R00342-1914	1595	t	2026-03-17 09:09:43.570344	2026-03-17 09:09:43.570347	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00342-w.jpg
22725	Suntory Whisky THE CHITA Single Grain Japanese Whisky 43% 0,7l Giftbox	1R00349-1915	5780	t	2026-03-17 09:09:43.570352	2026-03-17 09:09:43.570354	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00349-w.jpg
22726	Michter's US*1 Small Batch Original Sour Mash Whiskey 43% Vol. 0,7l	1R00348-1916	7230	t	2026-03-17 09:09:43.57036	2026-03-17 09:09:43.570362	25	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00348-w.jpg
22727	Lagavulin 8 Years Old Single Malt Whisky 48% Giftbox	1R00347-1917	7780	t	2026-03-17 09:09:43.570369	2026-03-17 09:09:43.570371	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00347-w.jpg
22728	Puchheimer Marillen Schnaps Marelica 35%	1R00346-1918	1730	t	2026-03-17 09:09:43.570377	2026-03-17 09:09:43.570379	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00346-w.jpg
22729	Dictador RIMA 1 21 Years Old AMERICAN OAK Cask Vintage 2001 44% 0,7l Giftbox	1R00345-1919	11150	t	2026-03-17 09:09:43.570387	2026-03-17 09:09:43.570389	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00345-w.jpg
22730	Woodford Reserve Kentucky Straight WHEAT Whiskey 45,2%	1R00352-1920	4650	t	2026-03-17 09:09:43.570395	2026-03-17 09:09:43.570397	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00352-w.jpg
22731	The Dalmore 12 Years Old SHERRY CASK SELECT 43% Giftbox	1R00351-1921	9850	t	2026-03-17 09:09:43.570404	2026-03-17 09:09:43.570407	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00351-w.jpg
22732	Teeling Whiskey SINGLE MALT Irish Whiskey 46% Giftbox	1R00350-1922	4440	t	2026-03-17 09:09:43.570413	2026-03-17 09:09:43.570415	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00350-w.jpg
22771	Bouvet Brut Blanc 1851 "Half" 0,375	1ŠN201-1961	860	t	2026-03-17 09:09:43.570791	2026-03-17 09:09:43.570793	9	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/brut-1851.jpg
22733	Dictador 20 Years Old Distillery Icon Reserve alk. 40% Giftbox	1R00422-1-1923	5650	t	2026-03-17 09:09:43.570423	2026-03-17 09:09:43.570425	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/Dictador-20-Years-Old-Distillery-Icon-Reserve-40-Vol.-07lW.jpg
22734	Charly's Eierliker 14vol% 0,7l	1R00343-1924	1100	t	2026-03-17 09:09:43.570431	2026-03-17 09:09:43.570433	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00343-w.jpg
22735	Spiegelau, Milano Longdrink SET/4 čaše	2730179-1925	1924	t	2026-03-17 09:09:43.570441	2026-03-17 09:09:43.570444	1	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	
22736	Spiegelau, Milano Tumbler SET/4 čaše	2730176-1926	1924	t	2026-03-17 09:09:43.57045	2026-03-17 09:09:43.570452	30	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	
22737	Zoro, Malvasija dubrovačka	1VN90056-2-1927	1749	t	2026-03-17 09:09:43.570459	2026-03-17 09:09:43.570461	49	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/zoro-malvasija-w.jpg
22738	Spiegelau Style Dekanter / Carafe 1 lit	4670157-1928	3300	t	2026-03-17 09:09:43.570469	2026-03-17 09:09:43.570471	33	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/4670157-W.jpg
22739	Rossbacher Der Starke Kräuter 32% Vol. 0,7l	1R00344-1929	1690	t	2026-03-17 09:09:43.570478	2026-03-17 09:09:43.570481	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1R00344-w.jpg
22740	Studio by Miraval Rose Magnum	1VN1193-6-1930	2830	t	2026-03-17 09:09:43.570493	2026-03-17 09:09:43.570495	23	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/STUDIO-BY-MIRVAL-1500-W.jpg
22741	Perrin, Vacqueyras Les Christins	1VN825-1931	1990	t	2026-03-17 09:09:43.570502	2026-03-17 09:09:43.570504	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/PERRIN-LES-CHRISTINS-VACQUEYRAS-ROUGE-075L.jpg
22742	Perrin, Cotes du Rhone Reserve Rose	1VN1044-1932	1050	t	2026-03-17 09:09:43.57051	2026-03-17 09:09:43.570513	9	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/Famille_Perrin_Reserve_Rose.jpg
22743	Domodo, Primitivo Puglia	1VN1383-1933	600	t	2026-03-17 09:09:43.570518	2026-03-17 09:09:43.57052	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/domodo-primitivo.jpg
22744	Milas, Blatina	1VN212672-1934	1300	t	2026-03-17 09:09:43.570526	2026-03-17 09:09:43.570529	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/milas-blatina-w.jpg
22745	Milas, Merlot Barrique	1VN212673-1935	4130	t	2026-03-17 09:09:43.570536	2026-03-17 09:09:43.570538	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/milas-merlot-barrique-w.jpg
22746	Milas, Žilavka	1VN212671-1936	1190	t	2026-03-17 09:09:43.570545	2026-03-17 09:09:43.570547	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/milas-zilavka-w.jpg
22747	Testament, Babić	1R05201-1937	1590	t	2026-03-17 09:09:43.570554	2026-03-17 09:09:43.570557	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/Testament-Babic.jpg
22748	Matošin, Babić Zero	1V00589-1938	2450	t	2026-03-17 09:09:43.570563	2026-03-17 09:09:43.570565	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/matosin-babic-zero-w.jpg
22749	Josef Fischer, Gruner Veltliner Federspiel Wachau	1VN1384-1939	1370	t	2026-03-17 09:09:43.570575	2026-03-17 09:09:43.570577	83	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/J.FISCHER-GRUN-VELT-FEDER-WACHAU-W.jpg
22750	Josef Fischer, Gruner Veltliner Federspiel Ruhrsdorf	1VN1385-1940	1760	t	2026-03-17 09:09:43.570584	2026-03-17 09:09:43.570586	47	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1VN1385.jpg
22751	Josef Fischer, Gruner Veltliner Ried Kreuzberg Smaragd	1VN1386-1941	3490	t	2026-03-17 09:09:43.570592	2026-03-17 09:09:43.570594	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/J.FISCHER-GRUNER-VELTLI.-KREUZ.SMARAGD-075-L-vino.jpg
22752	Aura, Liker Gorki Pelin 30,8%	1R2050-1942	2600	t	2026-03-17 09:09:43.570601	2026-03-17 09:09:43.570603	80	DESTILATI	
22753	Glen Grant THE MAJOR'S RESERVE Single Malt Scotch Whisky 40% 0,7l Giftbox	1R00353-1943	2390	t	2026-03-17 09:09:43.570611	2026-03-17 09:09:43.570613	28	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1R00353-w.jpg
22754	Spiegelau, Definition White Wine set od 6 čaša	1350302-1944	11500	t	2026-03-17 09:09:43.570621	2026-03-17 09:09:43.570623	121	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1350102.jpg
22755	Spiegelau, Definition Water Tumbler set od 4 čaše	1350175-1945	4500	t	2026-03-17 09:09:43.57063	2026-03-17 09:09:43.570632	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1350175-w.jpg
22756	Spiegelau, Definition Softdrink Tumbler set od 4 čaše	1350179-1946	4500	t	2026-03-17 09:09:43.570639	2026-03-17 09:09:43.570641	14	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/1350179-w.jpg
22757	Spiegelau, Lifestyle Coloured Tumbler Ocean set od 2 čaše	4453165-1947	2500	t	2026-03-17 09:09:43.570648	2026-03-17 09:09:43.57065	57	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/4453165-w.jpg
22758	Spiegelau, Lifestyle Coloured Tumbler Leaf set od 2 čaše	4453465-1948	2500	t	2026-03-17 09:09:43.570657	2026-03-17 09:09:43.570659	1	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/4453465-w.jpg
22759	Henri Bourgeois, JS-150 Pouilly Fume	1VN1387-1949	3490	t	2026-03-17 09:09:43.570665	2026-03-17 09:09:43.570668	2	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/H.BOURGEOIS-JS-150-POUILLY-FUME-w.jpg
22760	Henri Bourgeois, Les Baronnes Sancerre Rouge	1VN1388-1950	2250	t	2026-03-17 09:09:43.570692	2026-03-17 09:09:43.570696	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1VN1388.jpg
22761	Henri Bourgeois, Petit Bourgeois Sauvignon Blanc Magnum	1VN1248-1951	2590	t	2026-03-17 09:09:43.570702	2026-03-17 09:09:43.570705	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN817.jpg
22762	Henri Bourgeois, Sancerre Blanc "Jadis"	1VN1389-1952	4750	t	2026-03-17 09:09:43.570711	2026-03-17 09:09:43.570713	32	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/HENRI-JADIS.jpg
22763	Matuško, Postup	1V00378-1953	1620	t	2026-03-17 09:09:43.570719	2026-03-17 09:09:43.570722	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/matusko-postup-w.jpg
22764	Testament, Babić Opolo Brut	1Š552214-1954	2190	t	2026-03-17 09:09:43.570729	2026-03-17 09:09:43.570731	37	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/opolo-babic-w.jpg
22765	Tormaresca, Calafuria Negroamaro Rose 2025	1VN566-4-1955	1390	t	2026-03-17 09:09:43.570738	2026-03-17 09:09:43.57074	326	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/calafuria.jpg
22766	Kadum, Malvazija	1VN52001-1956	1249	t	2026-03-17 09:09:43.570747	2026-03-17 09:09:43.570749	108	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/kadum-malvazija-ww.jpg
22767	San Marzano, Susco Susumaniello Salento IGP	1VN1390-1957	1550	t	2026-03-17 09:09:43.570756	2026-03-17 09:09:43.570758	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/susco-w.jpg
22768	San Marzano, Amai Susumaniello Rosé Salento IGP	1VN1391-1958	1000	t	2026-03-17 09:09:43.570764	2026-03-17 09:09:43.570766	34	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/amai-rose-w.jpg
22769	Miloš, Plavac	1V0194-2-1959	1340	t	2026-03-17 09:09:43.570774	2026-03-17 09:09:43.570776	46	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/milos-plavac-w.jpg
22770	Miloš, Stagnum 2016	1V0180-6-1960	7400	t	2026-03-17 09:09:43.570782	2026-03-17 09:09:43.570784	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/stagnum.jpg
22772	Olynthia, Maslinovo ulje extradjevičansko s timjanom 0,25	1H100219-1962	1000	t	2026-03-17 09:09:43.5708	2026-03-17 09:09:43.570802	6	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1H100219-W.jpg
22773	Olynthia, Maslinovo ulje extradjevičansko s ružmarinom 0,25	1H100218-1963	1000	t	2026-03-17 09:09:43.570808	2026-03-17 09:09:43.570811	22	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1H100218-W.jpg
22774	Cantina Girlan, Pinot Noir Riserva "FLORA"	1VN1345-1964	2995	t	2026-03-17 09:09:43.570817	2026-03-17 09:09:43.570819	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/GIRLAN-FLORA-PINOT-NOIR-RES-w.jpg
22775	Bastian, Rose	1VN0401-1965	1500	t	2026-03-17 09:09:43.570826	2026-03-17 09:09:43.570828	22	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/bastian-rose.jpg
22776	Bastian, Malvazija Istarska	1VN0400-1966	1248	t	2026-03-17 09:09:43.570834	2026-03-17 09:09:43.570837	31	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/bastian-malvazija.jpg
22777	Cantina Girlan, Gewurztraminer	1VN1392-1967	1590	t	2026-03-17 09:09:43.570843	2026-03-17 09:09:43.570845	45	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1VN1392-w.jpg
22778	Cantina Girlan, Pinot noir "PATRICIA" Magnum	1VN1265-1968	4200	t	2026-03-17 09:09:43.570851	2026-03-17 09:09:43.570853	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-patricia-pnW.jpg
22779	Cantina Girlan, Pinot Noir Riserva "FLORA" Magnum	1VN1393-1969	6370	t	2026-03-17 09:09:43.570859	2026-03-17 09:09:43.570861	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/GIRLAN-FLORA-PINOT-NOIR-RES-w.jpg
22780	Allart &amp; Fils, Brut Rose Champagne	1ŠN503-1970	3880	t	2026-03-17 09:09:43.570867	2026-03-17 09:09:43.570869	30	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1SN503-w.jpg
22781	Dalwhinnie 15 Years Old Highland Single Malt Scotch Whisky 43% Giftbox	1R00354-1971	5350	t	2026-03-17 09:09:43.570875	2026-03-17 09:09:43.570877	26	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1R00354-w.jpg
22782	Dalwhinnie The Distillers Edition 2021 Double Matured 2006 43% Giftbox	1R00355-1972	7995	t	2026-03-17 09:09:43.570882	2026-03-17 09:09:43.570897	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1R00355-w.jpg
22783	Lagavulin 16 Years Old Single Malt Whisky 43% Giftbox	1R522152-1973	10500	t	2026-03-17 09:09:43.570903	2026-03-17 09:09:43.570905	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/lagavulin-16-yo.jpg
22784	Nikka Super Nikka Whisky Rare Old 43% Giftbox	1R00356-1974	4600	t	2026-03-17 09:09:43.57091	2026-03-17 09:09:43.570913	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/nikka-super-rareold-w.jpg
22785	Tenjaku Pure Malt Whisky 43% Giftbox	1R00357-1975	3550	t	2026-03-17 09:09:43.570918	2026-03-17 09:09:43.57092	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/tenjaku.jpg
22786	The Macallan 12 Years Old DOUBLE CASK Whisky Gift box	1R00856-1976	8800	t	2026-03-17 09:09:43.570925	2026-03-17 09:09:43.570927	12	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/The-Macallan-12-Years-Old-DOUBLE-CASK-Whisky-Gift-w.jpg
22787	The Chocolate Block, Boekenhoutskloof Magnum	1VN1394-1977	7100	t	2026-03-17 09:09:43.570933	2026-03-17 09:09:43.570935	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/The-Chocolate-Block1.jpg
22788	Domaine Laroche, Chablis Premier Cru L'Essence des Climats	1VN1395-3-1978	3400	t	2026-03-17 09:09:43.570941	2026-03-17 09:09:43.570944	196	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/laroche-chablis-essence.jpg
22789	Jako vino, Stina Plavac Mali Majstor Magnum	1V02578-1979	8500	t	2026-03-17 09:09:43.570951	2026-03-17 09:09:43.570954	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0577-1.png
22790	Ronco Servero, Merlot Riserva Artiul	1VN735-1980	5090	t	2026-03-17 09:09:43.570962	2026-03-17 09:09:43.570965	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/RONCO-SEVERO-ARTIUL-MERLOT-W.jpg
22791	Monte Zovo, Amarone della Valpolicella Magnum	1VN1144-1981	7990	t	2026-03-17 09:09:43.570974	2026-03-17 09:09:43.570977	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN503.png
22792	Zotter, Limun i marcipanska kadulja u tamnoj čokoladi 70 g	1H-16625-1982	540	t	2026-03-17 09:09:43.570985	2026-03-17 09:09:43.570988	5	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/1H-16625.jpg
22793	Zotter, Mak i trešnja u mliječnoj čokoladi 70 g	1H-16629-1983	490	t	2026-03-17 09:09:43.570996	2026-03-17 09:09:43.570999	36	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/1H-16629.jpg
22794	Chateau du Cedre, Cedre Heritage Malbec	1VN1396-1984	990	t	2026-03-17 09:09:43.571006	2026-03-17 09:09:43.571009	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/Chateau-du-Cedre-Heritage-Malbec-w.jpg
22795	Chateau du Cedre, Malbec	1VN1397-1985	1950	t	2026-03-17 09:09:43.571014	2026-03-17 09:09:43.571016	27	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/Chateau-du-Cedre-Malbec-w.jpg
22796	Chateau du Cedre, Malbec Magnum	1VN1398-1986	4250	t	2026-03-17 09:09:43.571022	2026-03-17 09:09:43.571024	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/Chateau-du-Cedre-Malbec-w.jpg
22797	Chateau du Cedre, Le Cedre Malbec	1VN1399-1987	4400	t	2026-03-17 09:09:43.571029	2026-03-17 09:09:43.571032	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/Chateau-du-Cedre-Le-Cedre-Malbec-w.jpg
22798	Chateau du Cedre, Extra Libre	1VN1400-1988	1950	t	2026-03-17 09:09:43.571037	2026-03-17 09:09:43.571039	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/Chateau-du-Cedre-Extra-Libre-w.jpg
22799	Dom Bénédictine 40% 0,7l	1R0521125-1989	2600	t	2026-03-17 09:09:43.571044	2026-03-17 09:09:43.571047	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/DOM-BENEDICTINE-40-070-L-w.jpg
22800	1800 Tequila Reserva SILVER 100% Agave 38% 0,7l	1R00358-1990	2900	t	2026-03-17 09:09:43.571052	2026-03-17 09:09:43.571054	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/1800-TEQUILA-RES-SILVER-38-070-L-w.jpg
22801	Glenfarclas Highland Single Malt Oloroso Sherry Casks 2011/2020 46% 0,7l Giftbox	1R00359-1991	7690	t	2026-03-17 09:09:43.57106	2026-03-17 09:09:43.571062	20	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/GLENFARCLAS-OLOROSO-SM-2011-2020-WHISKY-46-GP-070-L-w.jpg
22802	Jako vino, Stina Plavac Mali Stipančić	1V02580-1992	6150	t	2026-03-17 09:09:43.571067	2026-03-17 09:09:43.57107	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/stina-plavac-mali-stipancic-637919420683759799_660_800.jpeg
22803	Saint Hills, Le Chiffre Chardonnay	1V004436-1-1993	5890	t	2026-03-17 09:09:43.571075	2026-03-17 09:09:43.571077	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/le-chiffre-w.jpg
22804	Domaine de Regismont, Cuvee Berengere Merlot Cabernet	1VN1404-1994	850	t	2026-03-17 09:09:43.571083	2026-03-17 09:09:43.571085	148	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/D.-REGISMONT-BERAN-MERLOT-CAB-w.jpg
22805	Domaine de Regismont, Cuvee Berengere Chardonnay Viognier	1VN1402-1995	920	t	2026-03-17 09:09:43.57109	2026-03-17 09:09:43.571092	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/D.-REGISMONT-BERAN-CHARDONNAY-VIOGNIER-w.jpg
22806	Domaine de Regismont, Emotion Orange Muscat Viognier	1VN1401-1996	1060	t	2026-03-17 09:09:43.571098	2026-03-17 09:09:43.5711	95	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/regismont-orange-emotion-w.jpg
22807	Domaine de Regismont, Emotion Rouge Sans Sulfites Ajoutés	1VN1403-1997	1060	t	2026-03-17 09:09:43.571105	2026-03-17 09:09:43.571108	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/D.-REGISMONT-EMOTION-SANS-SOUFRE-w.jpg
22808	Masi, Campofiorin Magnum 1,5L	1VN1108-1998	3150	t	2026-03-17 09:09:43.571113	2026-03-17 09:09:43.571115	44	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN5.jpg
22809	Chapelle de Blagny, Puligny-Montrachet 1er Cru Hameau de Blagny	1VN1406-1-1999	10630	t	2026-03-17 09:09:43.571121	2026-03-17 09:09:43.571123	62	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/CHAP-DE-BLAGNY-Puligny-Montrachet-1er-Ham-de-Bl-2020-075-L-w.jpg
22810	Domaine Vincent Bachelet, Maranges 1er Cru la Fussiere blanc 2019	1VN1237-2000	4950	t	2026-03-17 09:09:43.571128	2026-03-17 09:09:43.57113	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/BACHELET-V.-MARANGES-1er-Cru-LA-FUSSIERE-2021-blanc-075-L-w.jpg
22811	Prunotto, Barbaresco Secondine DOCG	1VN1409-2001	9150	t	2026-03-17 09:09:43.571136	2026-03-17 09:09:43.571138	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/PRUNOTTO-BARBARESCO-SECONDINE-w.jpg
22812	Prunotto, Barolo Cerretta DOCG	1VN1410-2002	11900	t	2026-03-17 09:09:43.571156	2026-03-17 09:09:43.571159	28	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/PRUNOTTO-BAROLO-CERRETTA-w.jpg
22813	Tormaresca, Carrubo Primitivo di Manduria	1VN1412-1-2003	5900	t	2026-03-17 09:09:43.571165	2026-03-17 09:09:43.571167	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/TORMARESCA-CARRUBO-W.jpg
22815	Tormaresca, Torcicoda Primitivo Magnum	1VN714-2005	4500	t	2026-03-17 09:09:43.57118	2026-03-17 09:09:43.571182	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN633-1.jpg
22816	Prunotto, Barolo Bussia DOCG Magnum	1VN1414-1-2006	16400	t	2026-03-17 09:09:43.571187	2026-03-17 09:09:43.571189	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN861-5.jpg
22817	Tenuta Tignanello, Chianti Classico Riserva Magnum	1VN1411-2007	9100	t	2026-03-17 09:09:43.571194	2026-03-17 09:09:43.571197	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN581.jpg
22818	San Marzano, Anniversario 62 Primitivo di Manduria Riserva Magnum	1VN1314-2008	7280	t	2026-03-17 09:09:43.571202	2026-03-17 09:09:43.571204	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN922.png
22819	San Marzano, Edda Bianco Magnum	1VN1317-2009	3451	t	2026-03-17 09:09:43.57121	2026-03-17 09:09:43.571212	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1120.jpg
22820	A Mano, Imprint Primitivo	1VN523-2010	1180	t	2026-03-17 09:09:43.571217	2026-03-17 09:09:43.571219	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/a-mano-imprint-w.jpg
22821	Merum Priorati, Inici Magnum	1VN1254-2-2011	5900	t	2026-03-17 09:09:43.571226	2026-03-17 09:09:43.571228	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/inici-W.jpg
22822	Merum Priorati, Desti Magnum	1VN1407-2012	7600	t	2026-03-17 09:09:43.571234	2026-03-17 09:09:43.571236	27	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/DESTI-w.jpg
22823	Guado al Tasso Il Bruciato Bolgheri 3L	1VN1416-2013	12000	t	2026-03-17 09:09:43.571242	2026-03-17 09:09:43.571244	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/il-bruciatoW.jpg
22824	Meneghetti, Classic Rose Brut	1Š58-2014	2500	t	2026-03-17 09:09:43.571249	2026-03-17 09:09:43.571251	25	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/Meneghetti-Pjenusac-Rose-2018b..jpg
22825	Limoncello di Capri Originale Ricetta di Capri 30% 0,7l	1R00250-2015	1695	t	2026-03-17 09:09:43.571257	2026-03-17 09:09:43.571259	27	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/LIMONCELLO-DI-CAPRI-liqueur-30vol-070-L-w.jpg
22826	The GlenDronach 10 Years Old FORGUE Highland Single Malt 43% 1l Giftbox	1R00251-2016	7470	t	2026-03-17 09:09:43.571264	2026-03-17 09:09:43.571267	28	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/glendronach-forgue-10-w.jpg
22827	The Glenturret Sherry Cask Edition Batch No. 2 43% 0,7l	1R00252-2017	4050	t	2026-03-17 09:09:43.571272	2026-03-17 09:09:43.571274	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/GLENTURRET-WHISKY-SHERRY-CASK-43-070-L-w.jpg
22828	Siegfried Wonderleaf Rose Alkoholfrei	1R00109-2018	2070	t	2026-03-17 09:09:43.57128	2026-03-17 09:09:43.571282	32	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/SIEGFRIED-WONDERLAF-ROSE-050-L-bez-alkohola-w.jpg
22829	Siegfried Wonderleaf Rheinland Dry Gin 41% 0,5L	1R00110-2019	2990	t	2026-03-17 09:09:43.571288	2026-03-17 09:09:43.57129	21	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/SIEGFRIED-RHEINLAND-DRY-GIN-41vol-050-L-w.jpg
22830	Sacchetto, Prosecco Rose Brut DOC	1ŠN782-2020	850	t	2026-03-17 09:09:43.571295	2026-03-17 09:09:43.571297	151	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/sacchetto-prosecco-rose-brut-millesimato-w.jpg
22831	Salentein, Barrel Selection Malbec Magnum	1VN1122-2021	3200	t	2026-03-17 09:09:43.571303	2026-03-17 09:09:43.571305	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN990.jpg
22832	La Vieille Ferme Reserve Rose Brut	1ŠN783-2022	1195	t	2026-03-17 09:09:43.57131	2026-03-17 09:09:43.571312	85	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/La-Vieille-Ferme-Reserve-Rose-Brut-w.jpg
22833	Atalaya, Laya Magnum	1VN1420-2023	1760	t	2026-03-17 09:09:43.571319	2026-03-17 09:09:43.571321	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/atalaya-laya.jpg
22834	Atalaya, La Atalaya del Camino Magnum	1VN1421-2024	3400	t	2026-03-17 09:09:43.571327	2026-03-17 09:09:43.571329	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/il-camino.jpg
22835	Coronica, Gran Malvazija	1V261-1-2025	1730	t	2026-03-17 09:09:43.571334	2026-03-17 09:09:43.571336	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/coronica-gran-malvazija-w.jpg
22836	Coronica, Malvazija Ottaviano	1V2701-1-2026	3300	t	2026-03-17 09:09:43.571342	2026-03-17 09:09:43.571344	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/ottaviano-w.jpg
22837	Coronica, Malvazija Ottaviano Magnum	1V2702-2027	7300	t	2026-03-17 09:09:43.571349	2026-03-17 09:09:43.571351	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/06/ottaviano-w.jpg
22838	Gölles, Alter Apfel / Rakija od jabuke, odležana	10R0705-2028	5390	t	2026-03-17 09:09:43.571356	2026-03-17 09:09:43.571359	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/Golles-Alter-Apfel-Rakija-od-jabuke-odlezana-w.jpg
22839	Gölles, Alter Zwetschke / Rakija od šljive, odležana	10R0706-2029	7495	t	2026-03-17 09:09:43.571364	2026-03-17 09:09:43.571366	1	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/Golles-Alter-Zwetschke-Rakija-od-sljive-odlezana-w.jpg
22840	Adega de Moncao, Alvarinho Deu la Deu	1VN1182-4-2030	1350	t	2026-03-17 09:09:43.571372	2026-03-17 09:09:43.571374	158	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/alvarinho-deu-la-deu.jpg
22841	Golles, Zitronenwürze / Ocat od limuna	1H073-2031	1490	t	2026-03-17 09:09:43.571379	2026-03-17 09:09:43.571381	16	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/Golles-Zitronenwurze-Ocat-od-limuna-w.jpg
22879	Bolfan, Pinot crni	1V0371-2069	1355	t	2026-03-17 09:09:43.571696	2026-03-17 09:09:43.571699	7	VINO > CR(VE)NA	
22842	Kirk and Sweeney 18 RESERVA Old Dominican Rum 40% 0,7l	1R00610-2032	4300	t	2026-03-17 09:09:43.571387	2026-03-17 09:09:43.571389	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/KIRK-SWEENEY-18-RES-OLD-DOM.-RUM-40-070-L-w.jpg
22843	Bagolar, Moreda Muškat žuti (suho)	1VN3883-2033	2200	t	2026-03-17 09:09:43.571394	2026-03-17 09:09:43.571396	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/BAGOLAR-MOREDA-MUSKAT-ZUTI-suhi-075-L-w.jpg
22844	Willett Kentucky Straight Bourbon Whiskey 47% 0,7l	11R00611-2034	7200	t	2026-03-17 09:09:43.571402	2026-03-17 09:09:43.571404	11	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/Willett-Kentucky-Straight-Bourbon-Whiskey-47-07l-w.jpg
22845	Veralda, Rose Brut Nature	1Š145-2035	2090	t	2026-03-17 09:09:43.571409	2026-03-17 09:09:43.571412	8	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/1S145-w.jpg
22846	Veralda, Blanc de Noir Brut	1Š3345-2036	2249	t	2026-03-17 09:09:43.571417	2026-03-17 09:09:43.571419	20	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/1S3345-w.jpg
22847	Veralda, Le Rote Malvazija	1VN2057-2037	5190	t	2026-03-17 09:09:43.571424	2026-03-17 09:09:43.571427	11	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/1VN2057-w.jpg
22848	Gin Tonic set 4 čaše - 30 god Vivata	VIVAT2038-2038	3950	t	2026-03-17 09:09:43.571433	2026-03-17 09:09:43.571436	21	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/gin-tonic-30-god-web.jpg
22849	Spiegelau Spittoon pljuvačnica pri kušanju vina	7233755-2039	3500	t	2026-03-17 09:09:43.571442	2026-03-17 09:09:43.571444	63	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/SPIEGELAU-SPECIAL-GLASSES-SPITTOON-BLACK-w.jpg
22850	Bouvet Ladubay, Tresor Blanc Brut Vintage	1ŠN45-2040	1780	t	2026-03-17 09:09:43.571449	2026-03-17 09:09:43.571451	92	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/bouvet-tresor-brut-w.jpg
22851	Bouvet Cremant de Loire Rose Brut Magnum	1ŠN637-2041	3400	t	2026-03-17 09:09:43.571457	2026-03-17 09:09:43.571459	24	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/Bouvet-excellence-rose-magnum-w.jpg
22853	Bažon, Malvazija Allegra	1VN45501-2043	1270	t	2026-03-17 09:09:43.571473	2026-03-17 09:09:43.571475	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/BAZON-MALVAZIJA-ALLEGRA-w.jpg
22854	Bažon, Libero Brut	1VN45502-2044	1430	t	2026-03-17 09:09:43.57148	2026-03-17 09:09:43.571482	33	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/bazon-libero-w.jpg
22855	MG, Gin MG Rosa Strawberry / Jagoda	1R03701-1-2045	1710	t	2026-03-17 09:09:43.571488	2026-03-17 09:09:43.57149	254	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/MG-GIN-MG-ROSA-Strawb-Jagoda-375-070-L.jpg
22856	MG London Dry Gin	1R0307-1-2046	1710	t	2026-03-17 09:09:43.571495	2026-03-17 09:09:43.571497	158	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/08/1R0307-1-w.jpg
22857	Castello della Sala, Pinot Nero della Sala	1VN936-2047	5150	t	2026-03-17 09:09:43.571502	2026-03-17 09:09:43.571505	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/08/Castello-della-Sala-Pinot-Nero-della-Sala.jpg
22858	Nerica, Pošip 60 Orange	1VN0579-2048	6450	t	2026-03-17 09:09:43.57151	2026-03-17 09:09:43.571512	20	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/08/Nerica-Posip-60-w.jpg
22859	Nerica, Pošip Crni 60	1VN0580-2049	6450	t	2026-03-17 09:09:43.571518	2026-03-17 09:09:43.57152	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/08/Nerica-60-Posip-crni-w.jpg
22860	Lipanović, Plavac Mali	1V0356-2050	2080	t	2026-03-17 09:09:43.571525	2026-03-17 09:09:43.571527	14	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/08/Lip_Plavac-Mali-1.jpg
22861	Fattoria Aldobrandesca, Aleatico Sovana DOC Superiore	1VN55-2051	1950	t	2026-03-17 09:09:43.571533	2026-03-17 09:09:43.571535	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/08/ALEATICO-NUOVO.jpg
22862	Kavalan CONCERTMASTER Port Cask Finish Whisky 40% Giftbox	1R00223-2052	6850	t	2026-03-17 09:09:43.571541	2026-03-17 09:09:43.571543	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/08/Kavalan-CONCERTMASTER-Port-Cask-Finish-Whisky-w.jpg
22863	Louis Barthelemy, Amethyste Champagne Brut 0,375	1ŠN124-2053	2230	t	2026-03-17 09:09:43.571548	2026-03-17 09:09:43.57155	18	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2023/08/AMETHYSTE-375.jpg
22864	Juričić, Iris Brut	1Š8005-2054	2190	t	2026-03-17 09:09:43.571569	2026-03-17 09:09:43.571572	7	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/JURICIC-IRIS-BRUT-075L-w.jpg
22865	Clai, Pjenušac Brut Nature	1Š662114-2055	2549	t	2026-03-17 09:09:43.571578	2026-03-17 09:09:43.57158	32	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/1S662114-clai.jpg
22866	Vina Bora, Sauvignon	1V9989-2056	1890	t	2026-03-17 09:09:43.571586	2026-03-17 09:09:43.571588	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/sauvignon_vivat.jpg
22867	Vina Bora, Cuvee	1V9990-2057	2470	t	2026-03-17 09:09:43.571593	2026-03-17 09:09:43.571595	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/cuvee_vivat.jpg
22868	Monte Zovo, Crocevento Pinot Nero Garda Doc	1VN1423-2058	2430	t	2026-03-17 09:09:43.5716	2026-03-17 09:09:43.571603	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/Untitled-design-81.jpg
22869	Cihuatán 12 Solera Reserva Especial Rum 40% 0,7l Giftbox	1R00614-2059	3580	t	2026-03-17 09:09:43.571608	2026-03-17 09:09:43.57161	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/Cihuatan-12-Solera-Reserva-Especial-Rum.jpg
22870	Hunter Laing SCARABUS Islay Single Malt Specially Selected 46% 0,7l Giftbox	1R00615-2060	3690	t	2026-03-17 09:09:43.571616	2026-03-17 09:09:43.571618	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/Hunter-Laing-SCARABUS-Islay-Single-Malt-Specially-Selected-w.jpg
22871	KAMIKI Blended Malt Whisky 48% 0,5l Giftbox	1R00616-2061	5580	t	2026-03-17 09:09:43.571623	2026-03-17 09:09:43.571625	15	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/KAMIKI-BLENDED-MALT-WHISKY-48-GP-050L-w.jpg
22872	La Sogara, Amarone della Valpolicella DOCG	1VN1244-2062	2986	t	2026-03-17 09:09:43.571631	2026-03-17 09:09:43.571633	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/1VN1244-amarone.jpg
22873	Villa Annaberta, Amarone della Valpolicella DOCG	1VN1378-2063	3195	t	2026-03-17 09:09:43.571638	2026-03-17 09:09:43.571641	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/VILLA-ANNABERTA-AMARONE-075-L-w.jpg
22874	Salvela, 4 Istrian Evoo Classics	1H00466-2064	2800	t	2026-03-17 09:09:43.571646	2026-03-17 09:09:43.571648	6	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/SALVELA-4-Istrian-Evoo-Classics-masl.-ulje-040-L-w.jpg
22875	Smokehead Islay Single Malt Scotch Whisky Tinbox	1R00617-2065	4190	t	2026-03-17 09:09:43.571655	2026-03-17 09:09:43.571657	23	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/SMOKEHEAD-ISLAY-SM-WHISKY-43-GP-070L-W.jpg
22876	Bolfan, Sauvignon Blanc	1V0378-2-2066	1349	t	2026-03-17 09:09:43.571663	2026-03-17 09:09:43.571665	27	VINO > BIJELA	
22877	Franc Arman, Merlot Supreme	1V2461-2067	1895	t	2026-03-17 09:09:43.57167	2026-03-17 09:09:43.571672	8	VINO > CR(VE)NA	
22878	Bolfan, Rose	1V03791-2068	985	t	2026-03-17 09:09:43.571677	2026-06-30 15:11:18.635868	3	VINO > ROSE	
22881	Pulltex, Vadičep Crystal Constellation	1D10915400-2071	7500	t	2026-03-17 09:09:43.571713	2026-03-17 09:09:43.571715	16	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/pulltex-109154-w.jpg
22882	Pulltex, Izo torba za 2 boce	1D00473000-2072	9158	t	2026-03-17 09:09:43.571721	2026-03-17 09:09:43.571723	2	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/1D00473000-w.jpg
22883	Spiegelau, Spumante set od 6 čaša	1351327-2073	11500	t	2026-03-17 09:09:43.571729	2026-03-17 09:09:43.571731	47	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/1350127-spumante-w.jpg
22884	Spiegelau, Spumante set od 2 čaše	1350167-2074	3990	t	2026-03-17 09:09:43.571736	2026-03-17 09:09:43.571739	17	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/1350127-spumante-w.jpg
22885	Franc Arman, Malvazija	1V246-2075	1050	t	2026-03-17 09:09:43.571744	2026-03-17 09:09:43.571746	114	VINO > BIJELA	
22886	Pere Ventura, Primer Reserva Semi sec 6x0,75	VIVAT2076-2076	883	t	2026-03-17 09:09:43.571752	2026-03-17 09:09:43.571754	38	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/07/pere-semi-6-boca-popust.jpg
22887	Louis Barthelemy, Amethyste Champagne Brut Magnum 1,5	1ŠN123-2077	7440	t	2026-03-17 09:09:43.57176	2026-03-17 09:09:43.571762	6	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1SN59.jpg
22888	Zotter, "Whisky, Karamela i Pekan" čokolada s punjenjem 70 g	1H-16928-2078	490	t	2026-03-17 09:09:43.571767	2026-03-17 09:09:43.57177	6	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/zotter-whisky-caramell-pekan-w.jpg
22889	Zotter, "Crveno vino - Vegan" čokolada s punjenjem 70 g	1H-16931-2079	540	t	2026-03-17 09:09:43.571775	2026-03-17 09:09:43.571777	20	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/zotter-vegan-red-wine-w.jpg
22890	Zotter, "Utopia -Vino i Voće" čokolada s punjenjem 70 g	1H-16938-2080	540	t	2026-03-17 09:09:43.571783	2026-03-17 09:09:43.571785	16	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/zotter-utopia-w.jpg
22891	Zotter, "Spermidin i Pjenušac" čokolada s punjenjem 70 g	1H-16939-2081	490	t	2026-03-17 09:09:43.57179	2026-03-17 09:09:43.571792	6	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/zotter-spermidin-w.jpg
22892	Mayer am Pfarrplatz, Zweigelt	1VN1425-2082	1290	t	2026-03-17 09:09:43.571798	2026-03-17 09:09:43.5718	98	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/MAYER-AM-PF.-ZWEIGELT-075-L-w.jpg
22893	Tenuta Bocca di Lupo, Trentangeli Castel del Monte D.O.C	1VN634-2083	1790	t	2026-03-17 09:09:43.571805	2026-03-17 09:09:43.571807	79	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN634-1.jpg
22894	Prunotto, Barolo DOCG Magnum	1VN1059-5-2084	9300	t	2026-03-17 09:09:43.571813	2026-03-17 09:09:43.571815	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN957-3-1.jpg
22895	The Artisan Gin London dry	1R8055-2085	4350	t	2026-03-17 09:09:43.57182	2026-03-17 09:09:43.571822	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/artisan-gin-w.jpg
22896	Burnum, Bijeli Cuvee	1VN4399-2086	1649	t	2026-03-17 09:09:43.571828	2026-03-17 09:09:43.57183	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/BURNUM-BIJELI-CUVEE-075L-w.jpg
22897	Burnum, Crveni Cuvee	1VN4400-2087	1895	t	2026-03-17 09:09:43.571835	2026-03-17 09:09:43.571837	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/BURNUM-CRVENI-CUVEE-075L-w.jpg
22898	Mayer am Pfarrplatz, Landhaus Zweigelt	1VN1426-2088	880	t	2026-03-17 09:09:43.571842	2026-03-17 09:09:43.571844	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/LANDHAUS-MAYER-ZWEIGELT-075-L-w.jpg
22899	Mayer am Pfarrplatz, Landhaus Gruner Veltliner bezalkoholno vino	1VN1427-2089	1200	t	2026-03-17 09:09:43.57185	2026-03-17 09:09:43.571852	110	VINO > BEZALKOHOLNA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/Mayer-am-Pf-Asia-Gruner-Veltliner-bezalkoholno-vino-w.jpg
22900	Pampero Añejo BLANCO	1R608162-2090	1650	t	2026-03-17 09:09:43.571857	2026-03-17 09:09:43.57186	40	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/PAMPERO-ANEJO-BLANCO-rum-375-070-L-w.jpg
22901	Don Papa MASSKARA rum	1R607261-2091	4200	t	2026-03-17 09:09:43.571865	2026-03-17 09:09:43.571867	3	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/DON-PAPA-MASSKARA-rum-40-070-L-w.jpg
22902	Crystal Head Vodka Giftbox	1R630761-2092	5130	t	2026-03-17 09:09:43.571872	2026-03-17 09:09:43.571874	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/CRYSTAL-HEAD-VODKA-40-GP-10-L-w.jpg
22903	Jack Daniel's WHITE RABBIT SALOON Special Edition	1R671169-2093	4779	t	2026-03-17 09:09:43.57188	2026-03-17 09:09:43.571882	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/JACK-DANIELS-WHITE-RABBIT-SALOON-43-070-L-w.jpg
22904	Signatory Vintage CAOL ILA VERY CLOUDY The Un-Chillfiltered 2015 Giftbox	1R683905-2094	5185	t	2026-03-17 09:09:43.571887	2026-03-17 09:09:43.571889	7	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/SIGNATORY-V.-CAOL-ILA-VERY-CLOUDY-WHISKY-2015-40-GP-070L-w.jpg
22905	The Macallan A NIGHT ON EARTH Highland Single Malt Giftbox	1R684641-2095	15400	t	2026-03-17 09:09:43.571895	2026-03-17 09:09:43.571897	18	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/THE-MACALLAN-A-NIGHT-ON-EARTH-WHISKY-43-GP-070L-w.jpg
22906	Bumbu Cream	1R602308-2096	3500	t	2026-03-17 09:09:43.571902	2026-03-17 09:09:43.571904	10	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/BUMBU-CREAM-15-rum-070L-w.jpg
22907	Jarec Kure, Pinot bijeli	1V0011-2097	1167	t	2026-03-17 09:09:43.57191	2026-03-17 09:09:43.571912	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/Jarec-Kure-Pinot-bijeli-w.jpg
22908	Torres Selecta Batat Čips 90g	1H310-2098	440	t	2026-03-17 09:09:43.571917	2026-03-17 09:09:43.57192	32	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/1H310-Ww.jpg
22909	Simon Coll, Tamna mliječna čokolada 60% kakao 85g	1H3119-2099	370	t	2026-03-17 09:09:43.571925	2026-03-17 09:09:43.571927	87	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/1H3119-w.jpg
22910	Sacchetto, "Etichetta nera" Millesimato Brut Magnum	1ŠN784-2100	1650	t	2026-03-17 09:09:43.571932	2026-03-17 09:09:43.571934	16	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/Sacchetto-Etichetta-nera-Millesimato-Brut-Magnum-w.jpg
22911	Fam Kutija karton seta zelena ležeća za 2 boce	FAM120309-2101	500	t	2026-03-17 09:09:43.57194	2026-03-17 09:09:43.571942	8	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/FAM-KUTIJA-KART-2-1-ZELENA-SETA-LEZ-art-120309.jpg
22912	FAM LJEPLJIVA TRAKA "Ho Ho Ho"	FAM501114-2102	15	t	2026-03-17 09:09:43.571947	2026-03-17 09:09:43.57195	160	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/FAM501114-ww.jpg
22913	Fam Kutija karton Natura crna za 2 boce	FAM120199-2103	420	t	2026-03-17 09:09:43.571955	2026-03-17 09:09:43.571957	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/120199-ww.jpg
22914	Fam Kutija karton Natura za 2 boce	FAM120200-2104	385	t	2026-03-17 09:09:43.571962	2026-03-17 09:09:43.571965	29	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/120200-w.jpg
22915	Fam Kutija karton Natura X-Mas Time za 2 boce	FAM120225-2105	420	t	2026-03-17 09:09:43.57197	2026-03-17 09:09:43.571972	5	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/120225-w.jpg
22916	Fam košara karton seta antracit	FAM270406-2106	450	t	2026-03-17 09:09:43.571991	2026-03-17 09:09:43.571994	1	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/270406-w.jpg
22917	Fam Elastična vrpca srebrna kratka	FAM510120-2107	49	t	2026-03-17 09:09:43.572001	2026-03-17 09:09:43.572003	88	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/510120-w.jpg
22918	Fam Drvena kutija za 2 boce	FAM708422-2108	2140	t	2026-03-17 09:09:43.572009	2026-03-17 09:09:43.572011	19	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/708422-w.jpg
22919	Fam Drvena kutija za 1 bocu	FAM708421-2109	1650	t	2026-03-17 09:09:43.572016	2026-03-17 09:09:43.572018	17	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/708421-w.jpg
22920	Fam košara karton 6-kutna crna	FAM077950-2110	299	t	2026-03-17 09:09:43.572024	2026-03-17 09:09:43.572026	25	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/077950-w.jpg
22921	Fam Kutija karton rebrasta Bordo za 2 boce	FAM000222-2111	500	t	2026-03-17 09:09:43.572031	2026-03-17 09:09:43.572033	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/000222-w.jpg
22922	San Marzano, Sessantanni Primitivo di Manduria	1VN921-2112	2790	t	2026-03-17 09:09:43.572039	2026-03-17 09:09:43.572041	90	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN921.jpg
22924	Tenuta Bocca di Lupo, Pietrabianca Chardonnay Castel del Monte D.O.C. Magnum	1VN1428-2114	5500	t	2026-03-17 09:09:43.572054	2026-03-17 09:09:43.572056	3	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/tormaresca-pietrabianca-w.jpg
22925	Orimos Grande Reserve Rouge Magnum	1VN1430-2115	2420	t	2026-03-17 09:09:43.572062	2026-03-17 09:09:43.572064	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/ORIMOS-GRANDE-RESERVE-ROUGE-15-L-w.jpg
22926	Salvela, Aurum Primis	1H00467-2116	1900	t	2026-03-17 09:09:43.572069	2026-03-17 09:09:43.572071	15	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/Primis-6X8.jpg
22927	Raventos i Blanc, De Nit Rose Extra Brut Magnum	1ŠN605-2117	4530	t	2026-03-17 09:09:43.572077	2026-03-17 09:09:43.572079	12	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1ŠN604.jpg
22928	Raventos i Blanc, Textures de Pedra Brut Nature	1ŠN638-2118	3360	t	2026-03-17 09:09:43.572085	2026-03-17 09:09:43.572087	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/Raventos-i-Blanc-Textures-de-Pedra-Brut-Nature-w.jpg
22929	Benvenuti, Santa Elisabetta 2020	1V56563221-2-2119	6890	t	2026-03-17 09:09:43.572092	2026-03-17 09:09:43.572094	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/Benvenuti-Santa-Elisabetta-w.jpg
22930	Cmrečnjak, Mlado Müller-Thurgau Rizvanac	1V66215-2120	730	t	2026-03-17 09:09:43.5721	2026-03-17 09:09:43.572102	18	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/CMRECNJAK-MLADO-Rizvanac-w.jpg
22931	Chateau Rousselle "Tradition" Rouge 2019	1VN1321-1-2121	1385	t	2026-03-17 09:09:43.572108	2026-03-17 09:09:43.57211	204	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/12/chat-rousselle-tradition.jpg
22933	Chateau Haut Vigneau Rouge Blaye Magnum	1VN1432-2123	2985	t	2026-03-17 09:09:43.572123	2026-03-17 09:09:43.572125	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/Chateau-Haut-Vigneau-Rouge-Blaye-Magnum-w.jpg
22934	Vina Bora, Svrdlovina	1V9991-2124	3200	t	2026-03-17 09:09:43.57213	2026-03-17 09:09:43.572132	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Bora-svrdlovina.jpg
22935	Kopjar, Cabernet sauvignon	1V00900-2125	1555	t	2026-03-17 09:09:43.572138	2026-03-17 09:09:43.57214	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Kopjar-CS.jpg
22936	Chateau Au Vignoble Bordeaux Superieur	1VN1458-2126	700	t	2026-03-17 09:09:43.572145	2026-03-17 09:09:43.572148	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-AU-VIGNOBLE-BORDEAUX-w.jpg
22937	Chateau La Chapelle des Landes Lussac Saint-Émilion	1VN1459-2127	890	t	2026-03-17 09:09:43.572153	2026-03-17 09:09:43.572155	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-LA-CHAPELLE-DES-LANDES-w.jpg
22938	Chateau Roc de Boisseaux Grand Cru Saint Emilion	1VN1460-2128	1995	t	2026-03-17 09:09:43.57216	2026-03-17 09:09:43.572162	16	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Chateau-Roc-de-Boisseaux-Grand-Cru-Saint-Emilion-w.jpg
22939	Prince de Saint-Aubin Sauternes	1VN532-2129	1430	t	2026-03-17 09:09:43.572168	2026-03-17 09:09:43.57217	64	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Prince-de-Saint-Aubin-Sauternes-w.jpg
22940	Chateau Charmail Haut-Médoc	1VN1433-2130	2700	t	2026-03-17 09:09:43.572175	2026-03-17 09:09:43.572177	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Chateau-Charmail-Haut-Medoc-w.jpg
22941	Chateau d’Issan Margaux	1VN1870-2131	10550	t	2026-03-17 09:09:43.572183	2026-03-17 09:09:43.572185	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/DISSAN-MARGAUX.jpg
22942	Chateau Prieure-Lichine Margaux Grand Cru Classe	1VN1435-2132	6400	t	2026-03-17 09:09:43.57219	2026-03-17 09:09:43.572192	23	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/PRIEURE-LICHINE-MARGAUX-w.jpg
22943	Jean Loron, Beaujolais Nouveau Vieilles Vignes Non Filtre 2025	1VN743-3-2133	1100	t	2026-03-17 09:09:43.572198	2026-03-17 09:09:43.5722	66	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/LORON-BEAUJOLAIS-NOUVEAU-V-V-NON-FILTRE.jpg
22944	Chateau Haut-Bages Libéral Pauillac 2019	1VN1879-2134	5790	t	2026-03-17 09:09:43.572205	2026-03-17 09:09:43.572207	53	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/HAUT-BAGES-LIBERAL-PAUILLAC-w.jpg
22945	Chateau Pédesclaux GCC Pauillac	1VN1437-2135	5850	t	2026-03-17 09:09:43.572213	2026-03-17 09:09:43.572215	53	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/PEDESCLAUX-PAUILLAC.jpg
22946	Chateau Pape Clément Pessac-Leognan	1VN1438-2136	13449	t	2026-03-17 09:09:43.57222	2026-03-17 09:09:43.572223	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/PAPE-CLEMENT-w.jpg
22947	Chateau Rouget Pomerol	1VN1439-2137	6950	t	2026-03-17 09:09:43.572228	2026-03-17 09:09:43.57223	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-ROUGET-POMEROL-w.jpg
22948	Chateau Taillefer Pomerol	1VN1884-2138	4480	t	2026-03-17 09:09:43.572235	2026-03-17 09:09:43.572237	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-TAILLEFER-POMEROL-w.jpg
22949	Carmes de Rieussec Sauternes	1VN1153-1-2139	2240	t	2026-03-17 09:09:43.572243	2026-03-17 09:09:43.572245	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CARMES-DE-RIEUSSEC-ww.jpg
22950	Chateau Cote de Baleau Saint-Emilion Grand Cru	1VN1443-2140	3180	t	2026-03-17 09:09:43.57225	2026-03-17 09:09:43.572252	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-COTE-DE-BALEAU-ST-EMILION-GC-rouge-w.jpg
22951	Chateau Pavie Macquin Premier GCC Saint-Emilion	1VN1444-2141	13450	t	2026-03-17 09:09:43.572258	2026-03-17 09:09:43.57226	25	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/PAVIE-MACQUIN-ST-EMILION-w.jpg
22952	Chateau Tauzinat L'Hermitage Saint-Emilion Grand Cru	1VN529-1-2142	2100	t	2026-03-17 09:09:43.572265	2026-03-17 09:09:43.572267	36	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CHATEAU-TAUZINAT-L-HERMITAGE-w.jpg
22932	Chateau Rousselle "Tradition" Rouge Magnum	1VN1431-2122	2895	t	2026-03-17 09:09:43.572115	2026-06-30 15:11:18.630073	27	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/Chateau-Rousselle-Tradition-Rouge-2019-Magnum-w.jpg
22953	Chateau Troplong Mondot Saint-Emilion GCC	1VN1445-2143	15350	t	2026-03-17 09:09:43.572272	2026-03-17 09:09:43.572274	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Chateau-Troplong-Mondot-w.jpg
22954	Chateau Laroque Les Tours de Laroque Saint-Emilion	1VN1446-2144	2100	t	2026-03-17 09:09:43.57228	2026-03-17 09:09:43.572282	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/LES-TOURS-DE-LAROQUE-ST-EMIL-w.jpg
22955	Chateau Ormes de Pez Saint-Estèphe	1VN1447-2145	3900	t	2026-03-17 09:09:43.572287	2026-03-17 09:09:43.57229	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/LES-ORMES-DE-PEZ-ST-ESTEPHE-w.jpg
22956	Chateau Lilian Ladouys Saint-Estèphe	1VN1448-2146	2970	t	2026-03-17 09:09:43.572295	2026-03-17 09:09:43.572297	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/LILIAN-LADOUYS-ST-ESTEPHE-w.jpg
22957	Les Pelerins de Lafon-Rochet Saint-Estèphe	1VN1449-2147	2970	t	2026-03-17 09:09:43.572302	2026-03-17 09:09:43.572305	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/LES-PELERINS-DE-LAFON-ROCHET-w.jpg
22958	Chateau Saint-Pierre Saint-Julien	1VN1450-2148	7540	t	2026-03-17 09:09:43.57231	2026-03-17 09:09:43.572312	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/SAINT-PIERRE-ST-JULIEN-w.jpg
22959	BriO de Cantenac Brown Margaux	1VN1451-2149	3369	t	2026-03-17 09:09:43.572319	2026-03-17 09:09:43.572321	15	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/BRIO-DE-CANTENAC-BROWN-MARGAUX-rouge-w.jpg
22960	Chateau Siran Margaux	1VN1452-2150	5190	t	2026-03-17 09:09:43.572326	2026-03-17 09:09:43.572328	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/SIRAN-MARGAUX-jpg.jpg
22961	Chateau Smith Haut Lafitte Blanc Pessac-Leognan	1VN1030-1-2151	20800	t	2026-03-17 09:09:43.572334	2026-03-17 09:09:43.572336	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/SMITH-HAVT-LAFITTE-blanc-w.jpg
22962	Chateau Laroque Saint-Emilion Grand Cru Classe 2020	1VN1453-2152	5560	t	2026-03-17 09:09:43.572341	2026-03-17 09:09:43.572343	32	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-LAROQUE-ST-EMILION-GC-rouge-w.jpg
22963	Clos de l'Oratoire Saint-Emilion Grand Cru Classe	1VN1454-1-2153	5770	t	2026-03-17 09:09:43.572348	2026-03-17 09:09:43.57235	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CLOS-DE-L-ORATOIRE-ST-EMILION-w.jpg
22964	Chateau Montrose Saint-Estèphe 2020	1VN1455-2154	29700	t	2026-03-17 09:09:43.572356	2026-03-17 09:09:43.572358	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/MONTROSE-ST-ESTEPHE-w.jpg
22965	Chateau Phélan Ségur Saint-Estèphe	1VN1456-2155	7540	t	2026-03-17 09:09:43.572363	2026-03-17 09:09:43.572365	33	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/PHELAN-SEGUR-ST-ESTEPHE-w.jpg
22966	Chateau Cos d'Estournel Pagodes de Cos Saint-Estèphe	1VN1457-2156	6450	t	2026-03-17 09:09:43.572371	2026-03-17 09:09:43.572373	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/LES-PAGODES-DE-COS-ST-ESTEPHE-w.jpg
22967	Vulcanossi Klassik Mild salamice 85 g	1H2402-2157	350	t	2026-03-17 09:09:43.572394	2026-03-17 09:09:43.572397	15	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Vulcanossi-classic-w.jpg
22968	Vulcanossi Scharf salamice 85 g	1H2502-2158	350	t	2026-03-17 09:09:43.572403	2026-03-17 09:09:43.572405	13	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Vulcanossi-scharf-w.jpg
22969	Svinjski file s crnim tartufom 250 g	1H180-2159	1995	t	2026-03-17 09:09:43.572411	2026-03-17 09:09:43.572413	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Trueffel_Filet-4.jpg
22970	Karree Mesni Chips 35 g	1H803-2160	600	t	2026-03-17 09:09:43.572418	2026-03-17 09:09:43.572421	22	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Crisps_Karree_03-w.jpg
22971	Delikatno Dimljeni Mesni Chips 35 g	1H801-2161	600	t	2026-03-17 09:09:43.572426	2026-03-17 09:09:43.572428	15	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Crisps_zart_geraeuchert-w.jpg
22972	Vulcano Šunka Mesni Chips 35 g	1H800-2162	700	t	2026-03-17 09:09:43.572433	2026-03-17 09:09:43.572436	36	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Crisps_Rohschinken_w.jpg
22973	Vulcano Salama s Tartufima 300 g	1H206-2163	995	t	2026-03-17 09:09:43.572441	2026-03-17 09:09:43.572443	38	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/Truffelsalami_WEB2.jpg
22974	Chateau Smith Haut Lafitte Pessac Leognan Le Petit rouge	1VN3031-2-2164	4150	t	2026-03-17 09:09:43.572448	2026-03-17 09:09:43.572451	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-SMITH-HAVT-LAFITTE-LE-PETIT-rouge-w.jpg
22975	Chateau Rieussec Sauternes 2017	1VN1885-2165	7930	t	2026-03-17 09:09:43.572456	2026-03-17 09:09:43.572469	15	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-RIEUSSEC-SAUTERNES-blanc-0375-w.jpg
22976	Wild Turkey 101 BOURBON Whiskey 50,5%	1R0488-2166	2900	t	2026-03-17 09:09:43.572476	2026-03-17 09:09:43.572478	19	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/WILD-TURKEY-101-BOURBON-WHISKY-505-070L-W.jpg
22977	Bib &amp; Tucker 6 Years Old Small Batch Bourbon Whiskey 46%	1R671402-2167	6695	t	2026-03-17 09:09:43.572483	2026-03-17 09:09:43.572485	29	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/BIB-TUCKER-6-YO-BOURBON-WHISKY-46-070L-W.jpg
22978	Conde Vimioso Sommelier Edition Branco	1VN1461-2168	1140	t	2026-03-17 09:09:43.572491	2026-03-17 09:09:43.572493	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/FALUA-CONDE-VIMIOSO-SOMMELIER-ED-BLANCO-w.jpg
22979	Zotter, Labooko 60%/40% Cacao-Oat Drink 70 gr	1H-20636-2169	490	t	2026-03-17 09:09:43.572498	2026-03-17 09:09:43.572501	10	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/ZOTTER-LABOOKO-COKO-KAKAO-ZOBENI-NAPITAK-20636-WWW.jpg
22980	Zotter, In Fusion Ribizl u kakau 70 gr	1H-18651-2170	480	t	2026-03-17 09:09:43.572506	2026-03-17 09:09:43.572508	9	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/ZOTTER-COKOLADA-IN-FUSION-KAKAO-RIBIZL-wW.jpg
22981	Zotter, Balleros Datulje u čokoladi od kave i posipane prahom kave 100g	1H-19015-2171	840	t	2026-03-17 09:09:43.572514	2026-03-17 09:09:43.572516	31	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/ZOTTER-COKOLADA-BALLEROS-KAVA-DATULJE-19015-W.jpg
22982	Zotter, Balleros Indijski oraščić pralina 100 g	1H-19004-2172	840	t	2026-03-17 09:09:43.572521	2026-03-17 09:09:43.572523	11	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/ZOTTER-COKOLADA-BALLEROS-INDIJSKI-ORASCIC-19004-W.jpg
22983	Ferrari, Blanc de Blancs Maximum Brut Trento DOC 3L	1ŠN403-2173	16458	t	2026-03-17 09:09:43.572529	2026-03-17 09:09:43.572531	34	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/FERRARI-MAXIMUM-Blanc-de-Blcs-BRUT-pjenusac-075-L.jpg
22984	Tomac, Marany Crni	1V003215-2174	2055	t	2026-03-17 09:09:43.572537	2026-03-17 09:09:43.572539	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/12/tomac-marany-crni-w.jpg
22985	Prović, Chardonnay	1V00699-2175	1295	t	2026-03-17 09:09:43.572544	2026-03-17 09:09:43.572546	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/12/provic-chardonnay-22-w.jpg
22986	Prović, Chardonnay Naron Sur Lie	1V0007921-2176	2095	t	2026-03-17 09:09:43.572552	2026-03-17 09:09:43.572554	15	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/12/provic-naron-w.jpg
22987	Prović, Pagan Reserva	1V000792-2177	3295	t	2026-03-17 09:09:43.572559	2026-03-17 09:09:43.572561	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/12/provic-Pagan-w.jpg
22988	Prović, MC Merlot Cabernet	1V000698-2178	1155	t	2026-03-17 09:09:43.572567	2026-03-17 09:09:43.572569	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/12/provic-mc-w.jpg
22989	Prović, Livija Zlatarica	1V000700-2179	920	t	2026-03-17 09:09:43.572574	2026-03-17 09:09:43.572576	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/12/PRIVC-ZLATARICA.jpg
22990	Prović, Teuta Rose	1V000701-2180	1010	t	2026-03-17 09:09:43.572581	2026-03-17 09:09:43.572583	39	POPUST	https://www.vivat-finavina.hr/wp-content/uploads/2023/12/rose-provic-teuta-w.jpg
22991	Gut Hermannsberg, Just Riesling	1VN1462-2181	1650	t	2026-03-17 09:09:43.57259	2026-03-17 09:09:43.572593	15	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/12/JUST_Riesling-w.jpg
22992	Gut Hermannsberg, Kupfergrube Riesling GG Reserve	1VN1463-2182	9950	t	2026-03-17 09:09:43.572598	2026-03-17 09:09:43.5726	21	VINO > BIJELA	
22993	Chateau des Maladrets, Beaujolais Villages 6x0,75	VIVAT2183-2183	1160	t	2026-03-17 09:09:43.572606	2026-03-17 09:09:43.572608	22	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/01/MALADRETS-6-PACK.jpg
22994	Dobravac, Simminor Malvazija	1VN6629-2184	2760	t	2026-03-17 09:09:43.572614	2026-03-17 09:09:43.572616	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/01/dobravac-simminor-W.jpg
22995	Aura, Liker Teranino 0,5	1R00219-2185	2200	t	2026-03-17 09:09:43.572621	2026-03-17 09:09:43.572623	40	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R00219.jpg
22996	Aura, Liker Teranino 0,2	1R203-2186	1200	t	2026-03-17 09:09:43.572629	2026-03-17 09:09:43.572631	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/01/AURA-TERANINO-LIKER-020-w.jpg
22997	Don Papa BAROKO 40% Vol. 0,7l Giftbox	1R607276-2187	5220	t	2026-03-17 09:09:43.572637	2026-03-17 09:09:43.572639	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/DON-PAPA-BAROKO-rum-40vol-070-L-w.jpg
22998	Dalwhinnie The Distillers Edition Double Matured 43% Giftbox	1R68439602-2188	6995	t	2026-03-17 09:09:43.572644	2026-03-17 09:09:43.572646	6	DESTILATI	
22999	Studio by Miraval Rose 3L	1VN1464-1-2189	8500	t	2026-03-17 09:09:43.572652	2026-03-17 09:09:43.572655	39	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2023/03/STUDIO-BY-MIRVAL-1500-W.jpg
23000	Poli, NEGRONI Cocktail 25vol%	1RN066-2190	2400	t	2026-03-17 09:09:43.572661	2026-03-17 09:09:43.572663	7	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2024/02/J-POLI-NEGRONI-COCKTAIL-25-liquore-070-L-w.jpg
23001	Campos Reales, Canforrales Nature Red	1VN1465-2191	700	t	2026-03-17 09:09:43.57267	2026-03-17 09:09:43.572672	489	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/02/cr-canforrales-nature-tempranilo-syrah-w.jpg
23002	Campos Reales, Canforrales Nature Sin Sulfitos	1VN1466-2192	830	t	2026-03-17 09:09:43.572677	2026-03-17 09:09:43.572679	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/02/CAMPOS-REAL-CANFORR-NATURE-SIN-SULFITOS.jpg
23003	Sattlerhof, Ried Kapellenweingarten Sauvignon blanc	1VN1418-2193	3350	t	2026-03-17 09:09:43.572685	2026-03-17 09:09:43.572687	11	VINO > BIJELA	
23004	Vina Bora, Maraština	1V9992-2194	1890	t	2026-03-17 09:09:43.572692	2026-03-17 09:09:43.572695	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/02/bora-marastina-w.jpg
23005	Silvio Carta, Sard Orange liker	1R0532-2195	2730	t	2026-03-17 09:09:43.5727	2026-03-17 09:09:43.572702	88	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/silvio-carta-orange-w.jpg
23006	Zotter, "Strawberry Bunny" bijela čokol. s punjenjem 70g	1H-16491-2196	490	t	2026-03-17 09:09:43.572708	2026-03-17 09:09:43.57271	8	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/ZOTTER-COKOLADA-STRAWBERRY-BUNNY-16491-70g-w.jpg
23007	Zotter, Mlij. čok. s karamelom+Orašasti plodovi i grožđe 70g	1H-25864-2197	490	t	2026-03-17 09:09:43.572716	2026-03-17 09:09:43.572718	40	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/ZOTTER-COKOLADA-ORASASTI-PLODOVI-I-GROZDICE-25864-70g-w.jpg
23008	Zotter, "Crvene ruže marzipan i malina" mliječna čokolada s punjenjem 70g	1H-16940-2198	490	t	2026-03-17 09:09:43.572723	2026-03-17 09:09:43.572726	5	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/ZOTTER-COKOLADA-CRVENA-RUZA-I-MALINA-16940-70g-w.jpg
23009	Zotter, "Endorphine" Uskršnji mix 24g	1H-17815-2199	455	t	2026-03-17 09:09:43.572731	2026-03-17 09:09:43.572733	19	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/ZOTTER-PRALINE-EASTER-MIX-17815-24g-w.jpg
23010	Zotter, "A Gift for YOU!" Marc de Champagne + Malina u čokoladi 70 g	1H-16481-2200	490	t	2026-03-17 09:09:43.572739	2026-03-17 09:09:43.572741	23	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/ZOTTER-COKOLADA-A-GIFT-FOR-YOU-16473-70g-w.jpg
23011	Bumbu The Original Rum 40%	1R00398-2201	3500	t	2026-03-17 09:09:43.572746	2026-03-17 09:09:43.572748	32	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/BUMBU-ORIGINAL-W.jpg
23012	Domaine de La Verde, Odyssey A.O.P. Vacqueyras Blanc	1VN1467-2202	1630	t	2026-03-17 09:09:43.572754	2026-03-17 09:09:43.572756	29	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/LA-VERDE-ODYSSEY-075-L-w.jpg
23013	Domaine de La Verde, Prélude A.O.P. Vacqueyras Rouge	1VN1468-2203	1530	t	2026-03-17 09:09:43.572762	2026-03-17 09:09:43.572764	53	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/LA-VERDE-PRELUDE-w.jpg
23014	San Marzano, Tramari Rose di Primitivo Salento IGP	1VN1092-2204	850	t	2026-03-17 09:09:43.572769	2026-03-17 09:09:43.572771	64	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/SAN-MARZANO-TRAMARI-ROSE-W.jpg
23015	Domaine de La Verde, ORA A.O.P. Vacqueyras Rouge	1VN1469-2205	1850	t	2026-03-17 09:09:43.572777	2026-03-17 09:09:43.572779	95	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/LA-VERDE-ORA-075-L-w.jpg
23016	Domaine de La Verde, Alpha-Oméga A.O.P. Vacqueyras Rouge	1VN1470-2206	3080	t	2026-03-17 09:09:43.572785	2026-03-17 09:09:43.572787	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/LA-VERDE-ALPHA-OMEGA-w.jpg
23017	Domaine de La Verde, ORA A.O.P. Vacqueyras Rouge Magnum	1VN1472-2207	5180	t	2026-03-17 09:09:43.572792	2026-03-17 09:09:43.572794	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/LA-VERDE-ORA-075-L-w.jpg
23018	Domaine de La Verde, Royal Sunset A.O.P. Vacqueyras Rosé	1VN1471-2208	1220	t	2026-03-17 09:09:43.5728	2026-03-17 09:09:43.572802	40	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/LA-VERDE-ROYAL-SUNSET-rose-w.jpg
23019	Domaine Brunely, Châteauneuf-du-Pape Rouge	1VN1473-1-2209	2980	t	2026-03-17 09:09:43.572821	2026-03-17 09:09:43.572824	109	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/brunely-chateauneuf-du-pape-w.jpg
23020	Domaine Brunely, Châteauneuf-du-Pape Rouge Magnum	1VN1474-1-2210	6330	t	2026-03-17 09:09:43.57283	2026-03-17 09:09:43.572833	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/brunely-chateauneuf-du-pape-w.jpg
23021	Domaine Brunely, Gigondas Rouge	1VN1475-2211	2200	t	2026-03-17 09:09:43.572838	2026-03-17 09:09:43.57284	52	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/brunely-gigondas-tresor-rouge-w.jpg
23022	Domaine Brunely, Gigondas Rouge Magnum	1VN1476-2212	4700	t	2026-03-17 09:09:43.572846	2026-03-17 09:09:43.572848	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/brunely-gigondas-tresor-rouge-w.jpg
23023	Domaine Brunely, Cotes du Rhone Villages Massif d’Uchaux	1VN1477-1-2213	990	t	2026-03-17 09:09:43.572853	2026-03-17 09:09:43.572855	83	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/brunely-massif-uchaux-CDR-villages-rouge-w.jpg
23024	Domaine Brunely, Les Secrets de la Licorne Vacqueyras Rouge KARTON 6x0,75	VIVAT2214-2214	1550	t	2026-03-17 09:09:43.572861	2026-03-17 09:09:43.572864	27	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/brunely-secrets-licorne-vacqueyras-w.jpg
23025	Prats &amp; Symington, Post Scriptum de Chryseia	1VN834-2215	2350	t	2026-03-17 09:09:43.572869	2026-03-17 09:09:43.572871	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/post-scriptum-w.jpg
23026	Bouvet Ladubay, Célestine Sureau Extra Dry (Bazga)	1ŠN639-2216	1190	t	2026-03-17 09:09:43.572877	2026-03-17 09:09:43.572879	64	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/celestine-w.jpg
23027	Graham's, Tawny Port 10 Y.O. Mini	1PN46-2217	1180	t	2026-03-17 09:09:43.572884	2026-03-17 09:09:43.572886	61	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/GRAHAMS-PORT-10-god.-20vol-075-L-vino-w.jpg
23028	Briottet, Liqueur de Rose / Ruža 18%	1R0416-2218	1550	t	2026-03-17 09:09:43.572892	2026-03-17 09:09:43.572894	16	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/briottet-rose-w.jpg
23029	Aura, Premium Pelinkovac Victoris 31.2%	1R2267-2219	2800	t	2026-03-17 09:09:43.572899	2026-03-17 09:09:43.572901	163	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/AURA-PREMIUM-PELINKOVAC-VICTORIS-LIKER.jpg
23030	Saint Hills, Frenchie	1V036852-2220	2490	t	2026-03-17 09:09:43.572907	2026-03-17 09:09:43.572909	3	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/SAINTS-HILLS-FRENCHIE-w.jpg
23031	Veralda, Dorata Malvazija	1VN1552-2221	2020	t	2026-03-17 09:09:43.572914	2026-03-17 09:09:43.572916	10	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/VERALDA-MALVAZIJA-DORATA.jpg
23032	Can Bas, La Capella Syrah-Cab	1VN1484-2222	3470	t	2026-03-17 09:09:43.572922	2026-03-17 09:09:43.572924	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/CAN-BAS-LA-CAPELLA-w.jpg
23033	Can Bas, D'Origen Muscat P5	1VN1485-1-2223	2290	t	2026-03-17 09:09:43.572929	2026-03-17 09:09:43.572932	28	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/CAN-BAS-D-ORIGEN-P5-MUSCAT-w.jpg
23034	Val de Vid, Verdejo	1VN1479-2224	920	t	2026-03-17 09:09:43.572937	2026-03-17 09:09:43.572939	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/VAL-DE-VID-VERDEJO-w.jpg
23035	Pago de Cirsus, Chardonnay	1VN1480-2225	1100	t	2026-03-17 09:09:43.572945	2026-03-17 09:09:43.572947	32	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/PAGO-DE-CIRSUS-CHARDONNAY-w.jpg
23036	Pago de Cirsus, Vendimia Seleccionada	1VN1481-2226	1190	t	2026-03-17 09:09:43.572952	2026-03-17 09:09:43.572954	100	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/PAGO-DE-CIRSUS-SELECCIONADA-w.jpg
23037	Pago de Cirsus, Oak Aged	1VN1482-2227	790	t	2026-03-17 09:09:43.57296	2026-03-17 09:09:43.572962	208	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/PAGO-DE-CIRSUS-OAK-AGED-w.jpg
23038	Michel Rolland &amp; Javier Galarreta, Clos d'En Ferran	1VN1483-2228	4500	t	2026-03-17 09:09:43.572967	2026-03-17 09:09:43.57297	120	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/04/ROLLAND-GALARETTA-CLOS-DEN-FERRAN-PRIORAT-w.jpg
23039	Ciemme Limoncello	1R647200-2229	1350	t	2026-03-17 09:09:43.572975	2026-03-17 09:09:43.572977	37	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/Ciemme-Limoncello-w.jpg
23040	Strega Liquore	1R647645-2230	2450	t	2026-03-17 09:09:43.572983	2026-03-17 09:09:43.572985	17	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/STREGA-LIQUORE-40-070-L-liker-w.jpg
23041	Pallini Limoncello Liqueur	1R648221-2231	1690	t	2026-03-17 09:09:43.57299	2026-03-17 09:09:43.572992	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/PALLINI-LIMONCELLO-26-070-L-w.jpg
23042	Shinsei Blended Whisky	1R673654-02-2232	3600	t	2026-03-17 09:09:43.572997	2026-03-17 09:09:43.573	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/SHINSEI-BLENDED-WHISKY-405-WHISKY-070-L-w.jpg
23043	Pulltex, Domestic Set	1D10920400-2233	3995	t	2026-03-17 09:09:43.573006	2026-03-17 09:09:43.573009	1	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/PULLTEX-SET-4-KOM-ZA-BOCU-VIN-O-LINE-109204-2w.jpg
23044	Sacchetto, Rosato Veneto Frizzante 0,20 L	1ŠN128-2234	340	t	2026-03-17 09:09:43.573014	2026-03-17 09:09:43.573016	277	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/1SN128.jpg
23045	Manincor, Il Conte	1VN558-1-2235	2350	t	2026-03-17 09:09:43.573022	2026-03-17 09:09:43.573024	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/manincor-il-conte-w.jpg
23046	San Marzano, Tramari Rose Art Edition by G.S.	1VN1489-2236	880	t	2026-03-17 09:09:43.57303	2026-03-17 09:09:43.573032	21	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/tramari-art-w.jpg
23047	Clai, Ottocento Crni	1V00061-2237	2690	t	2026-03-17 09:09:43.573037	2026-03-17 09:09:43.573039	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/clai-ottocento-crni-w.jpg
23048	Cusumano, Angimbe	1VN1490-1-2238	1150	t	2026-03-17 09:09:43.573045	2026-03-17 09:09:43.573047	24	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/1VN1490-angimbe-w.jpg
23049	Cusumano, Lucido Catarratto	1VN1491-2239	950	t	2026-03-17 09:09:43.573052	2026-03-17 09:09:43.573055	28	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/1VN1491-LUCIDO-W.jpg
23050	Cusumano, Salealto cuvee	1VN1492-2240	2680	t	2026-03-17 09:09:43.57306	2026-03-17 09:09:43.573062	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/cusumano-saleato-1VN1492-w.jpg
23051	Cusumano, Jale Chardonnay	1VN1493-2241	2190	t	2026-03-17 09:09:43.573067	2026-03-17 09:09:43.573069	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/cusumano-jale-1VN1493-w.jpg
23052	Cusumano, Shamaris Grillo DOC	1VN1494-2242	1295	t	2026-03-17 09:09:43.573075	2026-03-17 09:09:43.573077	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/CUSUMANO-1VN1494-SHAMARIS-W.jpg
23053	Cusumano, Nero d'Avola DOC	1VN1496-2243	1100	t	2026-03-17 09:09:43.573082	2026-03-17 09:09:43.573084	254	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/cusumano-1VN1496-nero-d-avola-w.jpg
23054	Cusumano, Disueri Nero d'Avola DOC	1VN1495-2244	1290	t	2026-03-17 09:09:43.57309	2026-03-17 09:09:43.573092	38	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/cusumano-disueri-1VN1495-w.jpg
23055	Cusumano, Disueri Nero d'Avola DOC Magnum	1VN1497-2245	2850	t	2026-03-17 09:09:43.573097	2026-03-17 09:09:43.5731	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/cusumano-disueri-1VN1495-w.jpg
23056	Cusumano, Benuara Nero d'Avola - Syrah	1VN122-2246	1490	t	2026-03-17 09:09:43.573105	2026-03-17 09:09:43.573107	137	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/CUSUMANO-BENUARA-1VN122-W.jpg
23057	Cusumano, Noà Cuvee	1VN126-2247	3560	t	2026-03-17 09:09:43.573113	2026-03-17 09:09:43.573115	39	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/cusumano-noa-1VN126-w.jpg
23058	Cusumano, Sagana Nero d'Avola DOC	1VN125-2248	3580	t	2026-03-17 09:09:43.57312	2026-03-17 09:09:43.573122	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/CUSUMANO-SAGANA-1VN125-W.jpg
23059	Cusumano, Alta Mora Feudo di Mezzo Etna Rosso Doc	1VN1498-2249	3850	t	2026-03-17 09:09:43.573127	2026-03-17 09:09:43.57313	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/cusumano-etna-rosso-feudo-di-mezzo-1VN1498-w.jpg
23060	Juan Gil, Clar Del Bosc D.O.Q. Priorat	1VN1501-2250	4380	t	2026-03-17 09:09:43.573135	2026-03-17 09:09:43.573137	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/JUAN-GIL-CLAR-DEL-BOSC-PRIORAT-W.jpg
23061	Juan Gil, Minairo D.O.Q. Priorat	1VN1502-2251	2150	t	2026-03-17 09:09:43.573142	2026-03-17 09:09:43.573144	34	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/JUAN-GIL-MINAIRO-PRIORAT-w.jpg
23062	Bodegas Borsao, Bole Magnum	1VN1503-2252	1800	t	2026-03-17 09:09:43.57315	2026-03-17 09:09:43.573152	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/borsao-bole-magnum-w.jpg
23063	Bodegas Borsao, Tres Picos Magnum	1VN1184-2253	4000	t	2026-03-17 09:09:43.573158	2026-03-17 09:09:43.57316	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/tres-picos-borsao.jpg
23064	Haras de Pirque Ecral Gran Reserva Carmenere	1VN1488-2254	2880	t	2026-03-17 09:09:43.573165	2026-03-17 09:09:43.573167	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/HARAS-DE-PIRQUE-ECRAL-CARMENERE-GRAN-RESERVA-w.jpg
23065	Kotal, Kuš (Kadulja) Liker 40%	1R3002-2255	2990	t	2026-03-17 09:09:43.573173	2026-03-17 09:09:43.573175	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/kotal-kus-w.jpg
23066	Jankara, Cannonau di Sardegna Riserva DOC	1VN1507-2256	3740	t	2026-03-17 09:09:43.573181	2026-03-17 09:09:43.573183	42	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/JANKARA-CANNONAU-DI-SARDEGNA-RISERVA.jpg
23068	Jankara, Lu Nieddu Colli del Limbara	1VN1506-2258	2390	t	2026-03-17 09:09:43.573196	2026-03-17 09:09:43.573198	101	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/JANKARA-COLLI-DEL-LIMBARA-LU-NIEDDU-W.jpg
23069	Cantina Girlan, Pinot noir "CURLAN" Riserva	1VN1500-2259	10500	t	2026-03-17 09:09:43.573203	2026-03-17 09:09:43.573205	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/GIRLAN-CURLAN-PINOT-NOIR-RISERVA-2020-075L.jpg
23070	Taittinger, Prestige Rose Brut Champagne 0,375	1ŠN340-2260	3750	t	2026-03-17 09:09:43.573211	2026-03-17 09:09:43.573213	23	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/TAITTINGER-PRESTIGE-ROSE-BRUT-champagne-0375-L.jpg
23071	Taittinger, Prestige Rose Brut Champagne 1,5 Magnum	1ŠN344-2261	13500	t	2026-03-17 09:09:43.573219	2026-03-17 09:09:43.573221	1	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/TAITTINGER-PRESTIGE-ROSE-BRUT-CHAMPAGNE-15-L-w.jpg
23072	Taittinger, Brut Reserve Champagne 1,5l Magnum	1ŠN85-2262	10950	t	2026-03-17 09:09:43.573251	2026-03-17 09:09:43.573254	2	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/TAITTINGER-BRUT-RESERVE-CHAMPAGNE-Magnum-15L-w.jpg
23073	Taittinger, Brut Reserve Champagne 3l Jeroboam	1ŠN86-2263	24950	t	2026-03-17 09:09:43.57326	2026-03-17 09:09:43.573262	13	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/Brut-Reserve-3L-jeroboam-box-w.jpg
23074	Taittinger, Brut Reserve Champagne 6 L Methusalem	1ŠN87-2264	47000	t	2026-03-17 09:09:43.573268	2026-03-17 09:09:43.57327	3	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/Brut-Reserve-6L-mathusalem-box-w.jpg
23075	Caliterra, Cabernet sauvignon Reserva	1VN190-2265	890	t	2026-03-17 09:09:43.573275	2026-03-17 09:09:43.573278	767	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/caliterra-cabernet-sauvignon-reserva-w.jpg
23076	Caliterra, Merlot Reserva	1VN1516-2266	890	t	2026-03-17 09:09:43.573283	2026-03-17 09:09:43.573285	345	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/caliterra-merlot-reserva-w.jpg
23077	Canevel Prosecco Superiore Brut  'Setàge' Valdobbiadene DOCG	1ŠN0100-2267	1770	t	2026-03-17 09:09:43.573291	2026-03-17 09:09:43.573293	130	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/CANEVEL-SETAGE-PROSECCO-VALDOB-DOCG-Brut-w.jpg
23078	Josef Fischer, Riesling Ried Kirnberg Smaragd	1VN1512-2268	3750	t	2026-03-17 09:09:43.573298	2026-03-17 09:09:43.5733	36	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/J.FISCHER-RIESLING-SMARAGD-KIRNBERG-w.jpg
23079	Josef Fischer, Gruner Veltliner Ried Frauenweingarten Smaragd	1VN1511-2269	3490	t	2026-03-17 09:09:43.573306	2026-03-17 09:09:43.573308	18	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/Josef-Fischer-Gruner-Veltliner-Ried-Frauenweingarten-Smaragd-w.jpg
23080	Sacchetto, Glera "Etichetta nera" Millesimato Spumante Brut	1ŠN785-2270	790	t	2026-03-17 09:09:43.573314	2026-03-17 09:09:43.573316	680	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/sacchetto-et-nera-brut-750-w.jpg
23081	Domaine Rolet, Arbois Rouge "Tradition"	1VN1510-2271	2050	t	2026-03-17 09:09:43.573321	2026-03-17 09:09:43.573323	74	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/rolet-arbois-jura-tradition-rouge-w.jpg
23082	Domaine Rolet, Cotes du Jura "Tradition"	1VN1509-2272	3060	t	2026-03-17 09:09:43.573329	2026-03-17 09:09:43.573331	22	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/rolet-cotes-du-jura-tradition-w.jpg
23083	Domaine Rolet, L'Étoile Chardonnay	1VN1508-2273	2390	t	2026-03-17 09:09:43.573336	2026-03-17 09:09:43.573338	2	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/ROLET-L-ETOILE-BLANC-CHARDONNAY-W.jpg
23084	Domaine Rolet, Cremant du Jura Blanc Brut	1Š00240-2274	1980	t	2026-03-17 09:09:43.573344	2026-03-17 09:09:43.573346	38	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/DOMAINE-ROLET-CREMANT-DU-JURA-BLANC-BRUT-W.jpg
23085	Henri Bourgeois, Les Ruchons Sancerre Blanc	1VN1504-2275	5400	t	2026-03-17 09:09:43.573352	2026-03-17 09:09:43.573355	12	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/HENRI-BOURGEOIS-Les-Ruchons-Sancerre-Blanc-W.jpg
23086	Domaine Guerrin &amp; Fils, Pouilly-Fuisse Les Croux	1VN1517-1-2276	3200	t	2026-03-17 09:09:43.57336	2026-03-17 09:09:43.573362	120	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/GUERRIN-pouilly-fuisse-les-croux-W.jpg
23087	Domaine Guerrin &amp; Fils, Macon-Vergisson	1VN1518-2277	1795	t	2026-03-17 09:09:43.573368	2026-03-17 09:09:43.57337	28	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/GUERRIN-E-F-MACON-VERGISSON-w.jpg
23088	Veralda, Castagnari Malvazija	1Š149-2278	2400	t	2026-03-17 09:09:43.573375	2026-03-17 09:09:43.573378	5	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/veralda-castagnari-w.jpg
23089	Jacopo Poli, Marconi 44 Agrumato dry Gin 44%vol	1RN076-2279	3690	t	2026-03-17 09:09:43.573383	2026-03-17 09:09:43.573385	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/agrumato-poli-marconi-44-w.jpg
23090	Clai, Ottocento Pinot Sivi	1V000655-2280	3300	t	2026-03-17 09:09:43.57339	2026-03-17 09:09:43.573392	1	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/CLAI-OTTOCENTO-PINOT-SIVI.jpg
23091	Monte Zovo, Ceruleo Rosso Veronese	1VN1499-2281	1380	t	2026-03-17 09:09:43.573398	2026-03-17 09:09:43.5734	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/MONTE-ZOVO-CERUELO-ROSSO-VERONESE-w.jpg
23092	Sacchetto, Mille Bolle Alcohol Free Sparkling	1ŠN1514-2282	900	t	2026-03-17 09:09:43.573406	2026-03-17 09:09:43.573408	114	PJENUŠAVA VINA > BEZALKOHOLNA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/sacchetto-mille-bolle-alco-free-w.jpg
23093	Henri Bourgeois, Petit Bourgeois Sauvignon Blanc 6 x 0,75	VIVAT2283-2283	1280	t	2026-03-17 09:09:43.573414	2026-03-17 09:09:43.573416	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/H.BOURGEOIS-PETIT-BOURGEOIS-SAUVIGNON-BLANC-w.jpg
23094	Orimos Grande Reserve Rouge Magnum KARTON 6x1,5	1VN1430-1-2284	2420	t	2026-03-17 09:09:43.573421	2026-03-17 09:09:43.573424	184	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/10/ORIMOS-GRANDE-RESERVE-ROUGE-15-L-w.jpg
23095	Sattlerhof, Sauvignon Blanc Gamlitz Klassik KARTON 6X0,75	VIVAT2285-2285	2110	t	2026-03-17 09:09:43.573429	2026-03-17 09:09:43.573432	38	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN810-3-1.jpg
23097	N. Maillart, Platine Premier Cru Champagne Extra Brut KARTON 6X0,75	1ŠN908-1-2287	4690	t	2026-03-17 09:09:43.573447	2026-03-17 09:09:43.573449	15	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/N.-MAILLART-PLATINE-1er-CRU-CHAMPAGNE-EXTRA-BRUT-075-L.jpg
23098	Taittinger, Brut Reserve Champagne KARTON 6X0,75	1ŠN41-1-2288	5300	t	2026-03-17 09:09:43.573455	2026-03-17 09:09:43.573457	37	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/Taittinger-brut-reserve-2023.jpg
23099	Raventos i Blanc, Blanc de Blancs Vintage Extra Brut KARTON 6X0,75	1ŠN606-1-2289	1950	t	2026-03-17 09:09:43.573463	2026-03-17 09:09:43.573465	15	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/RAVENTOS-i-BLANC-BLANC-de-BLANCS-extra-brut-w.jpg
23100	Sacchetto, Prosecco Asolo DOCG Brut KARTON 6X0,75	1ŠN781-1-2290	850	t	2026-03-17 09:09:43.573471	2026-03-17 09:09:43.573473	8	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2022/07/SACCHETTO-PROSECCO-ASOLO-BRUT-DOCG-pjenusavo-vino-075-L.jpg
23101	Villa Maria, Private Bin Sauvignon Blanc KARTON 6X0,75	1VN1320-1-2291	1250	t	2026-03-17 09:09:43.573479	2026-03-17 09:09:43.573481	8	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/villa-maria-sbl-w.jpg
23102	Salentein, Barrel Selection Malbec KARTON 6X0,75	1VN990-1-2292	1495	t	2026-03-17 09:09:43.573487	2026-03-17 09:09:43.573489	26	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN990.jpg
23103	Prunotto, Bansella Nizza Barbera KARTON 6X0,75	1VN1135-1-2293	1686	t	2026-03-17 09:09:43.573495	2026-03-17 09:09:43.573497	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1135.jpg
23104	Guado al Tasso Il Bruciato Bolgheri KARTON 6X0,75	1VN629-1-2294	2760	t	2026-03-17 09:09:43.573503	2026-03-17 09:09:43.573505	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/il-bruciatoW.jpg
23105	Cusumano, Nero d'Avola DOC KARTON 6X0,75	1VN1496-1-2295	1100	t	2026-03-17 09:09:43.573511	2026-03-17 09:09:43.573513	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/cusumano-1VN1496-nero-d-avola-w.jpg
23106	Cusumano, Shamaris Grillo KARTON 6X0,75	1VN1494-1-2296	1295	t	2026-03-17 09:09:43.573518	2026-03-17 09:09:43.57352	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/CUSUMANO-1VN1494-SHAMARIS-W.jpg
23107	Monte Zovo, Wohlgemuth Pinot Grigio KARTON 6X0,75	1VN1174-1-2297	1530	t	2026-03-17 09:09:43.573526	2026-03-17 09:09:43.573528	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1174.jpg
23108	Cantina Girlan, 448 m.s.l. cuvee bianco KARTON 6X0,75	1VN1257-1-2298	1030	t	2026-03-17 09:09:43.573534	2026-03-17 09:09:43.573536	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/girlan-448-biancoW.jpg
23109	Masi, Campofiorin KARTON 6 X 0,75	1VN5-1-2299	1670	t	2026-03-17 09:09:43.573542	2026-03-17 09:09:43.573544	13	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN5.jpg
23110	Errazuriz, Pinot noir Aconcagua Costa 2019 KARTON 6x0,75	1VN1049-1-2300	2044	t	2026-03-17 09:09:43.57355	2026-03-17 09:09:43.573552	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/04/errazuriz-aconcagua-costa-pn-W.jpg
23111	Penfolds, Rawson's Retreat Shiraz Cabernet KARTON 6x0,75	1VN86-2-1-2301	880	t	2026-03-17 09:09:43.573557	2026-03-17 09:09:43.57356	30	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN86.jpg
23112	Fosso Corno, Zeresimo KARTON 6x0,75	1VN1293-1-2302	1850	t	2026-03-17 09:09:43.573565	2026-03-17 09:09:43.573568	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/zeresimo-fosso-w2.jpg
23113	San Marzano, Il Pumo Malvasia Sauvignon KARTON 6x0,75	1VN1121-1-2303	785	t	2026-03-17 09:09:43.573573	2026-03-17 09:09:43.573575	37	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1121.jpg
23114	Perrin, Cotes du Rhone Reserve Blanc KARTON 6x0,75	1VN616-K-2304	1150	t	2026-03-17 09:09:43.573581	2026-03-17 09:09:43.573583	240	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/perrin-cotes-du-rhone-blanc-reserve-w.jpg
23115	Mayer am Pfarrplatz, Zweigelt KARTON 6x0,75	1VN1425-1-2305	1290	t	2026-03-17 09:09:43.573589	2026-03-17 09:09:43.573591	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/09/MAYER-AM-PF.-ZWEIGELT-075-L-w.jpg
23116	Conde Vimioso Sommelier Edition Tinto KARTON 6x0,75	1VN1334-1-2306	1400	t	2026-03-17 09:09:43.573596	2026-03-17 09:09:43.573598	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/Falua-conde-vimioso-sommelier-edition-W.jpg
23117	Atalaya, La Atalaya del Camino KARTON 6x0,75	1VN1142-1-2307	1580	t	2026-03-17 09:09:43.573604	2026-03-17 09:09:43.573606	19	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/il-camino.jpg
23118	Bodegas Borsao, Zarihs Shiraz KARTON 6x0,75	1VN1337-1-2308	1680	t	2026-03-17 09:09:43.573612	2026-03-17 09:09:43.573614	29	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/borsao-zarihs-w.jpg
23119	Nordés, Atlantic Galician Gin KARTON 6x0,75	1R0354-1-2309	3130	t	2026-03-17 09:09:43.57362	2026-03-17 09:09:43.573622	28	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0354-1.jpg
23120	Master's London Dry Gin 40%vol KARTON 6 x 0,70 (Kopiraj)	1R0305-1-2310	2190	t	2026-03-17 09:09:43.573628	2026-03-17 09:09:43.57363	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/masters-new4w.jpg
23121	Master's London Dry Gin	1R0305-2311	2190	t	2026-03-17 09:09:43.573636	2026-03-17 09:09:43.573638	274	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/masters-new4w.jpg
23122	Josef Fischer, Riesling Ried Kirnberg Smaragd KARTON 6x0,75	1VN1512-1-2312	3750	t	2026-03-17 09:09:43.573644	2026-03-17 09:09:43.573646	11	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/J.FISCHER-RIESLING-SMARAGD-KIRNBERG-w.jpg
23123	Wieninger, Wiener Riesling  KARTON 6x0,75	1VN677-5-1-2313	1360	t	2026-03-17 09:09:43.573665	2026-03-17 09:09:43.573668	14	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/wieninger-w-riesling-w.jpg
23124	Cognac Leyrat X.O. Hors D'Âge Single Estate Cognac 40% Giftbox	1R643135-2314	12000	t	2026-03-17 09:09:43.573674	2026-03-17 09:09:43.573677	6	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2024/07/LEYRAT-XO-HORS-DAGE-COGNAC-GP-40-070-L-W.jpg
23125	Gautier Cognac XO PINAR DEL RIO Exclusive Cigar Blend 41,2% Giftbox	1R651094-2315	10640	t	2026-03-17 09:09:43.573682	2026-03-17 09:09:43.573684	7	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2024/08/GAUTIER-XO-PINAR-DEL-RIO-COGNAC-GP-412-070-L-W.jpg
23126	Godet Cognac XO TERRE Giftbox	1R1643108-2316	11600	t	2026-03-17 09:09:43.57369	2026-03-17 09:09:43.573692	1	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2024/08/1R1643108-w.jpg
23127	Guado al Tasso Il Bruciato Bolgheri Magnum	1VN938-2317	6250	t	2026-03-17 09:09:43.573699	2026-03-17 09:09:43.573701	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2021/03/il-bruciatoW.jpg
23128	Matković, L'Amour Marselan	1V225588-2318	1800	t	2026-03-17 09:09:43.573707	2026-03-17 09:09:43.573709	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/08/MATKOVIC-LAMOUR.jpg
23129	Matković, Di-Mare Cuvée	1V225589-2319	3995	t	2026-03-17 09:09:43.573715	2026-03-17 09:09:43.573717	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/08/MATKOVIC-DI-MARE-CUVEE.jpg
23130	Spiegelau, Special Glasses Champagne Sparkling Party - 250ml	4900329-1-2320	5940	t	2026-03-17 09:09:43.573722	2026-03-17 09:09:43.573724	1	ČAŠE I VINSKI PRIBOR	
23131	Spiegelau, Special Glasses Champagne Sparkling Party - 450ml	4900327-1-2321	5940	t	2026-03-17 09:09:43.57373	2026-03-17 09:09:43.573732	18	ČAŠE I VINSKI PRIBOR	
23132	Aura, Rakija Dunja 40%	1R2626-2322	2600	t	2026-03-17 09:09:43.573738	2026-03-17 09:09:43.57374	34	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/aura-dunja.jpg
23133	Aura, Rakija Williams 40%	1R2625-2323	2600	t	2026-03-17 09:09:43.573745	2026-03-17 09:09:43.573747	51	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/aura-williams.jpg
23134	Zotter, "Šljivovica" čokolada s punjenjem 70 g	1H-16084-2324	540	t	2026-03-17 09:09:43.573753	2026-03-17 09:09:43.573755	7	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-RAKIJA-SLJIVOVICA-16084-70g-w.jpg
23135	Zotter, "Yuzu Citrus" čokolada s punjenjem 70 g	1H-16500-2325	540	t	2026-03-17 09:09:43.573761	2026-03-17 09:09:43.573763	20	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-YUZU-CITRUS-16500-70g-w.jpg
23136	Zotter, "Dark Choco Mousse" čokolada s punjenjem 70 g	1H-16545-2326	540	t	2026-03-17 09:09:43.573768	2026-03-17 09:09:43.57377	13	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-DARK-COKO-MOUSSE16545-70g-w.jpg
23137	Zotter, "Tangerine - Matcha - Kokos" čokolada s punjenjem 70 g	1H-16604-2327	540	t	2026-03-17 09:09:43.573776	2026-03-17 09:09:43.573778	20	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-TANDERINA-MATCHA-KOKOS-w.jpg
23138	Zotter, "Bacon Spectacle" čokolada s punjenjem 70 g	1H-16933-2328	540	t	2026-03-17 09:09:43.573784	2026-03-17 09:09:43.573786	9	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-BACON-SPECTACLE16933-70g-w.jpg
23139	Zotter, "Cheesecake" čokolada s punjenjem 70 g	1H-16968-2329	540	t	2026-03-17 09:09:43.573792	2026-03-17 09:09:43.573794	17	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-CHEESECAKE-16968-70g-w.jpg
23140	Zotter, "Soul Food" čokolada s punjenjem 70 g	1H-16972-2330	540	t	2026-03-17 09:09:43.573799	2026-03-17 09:09:43.573801	16	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-SOUL-FOOD-16972-70g-w.jpg
23141	Zotter, "Kikiriki - Karamela" čokolada s punjenjem 70 g	1H-16974-2331	540	t	2026-03-17 09:09:43.573807	2026-03-17 09:09:43.573809	5	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-KIKIRIKI-KARAMEL-16974-70g-w.jpg
23142	Zotter, "Sibirska borovnica + Lavanda" čokolada s punjenjem 70 g	1H-16976-2332	540	t	2026-03-17 09:09:43.573815	2026-03-17 09:09:43.573817	26	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-SIBIRSKA-BOROVNICA-I-LAVANDA-16976-70g-w.jpg
23143	Zotter, "Mango Chili" čokolada s punjenjem 70 g	1H-16977-2333	540	t	2026-03-17 09:09:43.573822	2026-03-17 09:09:43.573824	37	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-MANGO-CILI-16977-70-g-w.jpg
23144	Zotter, "Cherry &amp; Nut Waffle" čokolada s punjenjem 70 g	1H-16982-2334	540	t	2026-03-17 09:09:43.57383	2026-03-17 09:09:43.573832	7	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-COKOLADA-VISNJA-LJESNJAK-VAFL-16982-70g-w.jpg
23145	Zotter, "Coffee Toffee" mini čokolada s punjenjem 20 g	1H-18889-2335	225	t	2026-03-17 09:09:43.573838	2026-03-17 09:09:43.57384	8	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-MINI-COKOLADA-COFFEE-TOFFEE-18889-20g-w.jpg
23146	Zotter, "Whisky + Caramel + Pecan" mini čokolada s punjenjem 20 g	1H-18894-2336	225	t	2026-03-17 09:09:43.573846	2026-03-17 09:09:43.573848	8	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-MINI-COKOLADA-VISKOKARAMELPEKAN-18894-20g-w.jpg
23147	Zotter, "Mango Tango" mini čokolada s punjenjem 20 g	1H-18892-2337	225	t	2026-03-17 09:09:43.573853	2026-03-17 09:09:43.573855	29	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-MINI-COKOLADA-MANGO-TANGO-18892-20g-w.jpg
23148	Zotter, 72% Opus 5 čokolada 70 g	1H-20640-2338	540	t	2026-03-17 09:09:43.573861	2026-03-17 09:09:43.573863	23	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/ZOTTER-LABOOKO-COKOLADA-72-2024-OPUS-5-20640-70g-w.jpg
23149	Canevel Prosecco Superiore Extra Brut Terre del Faè Valdobbiadene DOCG	1ŠN0101-2339	2170	t	2026-03-17 09:09:43.573869	2026-03-17 09:09:43.573871	89	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2024/09/Canevel-Prosecco-Superiore-Extra-Brut-Terre-del-Fae-Valdobbiadene-DOCG-W.jpg
23150	Spiegelau, Hi-Lite Burgundy set od 2 čaše	1750160-2340	3950	t	2026-03-17 09:09:43.573877	2026-03-17 09:09:43.573879	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/hi-lite-spiegelau-burgundy-w.jpg
23151	Spiegelau, Hi-Lite Bordeaux set od 2 čaše	1750165-2341	3950	t	2026-03-17 09:09:43.573885	2026-03-17 09:09:43.573887	12	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2024/12/hi-lite-spiegelau-bordeaux-1-w.jpg
23152	Spiegelau, Hi-Lite Universal set od 2 čaše	1750161-2342	3950	t	2026-03-17 09:09:43.573892	2026-03-17 09:09:43.573895	4	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/hi-lite-spiegelau-universal-w.jpg
23153	Spiegelau, Hi-Lite Champagne set od 2 čaše	1750169-2343	3950	t	2026-03-17 09:09:43.5739	2026-03-17 09:09:43.573902	11	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/hi-lite-spiegelau-champagne-w.jpg
23154	Fosso Corno, Montepulciano D’Abruzzo DOC Riserva 2XGOLD MEDAL	1VN1519-2344	1390	t	2026-03-17 09:09:43.573908	2026-03-17 09:09:43.57391	37	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/10/FOSSO-CORNO-Montepul-d-Abruzzo-Doc-RISERV-075-L-W.jpg
23155	Fosso Corno, ORSETTINO Montepulciano d’Abruzzo D.O.C.	1VN956-2345	970	t	2026-03-17 09:09:43.573916	2026-03-17 09:09:43.573918	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/10/Fosso-corno-Orsettino-w.jpg
23156	Manincor, Sophie	1VN1487-2346	4600	t	2026-03-17 09:09:43.573924	2026-03-17 09:09:43.573926	1	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/10/MANINCOR-SOPHIE-w.jpg
23157	Darroze, Grand Assemblage 60 ans Bas Armagnac	1R0481-2347	74500	t	2026-03-17 09:09:43.573932	2026-03-17 09:09:43.573934	1	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2024/10/DARROZE-GRAND-ASSEMBLAGE-60Y-Bas-Armagnac-42-0.70-L-w.jpg
23158	Darroze Unique Collection, Domaine la Poste 1975 Armagnac-Tenareze	1R0533-2348	25490	t	2026-03-17 09:09:43.573939	2026-03-17 09:09:43.573942	30	DESTILATI > COGNAC/ARMAGNAC	https://www.vivat-finavina.hr/wp-content/uploads/2024/10/DARROZE-DOMAINE-LA-POSTE-1975-Armagnac-Tenareze-48-070-L-W.jpg
23159	Medea, Assemblage	1VN3277-2349	1280	t	2026-03-17 09:09:43.573947	2026-03-17 09:09:43.573949	57	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/10/MEDEA-ASSEMBLAGE-W.jpg
23160	Amatller, Čokol. praline s bademom u lim.kutiji 65g	1H6826-2350	930	t	2026-03-17 09:09:43.573956	2026-03-17 09:09:43.573958	11	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/1H6826-w.jpg
23161	Simon Coll, Praline sa m.čokol. i lješnjakom u metalnoj tubi 180g	1H4717-2351	1620	t	2026-03-17 09:09:43.573967	2026-03-17 09:09:43.573969	38	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/4717-w.jpg
23162	Simon Coll, Praline s m.čokol. i lješnjakom gift box 144g	1H4683-2352	850	t	2026-03-17 09:09:43.573975	2026-03-17 09:09:43.573977	27	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/1H4683-w.jpg
23163	Treml Punsch punč Bezalkoholni Malina Vanilija	1PCH236-2353	1290	t	2026-03-17 09:09:43.573984	2026-03-17 09:09:43.573986	5	OSTALO > AROMATIZIRANA PIĆA	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/Punsch.jpg
23164	Bailoni Wachauer Gold Marillenlikör Liker od Marelice 30%	1R647060-2354	2200	t	2026-03-17 09:09:43.573991	2026-03-17 09:09:43.573993	99	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/1R647060-w.jpg
23165	Salzl, Grauburgunder Reserve (pinot sivi)	1VN1522-2355	2360	t	2026-03-17 09:09:43.573999	2026-03-17 09:09:43.574001	120	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/Salzl-Grauburgunder-Reserve-w.jpg
23166	Tres Reyes Tempranillo Syrah	1VN1521-2356	790	t	2026-03-17 09:09:43.574018	2026-03-17 09:09:43.574021	414	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/tres-reyes-tempranillo-syrah-w.jpg
23167	Tres Reyes Macabeo Verdejo	1VN1520-2357	750	t	2026-03-17 09:09:43.574027	2026-03-17 09:09:43.574029	27	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/tres-reyes-macabeo-verdejo-w.jpg
23168	Sommer, Blauer Zweigelt Schieferstein	1VN1528-2358	1960	t	2026-03-17 09:09:43.574034	2026-03-17 09:09:43.574037	49	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/1VN1528-w.jpg
23169	Sommer, Roter Vomthal	1VN15260-2359	1240	t	2026-03-17 09:09:43.574043	2026-03-17 09:09:43.574046	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/1VN1526-w.jpg
23170	Sommer, Blaufränkisch Leithaberg DAC	1VN1527-2360	2160	t	2026-03-17 09:09:43.574051	2026-03-17 09:09:43.574053	58	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/1VN1527-w.jpg
23171	Chateau des Maladrets, Beaujolais Nouveau Villages 2025	1VN597-4-2361	1180	t	2026-03-17 09:09:43.574059	2026-03-17 09:09:43.574061	4	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/maladrets-beaujolais-or-w.jpg
23172	Masca del Tacco, Piano Chiuso Primitivo di Manduria Riserva Magnum	1VN1525-2362	4400	t	2026-03-17 09:09:43.574067	2026-03-17 09:09:43.574069	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/PianoChiuso_Magnum_w.jpg
23173	Poggio Le Volpi, Baccarossa Rosso Magnum	1VN1532-2363	4140	t	2026-03-17 09:09:43.574075	2026-03-17 09:09:43.574077	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1086.jpg
23174	Jako vino, Stina Plavac mali barrique	1VO2054-2364	1650	t	2026-03-17 09:09:43.574083	2026-03-17 09:09:43.574085	48	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/11/stina-plavac-mali-w.jpg
23175	Poklon bon VIVAT FINA VINA 100€	VIVAT2365-2365	10000	t	2026-03-17 09:09:43.574091	2026-03-17 09:09:43.574093	7	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2024/12/Poklon-bon-100E-w.jpg
23176	A.H. Riise 1888 COPENHAGEN XO Rum 40% Giftbox	1R60306-2366	4500	t	2026-03-17 09:09:43.574099	2026-03-17 09:09:43.574101	14	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/12/hi-lite-spiegelau-bordeaux-1-w.jpg
23177	A.H. Riise 1888 COPENHAGEN GOLD MEDAL Special Edition Rum - Old Edition 40% Giftbox	1R605923-2367	4800	t	2026-03-17 09:09:43.574161	2026-03-17 09:09:43.574164	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2024/12/A.H.RIISE-1888-COPENHAGEN-GOLD-MEDAL-rum-w.jpg
23178	Domaine Brunely, Les Secrets de la Licorne Vacqueyras Rouge	1VN1478-1-2368	1550	t	2026-03-17 09:09:43.57417	2026-03-17 09:09:43.574172	83	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/03/brunely-secrets-licorne-vacqueyras-w.jpg
23179	Bruno Dangin, Cuvee Blanche Brut	1ŠN171-2369	2300	t	2026-03-17 09:09:43.574178	2026-03-17 09:09:43.57418	34	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2025/01/dangin-cuvee-blanche-w.jpg
23180	Bruno Dangin, Cuvee Blanche Brut Magnum 1,5l	1ŠN172-2370	5500	t	2026-03-17 09:09:43.574186	2026-03-17 09:09:43.574189	4	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2025/01/DANGIN-CUVEE-BLANCHE-BRUT-w.jpg
23181	Bruno Dangin, Prestige de Constance Extra Brut	1ŠN173-2371	3350	t	2026-03-17 09:09:43.574195	2026-03-17 09:09:43.574197	34	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2025/01/DANGIN-PRESTIGE-DE-CONSTANCE-EX-BRUT-w.jpg
23182	Bruno Dangin, Les Territoires Extra Brut	1ŠN170-2372	1890	t	2026-03-17 09:09:43.574203	2026-03-17 09:09:43.574205	131	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2025/01/dangin-les-territoires-7-cap-bott-ww.jpg
23183	Glen Grant THE MAJOR'S RESERVE Single Malt Scotch Whisky 40% 1,0l Giftbox	1R685501-2373	3180	t	2026-03-17 09:09:43.574211	2026-03-17 09:09:43.574213	29	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2023/04/1R00353-w.jpg
23184	Pulltex, vadičep Endless	1D10920100-2374	1500	t	2026-03-17 09:09:43.574219	2026-03-17 09:09:43.574221	4	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/PULLTEX-OTVARAC-ZA-BOCE-ENDLESS-VIN-O-LINE-109201-w2.jpg
23185	Pulltex, Pulltap's 2F Champagne Gold	1D10911900-2375	990	t	2026-03-17 09:09:43.574226	2026-03-17 09:09:43.574229	9	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/PULLTEX-PULLTAPS-VADICEP-2F-ZA-PJENUS.-MAT-GOLD-109119-w2.jpg
23186	Pulltex, Wine &amp; Champ. Starter Set BLACK	1D10778100-2376	2300	t	2026-03-17 09:09:43.574234	2026-03-17 09:09:43.574237	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/PULLTEX-STARTER-ZA-VINO-I-PJENUS.-SET-OD-3-KOM-CRNI-107781-w2.jpg
23187	Pulltex, Damasquinado vadičep	1D10917200-2377	11400	t	2026-03-17 09:09:43.574242	2026-03-17 09:09:43.574244	1	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/PULLTEX-VADICEP-DAMASQUINADO-KOZ-FUTR.-109172-w2.jpg
23188	Tenuta di Biserno, Il Pino di Biserno 3L	1VN1535-2378	26260	t	2026-03-17 09:09:43.57425	2026-03-17 09:09:43.574252	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN271.jpg
23189	Tenuta di Biserno, Il Pino di Biserno 0,375L	1VN1534-2379	2500	t	2026-03-17 09:09:43.574257	2026-03-17 09:09:43.57426	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN271.jpg
23190	Spiegelau, Hi-Lite Champagne set od 6 čaša	1750329-1-2380	11500	t	2026-03-17 09:09:43.574265	2026-03-17 09:09:43.574268	9	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/hi-lite-spiegelau-champagne-w.jpg
23191	Spiegelau, Hi-Lite Universal set od 6 čaša	1750301-1-2381	11500	t	2026-03-17 09:09:43.574273	2026-03-17 09:09:43.574275	13	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/hi-lite-spiegelau-universal-w.jpg
23192	Spiegelau, Hi-Lite Bordeaux set od 6 čaša	1750335-1-2382	11500	t	2026-03-17 09:09:43.574281	2026-03-17 09:09:43.574283	12	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2024/12/hi-lite-spiegelau-bordeaux-1-w.jpg
23193	Spiegelau, Hi-Lite Burgundy set od 6 čaša	1750300-1-2383	11500	t	2026-03-17 09:09:43.574289	2026-03-17 09:09:43.574291	7	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/hi-lite-spiegelau-burgundy-w.jpg
23194	Bailoni Wachauer Gold Marillenschnaps Rakija od Marelice 40%	1R556-2384	2490	t	2026-03-17 09:09:43.574297	2026-03-17 09:09:43.574299	44	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/Bailoni-Wachauer-Gold-Marillenschnaps-Rakija-od-Marelice-w.jpg
23195	Bailoni Wachauer Zwetschkenlikör Liker od šljive	1R558-2385	2350	t	2026-03-17 09:09:43.574304	2026-03-17 09:09:43.574306	70	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/Bailoni-Wachauer-Zwetschkenlikor-Liker-od-sljive-w.jpg
23196	Bailoni Wachauer Kirschenlikör Liker od višnje	1R560-2386	2350	t	2026-03-17 09:09:43.574312	2026-03-17 09:09:43.574314	42	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/02/Bailoni-Wachauer-Kirschenlikor-Liker-od-Visnje-W.jpg
23197	Chateau Miraval, Rose Cotes de Provence 2025	1VN819-11-2387	2380	t	2026-03-17 09:09:43.57432	2026-03-17 09:09:43.574322	736	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/miraval-rose.jpg
23198	Zotter, "Sretan Uskrs" mliječna čokolada s punjenjem 70 g	1H-16612-2388	540	t	2026-03-17 09:09:43.574328	2026-03-17 09:09:43.57433	16	OSTALO > ČOKOLADE I SLATKO	
23199	Zotter, "Slatki Uskrs" mliječna čokolada s punjenjem 70 g	1H-16615-2389	540	t	2026-03-17 09:09:43.574335	2026-03-17 09:09:43.574337	32	OSTALO > ČOKOLADE I SLATKO	
23200	Bruichladdich THE CLASSIC LADDIE Scottish Barley Unpeated Islay Single Malt 50%	1R683093-01-2390	5700	t	2026-03-17 09:09:43.574343	2026-03-17 09:09:43.574345	35	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/BRUICHLADDICH-CLAS-LADD-SM-SCOT-WHISKY-w.jpg
23201	Isidoros Arvanitis, Ouzo Plomari 40%	1R649077-2391	1130	t	2026-03-17 09:09:43.574351	2026-03-17 09:09:43.574353	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/OUZO-PLOMARI-w.jpg
23202	Signatory Vintage GLENALLACHIE 13 Years Old Cask Strength 2008 63,7% Tinbox	1R684458-Z-2392	11500	t	2026-03-17 09:09:43.574358	2026-03-17 09:09:43.574361	4	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/SIGNATORY-VIN.-GLENALLACHIE-2008-13-YO-w.jpg
23203	Takamaka DARK SPICED Spirit Drink 38%	1R647922-2393	1560	t	2026-03-17 09:09:43.574366	2026-03-17 09:09:43.574368	8	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/TAKAMAKA-DARK-SPICED-w.jpg
23204	Salzl, Rose Cuvee	1VN1540-2394	1180	t	2026-03-17 09:09:43.574374	2026-03-17 09:09:43.574376	17	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/salzl-rose-w.jpg
23205	Bodega Bat Gara Uno	1VN1538-2395	1295	t	2026-03-17 09:09:43.574381	2026-03-17 09:09:43.574384	186	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/Bat-Gara-Uno-w.jpg
23206	Bodega Bat Gara Urtaran	1VN1539-2396	2200	t	2026-03-17 09:09:43.574389	2026-03-17 09:09:43.574391	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/Bat-Gara-Urtaran-w.jpg
23207	Palacios Remondo, La Montesa Rioja	1VN943-2397	1950	t	2026-03-17 09:09:43.574397	2026-03-17 09:09:43.574399	175	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/palacios-la-montesa.jpg
23208	Palacios Remondo, La Montesa Rioja Magnum	1VN944-2398	4000	t	2026-03-17 09:09:43.574404	2026-03-17 09:09:43.574407	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/palacios-la-montesa-magnum.jpg
23209	Palacios Remondo, La Montesa Rioja 5 L	1VN949-2399	18350	t	2026-03-17 09:09:43.574412	2026-03-17 09:09:43.574414	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/palacios-la-montesa-5-lit.jpg
23210	Palacios Remondo, La Montesa  Rioja Reserva Especial	1VN948-2400	2581	t	2026-03-17 09:09:43.57442	2026-03-17 09:09:43.574422	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/palacios-montesa-reserva.jpg
23211	Alvaro Palacios, Les Terrasses Priorat	1VN939-2401	3600	t	2026-03-17 09:09:43.574428	2026-03-17 09:09:43.574431	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/PALACIOS-TERRASSES.jpg
23212	Alvaro Palacios, Finca Dofí	1VN1833-2402	10200	t	2026-03-17 09:09:43.574436	2026-03-17 09:09:43.574438	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/04/palacios-finca-dofi.jpg
23213	Orimos Grande Reserve Blanc Chardonnay	1VN1560-2403	850	t	2026-03-17 09:09:43.574444	2026-03-17 09:09:43.574446	477	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/05/oromos-blanc-chardonnay-w.jpg
23214	Tenuta di Biserno, Occhione Vermentino	1VN13980-2404	1790	t	2026-03-17 09:09:43.574452	2026-03-17 09:09:43.574454	4	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/05/TENUTA-DI-BISERNO-OCCHIONE-w.jpg
23215	Tenuta di Biserno, Insoglio del Cinghiale Magnum	1VN752-2405	6370	t	2026-03-17 09:09:43.574459	2026-03-17 09:09:43.574461	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN272.png
23216	Tenuta di Biserno, Insoglio del Cinghiale 3L	1VN753-2406	15500	t	2026-03-17 09:09:43.574467	2026-03-17 09:09:43.574469	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN272.png
23217	Salvela, Istarska Bjelica 0,50 L	1H00461-2407	2200	t	2026-03-17 09:09:43.574474	2026-03-17 09:09:43.574476	13	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/salvela-bjelica-250-w.jpg
23218	Domaine Vincent Bachelet, Maranges 1er Cru la Fussiere blanc 2021	1VN1408-2408	4950	t	2026-03-17 09:09:43.574482	2026-03-17 09:09:43.574484	6	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/BACHELET-V.-MARANGES-1er-Cru-LA-FUSSIERE-2021-blanc-075-L-w.jpg
23219	Domaine Vincent Bachelet, Pommard "Les Chanlins" 2023	1VN1232-3-2409	6950	t	2026-03-17 09:09:43.574489	2026-03-17 09:09:43.574491	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/pommard-les-chanlins.jpg
23220	Salvela, Pendolino (Kopiraj)	1H00457-1-2410	690	t	2026-03-17 09:09:43.574497	2026-03-17 09:09:43.574499	18	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H00457.png
23221	Salvela, Buža 0,25 L	1H00454-2411	1400	t	2026-03-17 09:09:43.574505	2026-03-17 09:09:43.574507	13	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/salvela-buza-250-w.jpg
23222	Salvela, Rošinjola 0,50 L	1H00463-2412	2200	t	2026-03-17 09:09:43.574512	2026-03-17 09:09:43.574515	14	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/salvela-rosinjola-250-w.jpg
23223	Salvela, Aurum 0,50 L	1H00451-2413	2200	t	2026-03-17 09:09:43.57452	2026-03-17 09:09:43.574522	19	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/salvela-aurum-250-w.jpg
23224	Chateau Miraval, Rose Cotes de Provence 3 L	1VN1025-7-2414	12450	t	2026-03-17 09:09:43.574528	2026-03-17 09:09:43.57453	4	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/11/miraval-rose.jpg
23225	Salentein, Barrel Selection Malbec 3 L	1VN1419-2415	6100	t	2026-03-17 09:09:43.574536	2026-03-17 09:09:43.574538	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN990.jpg
23226	San Marzano, Anniversario 62 Primitivo di Manduria Riserva 3 L	1VN1315-2416	14500	t	2026-03-17 09:09:43.574543	2026-03-17 09:09:43.574545	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN922.png
23227	Masi, Campofiorin 3 L	1VN1109-2417	10150	t	2026-03-17 09:09:43.574551	2026-03-17 09:09:43.574553	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN5.jpg
23229	Jako vino, Stina Plavac Mali Majstor 3 L	1V02579-2419	15000	t	2026-03-17 09:09:43.574579	2026-03-17 09:09:43.574582	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0577-1.png
23230	Jako vino, Stina Plavac Mali Majstor 5 L	1V025764-2420	22500	t	2026-03-17 09:09:43.574588	2026-03-17 09:09:43.57459	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V0577-1.png
23231	Produttori di Gavi, Il Forte Gavi DOCG	1VN1845-2421	1120	t	2026-03-17 09:09:43.574596	2026-03-17 09:09:43.574598	33	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/05/PRODUTTORI-GAVI-IL-FORTE-w.jpg
23232	Nicolas Maillart, Platine Premier Cru Champagne Extra Brut 3 L	1ŠN915-2422	29400	t	2026-03-17 09:09:43.574605	2026-03-17 09:09:43.574607	1	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/N.-MAILLART-PLATINE-1er-CRU-CHAMPAGNE-EXTRA-BRUT-075-L.jpg
23233	Hokkan Ougyoku Junmai Sake 0,72 L	1VN1356-2423	2017	t	2026-03-17 09:09:43.574612	2026-03-17 09:09:43.574614	22	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/10/HOKKAN-OUGYOKU-JUNMAI-SAKE-145-rizino-vino.jpg
23234	Choya Extra Years Umeshu liker 0,05 L	1R14119-2424	279	t	2026-03-17 09:09:43.57462	2026-03-17 09:09:43.574622	61	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-EXTRA-YEARS-17vol-070-L-Umeshu-liqueur-w.jpg
23235	Castello della Sala, Orvieto Classico Superiore San Giovanni Magnum	1VN965-2425	4050	t	2026-03-17 09:09:43.574628	2026-03-17 09:09:43.57463	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2021/05/castello-san-giovani-orvieto-w.jpg
23236	Prović, Agron Trnjak	1V000714-2426	1649	t	2026-03-17 09:09:43.574635	2026-03-17 09:09:43.574637	9	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/05/provic-agron-trnjak-w.jpg
23237	San Marzano, Collezione 50 3 L	1VN1096-2427	11000	t	2026-03-17 09:09:43.574643	2026-03-17 09:09:43.574645	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/san-marzano-collezione-50-1VN1096.jpg
23238	Bouvet Ladubay, Saphir Brut Vintage 3 L	1ŠN83-2428	12300	t	2026-03-17 09:09:43.574651	2026-03-17 09:09:43.574653	10	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-magnum-saphir.jpg
23239	Bouvet Ladubay, Saphir Brut Vintage 6 L	1ŠN84-2429	24680	t	2026-03-17 09:09:43.574659	2026-03-17 09:09:43.574661	5	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-magnum-saphir.jpg
23241	Wieninger, Pinot Noir Grand Select  2021	1VN623-5-2431	7200	t	2026-03-17 09:09:43.574674	2026-03-17 09:09:43.574677	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN623-1.jpg
23242	Casa Canevel Prosecco Rose DOC Brut Millesimato	1ŠN0103-2432	1470	t	2026-03-17 09:09:43.574682	2026-03-17 09:09:43.574684	8	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/06/canevel-prosecco-rose-doc-w.jpg
23243	Canevel Cartizze Valdobbiadene Superiore Brut DOCG	1ŠN0102-2433	3800	t	2026-03-17 09:09:43.57469	2026-03-17 09:09:43.574692	4	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/06/canevel-cartizze-brut-w.jpg
23244	Filipec, Bermet 0,375 L	1L0007-2434	1640	t	2026-03-17 09:09:43.574698	2026-03-17 09:09:43.5747	11	VINO > DESERTNA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1L0007.jpg
23245	Aura, Liker Medenica 29,3% 0,20 L	1R205-2435	1200	t	2026-03-17 09:09:43.574706	2026-03-17 09:09:43.574708	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R0206.jpg
23246	Bouvet Ladubay, Instinct Extra Brut Magnum	1ŠN47-2436	4500	t	2026-03-17 09:09:43.574713	2026-03-17 09:09:43.574715	11	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/bouvet-instinct-extra-brut-w.jpg
23247	Masi, Amarone Costasera della Valpolicella Classico DOCG Magnum	1VN1063-2437	12500	t	2026-03-17 09:09:43.574721	2026-03-17 09:09:43.574723	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN4.png
23248	Masi, Amarone Costasera della Valpolicella Classico DOCG 3,0 L	1VN1105-2438	23400	t	2026-03-17 09:09:43.574729	2026-03-17 09:09:43.574731	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN4.png
23249	Masi, Amarone Costasera della Valpolicella Classico DOCG 5,0 L	1VN1106-2439	40800	t	2026-03-17 09:09:43.574736	2026-03-17 09:09:43.574738	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN4.png
23250	Antinori, Villa Rosso Magnum 1,5L	1VN323-2440	3990	t	2026-03-17 09:09:43.574744	2026-03-17 09:09:43.574746	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VANVA001.png
23251	Antinori, Villa Rosso 3 L	1VN659-2441	9000	t	2026-03-17 09:09:43.574752	2026-03-17 09:09:43.574754	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VANVA001.png
23252	Antinori, Villa Antinori Chianti Classico Riserva Magnum 1,5L	1VN660-2442	5330	t	2026-03-17 09:09:43.57476	2026-03-17 09:09:43.574763	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/06/VILLA-ANTINORI-CHIANTI-CLASSICO-RISERVA-MAGNUM-W.jpg
23253	Antinori, Villa Antinori Chianti Classico Riserva 3 L	1VN661-2443	11770	t	2026-03-17 09:09:43.574769	2026-03-17 09:09:43.574772	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/06/VILLA-ANTINORI-CHIANTI-CLASSICO-RISERVA-MAGNUM-W.jpg
23254	La Braccesca, Vino Nobile di Montepulciano Magnum	1VN964-2444	4500	t	2026-03-17 09:09:43.574777	2026-03-17 09:09:43.574779	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN29-1.png
23255	Chiavalon, Organic 0,50 L	1H00365-2445	2500	t	2026-03-17 09:09:43.574785	2026-03-17 09:09:43.574787	7	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H00365-1.jpg
23256	Chiavalon, Atilio 0,50 L	1H003652-2446	2500	t	2026-03-17 09:09:43.574792	2026-03-17 09:09:43.574795	16	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H003652-1.jpg
23257	Chiavalon, Mlado 0,50 L	1H0003306-2447	2500	t	2026-03-17 09:09:43.5748	2026-03-17 09:09:43.574802	23	OSTALO	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1H0003306-1.jpg
23258	La Braccesca, Achelo Magnum	1VN1062-2448	3650	t	2026-03-17 09:09:43.574808	2026-03-17 09:09:43.57481	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/achelo.jpg
23259	Antinori, Badia a Passignano Gran Selezione Magnum	1VN663-2449	10900	t	2026-03-17 09:09:43.574815	2026-03-17 09:09:43.574817	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN840.png
23260	Jako vino, Stina Plavac mali Remek djelo Magnum	1V02577-2450	18750	t	2026-03-17 09:09:43.574823	2026-03-17 09:09:43.574825	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V02576-1.png
23261	Choya Single Year Japan. Ume fruit liker 0,70 L	1R11765-2451	1984	t	2026-03-17 09:09:43.57483	2026-03-17 09:09:43.574833	9	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/06/CHOYA-SINGLE-YEAR-155-vol-070-L-liqueur-w.jpg
23262	Siegfried Wonderspritz Alkoholfrei	1R00111-2452	1650	t	2026-03-17 09:09:43.574839	2026-03-17 09:09:43.574841	35	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2025/06/wonderspritz-w.jpg
23263	Fosso Corno, Kermit Abruzzo Pecorino D.O.C.	1VN929-2453	1680	t	2026-03-17 09:09:43.574846	2026-03-17 09:09:43.57486	13	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/12/fosso-corno-f-w.jpg
23264	Monte Zovo, Ripasso Valpolicella Superiore 3 L	1VN671-2454	9500	t	2026-03-17 09:09:43.574866	2026-03-17 09:09:43.574869	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN674.png
23265	Taittinger, Champagne Demi sec	1ŠN723-2455	5300	t	2026-03-17 09:09:43.574874	2026-03-17 09:09:43.574877	18	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2025/07/TAITTINGER-DEMI-SEC-CHAMPAGNE-w.jpg
23266	Aura, Liker divlja jabuka 28.1%vol 0,50 L	1R00220-2456	2200	t	2026-03-17 09:09:43.574883	2026-03-17 09:09:43.574885	2	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R208-1.jpg
23267	Aura, Liker divlja kruška 29,50%vol 0,50 L	1R0221-2457	2200	t	2026-03-17 09:09:43.57489	2026-03-17 09:09:43.574892	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/07/AURA-DIVLJA-KRUSKA-LIKER-050-w.jpg
23268	Mayer am Pfarrplatz, Landhaus Gruner Veltliner	1VN14282-2458	850	t	2026-03-17 09:09:43.574898	2026-03-17 09:09:43.5749	26	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/07/LANDHAUS-MAYER-GRUNER-VELTLINER-w.jpg
23269	Choya Sarari Yuzu Smooth and Fruity	1R11814-2459	1000	t	2026-03-17 09:09:43.574905	2026-03-17 09:09:43.574908	169	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/07/Sarari-Yuzu-w.jpg
23270	Choya Sarari Smooth and Light	1R11813-2460	1030	t	2026-03-17 09:09:43.574914	2026-03-17 09:09:43.574916	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/07/Sarari-Ume-w.jpg
23271	Jankara, Cannonau di Sardegna DOC	1VN15080-2461	2650	t	2026-03-17 09:09:43.574921	2026-03-17 09:09:43.574924	84	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/07/JANKARA-CANNONAU-DI-SARDEGNA-ww.jpg
23272	Medea, Turtian Malvazija	1VN3278-2462	1280	t	2026-03-17 09:09:43.574929	2026-03-17 09:09:43.574931	62	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/07/medea-turtian-malvazija-w.jpg
23273	San Marzano, Tramari Rose TramArt Edition	1VN1880-2463	900	t	2026-03-17 09:09:43.574937	2026-03-17 09:09:43.574939	11	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/08/san-marzano-ws1.jpg
23274	Brid Trnjak	1VN3449-2464	1950	t	2026-03-17 09:09:43.574944	2026-03-17 09:09:43.574947	9	VINO > CR(VE)NA	
23275	Brid Paullus Cuvee	1VN3448-2465	2350	t	2026-03-17 09:09:43.574952	2026-03-17 09:09:43.574954	9	VINO > CR(VE)NA	
23276	Mayer am Pfarrplatz, Landhaus Riesling bezalkoholno vino	1VN14270-2466	1520	t	2026-03-17 09:09:43.57496	2026-03-17 09:09:43.574962	63	VINO > BEZALKOHOLNA	https://www.vivat-finavina.hr/wp-content/uploads/2025/08/LANDHAUS-MAYER-RIESLING-075-L-bez-alkohola-w.jpg
23277	Spiegelau Lifestyle 4450170 Burgundy Set sa 4 čaše	4450170-2467	2690	t	2026-03-17 09:09:43.574968	2026-03-17 09:09:43.57497	6	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/08/SPIEGELAU-LIFESTYLE-BURGUNDY-GLASS-SET-4-CASE-2w.jpg
23278	Zotter, "Slana Karamela" čokolada s punjenjem 70 g	1H-16507-2468	540	t	2026-03-17 09:09:43.574976	2026-03-17 09:09:43.574978	20	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/09/1H-16507-w.jpg
23279	Zotter, "Tanzania Kakao Safari" čokolada s punjenjem 70 g	1H-16995-2469	540	t	2026-03-17 09:09:43.574983	2026-03-17 09:09:43.574985	18	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/09/1H-16995-w.jpg
23280	Zotter, Labooko 100% Madagascar 65 g	1H-20579-2470	570	t	2026-03-17 09:09:43.574991	2026-03-17 09:09:43.574993	29	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/09/labooko-madagaskar-100-w.jpg
23281	Zotter, Labooko 77% Opus 5 70 g	1H-20644-2471	570	t	2026-03-17 09:09:43.575012	2026-03-17 09:09:43.575015	26	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/09/1H-20644-w.jpg
23282	San Marzano, Sessantanni Primitivo di Manduria 6 L	1VN13120-2472	25650	t	2026-03-17 09:09:43.575021	2026-03-17 09:09:43.575023	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN921.jpg
23283	Silvio Carta, Spinello Spritz	1R05200-2473	1800	t	2026-03-17 09:09:43.575029	2026-03-17 09:09:43.575031	14	DESTILATI > APERITIVO	https://www.vivat-finavina.hr/wp-content/uploads/2025/09/Spinello-Blue-Spritz-w.jpg
23284	Gin Mare Mediterranean Gin 42,7% Vol. 1,0 L	1R004740-2474	4800	t	2026-03-17 09:09:43.575037	2026-03-17 09:09:43.575039	6	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/05/GIN-MARE-W.jpg
23285	Suntory Hibiki Japanese Harmony 43% 0,7l Giftbox	1R003200-2475	11900	t	2026-03-17 09:09:43.575044	2026-03-17 09:09:43.575046	28	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/09/SUNTORY-HIBIKI-JAPANESE-HARMONY-GP-070-L-whisky-W.jpg
23286	The Pogues The Official Irish Whiskey of the Legendary Band Triple Distilled 40% 0,7l	1R005970-2476	2600	t	2026-03-17 09:09:43.575052	2026-03-17 09:09:43.575054	33	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/09/THE-POGUES-TRIPLE-DIST.-OFFIC.-IRISH-WHISKY-070-L-W.jpg
23287	Prunotto, Barbaresco DOCG 2022	1VN901-8-2477	3450	t	2026-03-17 09:09:43.57506	2026-03-17 09:09:43.575062	17	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN901-4-1.jpg
23288	Taittinger, Comtes de Champagne Blanc de Blancs Vintage Magnum	1ŠN102-1-2478	41800	t	2026-03-17 09:09:43.575067	2026-03-17 09:09:43.57507	5	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/TAITTINGER-COMTES-BLANC-DE-BLANCS.jpg
23289	Jacopo Poli, Arzente 40%vol Magnum	1R00827-2479	13180	t	2026-03-17 09:09:43.575075	2026-03-17 09:09:43.575077	6	DESTILATI > BRANDY/VINJAK	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1RN037.jpg
23290	Conde Vimioso Reserve Branco	1VN1836-2480	2220	t	2026-03-17 09:09:43.575083	2026-03-17 09:09:43.575085	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/10/FALUA-CONDE-VIMIOSO-WHITE-RESERVE-w.jpg
23291	Quinta São José Reserva Tinto DOC Douro	1VN1837-2481	3650	t	2026-03-17 09:09:43.575091	2026-03-17 09:09:43.575093	21	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/10/QUINTA-DE-S.-JOSE-RESERVA-w.jpg
23292	Castello della Sala, Nibbio della Sala Umbria 2021	1VN2110-2482	26700	t	2026-03-17 09:09:43.575098	2026-03-17 09:09:43.575101	34	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/10/CASTELLO-DELLA-SALA-NIBBIO-DELLA-SALA-99F.jpg
23293	Hexamer, Grauburgunder (pinot sivi) vom Porphyr	1VN11380-2483	1440	t	2026-03-17 09:09:43.575106	2026-03-17 09:09:43.575108	87	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/10/Hexamer-Grauburgunder-vom-Porphyr-trocken-w.jpg
23294	Pulltex, Dual Opener VinOline set	1D10920700-2484	1950	t	2026-03-17 09:09:43.575114	2026-03-17 09:09:43.575116	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/109207-Pulltex-Dual-Opener-set-w.jpg
23295	Sablja za otvaranje pjenušca champagne sabre crna	1D10784900-2485	17900	t	2026-03-17 09:09:43.575123	2026-03-17 09:09:43.575126	12	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/PULLTEX-SABLJA-CRNA-1D10784900.jpg
23296	Pulltex, elektronski raslađivač boca	1D10952500-2486	16800	t	2026-03-17 09:09:43.575132	2026-03-17 09:09:43.575134	3	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/Pulltex-Electronic-Cooler-Station-109525.jpg
23297	Aura, Bademi u čokoladi-Borovnica	003583-2487	1100	t	2026-03-17 09:09:43.575139	2026-03-17 09:09:43.575141	3	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/AURA-BADEMI-U-COKOLADI-BOROVNICA-225-g.jpg
23298	Aura, Bademi u čokoladi-Cimet	003580-2488	1100	t	2026-03-17 09:09:43.575147	2026-03-17 09:09:43.575149	6	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/AURA-BADEMI-U-COKOLADI-CIMET-225-g.jpg
23299	Aura, Bademi u čokoladi-Limoncello	003581-2489	1100	t	2026-03-17 09:09:43.575154	2026-03-17 09:09:43.575156	8	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/AURA-BADEMI-U-COKOLADI-LIMONCELLO-225-g.jpg
23300	Aura, Bademi u tamnoj čokoladi	003576-2490	1100	t	2026-03-17 09:09:43.575162	2026-03-17 09:09:43.575164	7	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/AURA-BADEMI-U-TAMNOJ-COKOLADI-225-g.jpg
23301	Simone Capecci, Tufilla Passerina	1VN1890-2491	1170	t	2026-03-17 09:09:43.57517	2026-03-17 09:09:43.575172	71	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/SIMONE-CAPECCI-TUFILLA-w.jpg
23302	Simone Capecci, Ciprea Pecorino	1VN1891-2492	1340	t	2026-03-17 09:09:43.575178	2026-03-17 09:09:43.57518	28	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/SIMONE-CAPECCI-CIPREA-w.jpg
23303	Simone Capecci, Chiodo Garofanata	1VN1892-2493	1630	t	2026-03-17 09:09:43.575186	2026-03-17 09:09:43.575188	81	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/SIMONE-CAPECCI-CHIODO-w.jpg
23304	Simon Coll, Tamna čokolada 50% kakaoa 85g	1H5393-2494	320	t	2026-03-17 09:09:43.575193	2026-03-17 09:09:43.575195	53	OSTALO > ČOKOLADE I SLATKO	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/SIMON-COLL-COKOLADA-50-85g-ww.jpg
23305	Simone Capecci, Picus Montepulciano Sangiovese	1VN1893-2495	1390	t	2026-03-17 09:09:43.575201	2026-03-17 09:09:43.575203	86	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/SIMONE-CAPECCI-PICUS-w.jpg
23306	Simone Capecci, Picus Montepulciano-Sangiovese Magnum 1,5L	1VN1894-2496	3830	t	2026-03-17 09:09:43.575209	2026-03-17 09:09:43.575211	5	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/SIMONE-CAPECCI-PICUS-w.jpg
23307	Chateau de La Terriere, Beaujolais Nouveau Villages 2025	1VN7470-2497	1160	t	2026-03-17 09:09:43.575217	2026-03-17 09:09:43.575219	20	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/Chateau-de-la-Terriere-Beaujolais-Villages-Nouveau.jpg
23308	Chateau de Bellevue, Morgon 'Cote du Py'	1VN7471-2498	2520	t	2026-03-17 09:09:43.575225	2026-03-17 09:09:43.575227	64	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/CH-BELLEVUE-MORGON-COTE-DU-PY-w.jpg
23309	Bodegas Artero Reserva	1VN1591-2499	950	t	2026-03-17 09:09:43.575233	2026-03-17 09:09:43.575235	53	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/ARTERO-RESERVA-ww.jpg
23310	Bodegas y Viñedos Muñoz Blas Muñoz Essentia	1VN1592-2500	2880	t	2026-03-17 09:09:43.57524	2026-03-17 09:09:43.575242	52	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/BLAS-MUNOZ-ESSENTIA-W.jpg
23311	Conde de San Cristobal Tempranillo	1VN1593-2501	2380	t	2026-03-17 09:09:43.575248	2026-03-17 09:09:43.57525	96	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/CONDE-DE-SAN-CRISTOBAL-w.jpg
23312	Conde de San Cristobal Tempranillo 880 VINEDOS DE ALTURA	1VN1594-2502	2820	t	2026-03-17 09:09:43.575256	2026-03-17 09:09:43.575258	11	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/CONDE-DE-SAN-CRISTOBAL-880.jpg
23313	Tribaut-Schloesser, Champagne 8 Terriors Origine Brut	1ŠN1090-2503	3450	t	2026-03-17 09:09:43.575264	2026-03-17 09:09:43.575266	156	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/TRIBAUT-CHAMPAGNE-8-TERROIRS-ORIGINE-BRUT-w.jpg
23314	Tribaut-Schloesser, Champagne 8 Terriors Origine Brut 3L	1ŠN1092-2504	21500	t	2026-03-17 09:09:43.575272	2026-03-17 09:09:43.575274	4	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/TRIBAUT-CHAMPAGNE-8-TERROIRS-ORIGINE-BRUT-w.jpg
23315	Tribaut-Schloesser, Champagne Terriors Premier Cru Extra Brut	1ŠN1091-2505	3950	t	2026-03-17 09:09:43.575279	2026-03-17 09:09:43.575282	112	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/TRIBAUT-CHAMPAGNE-PREMIER-CRU-EXTRA-BRUT.jpg
23316	Pere Ventura, Vintage Rose Gran Reserva Brut 2021	1ŠN6160-2506	4800	t	2026-03-17 09:09:43.575288	2026-03-17 09:09:43.57529	4	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/11/PERE-VENTURA-VINTAGE-ROSE-GRAN-RESERVA.jpg
23317	Tarallini okus špek i sir 200g	1H141-2507	250	t	2026-03-17 09:09:43.575296	2026-03-17 09:09:43.575298	504	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/TARALLINI-OKUS-SPEK-I-SIR-200-g.jpg
23318	Tarallini sa crnim maslinama 200g	1H143-2508	250	t	2026-03-17 09:09:43.575304	2026-03-17 09:09:43.575306	107	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/TARALLINI-CRNE-MASLINE-200-g.jpg
23319	Tarallini s ekstra djevičanskim maslinovim uljem 200g	1H136-2509	220	t	2026-03-17 09:09:43.575311	2026-03-17 09:09:43.575314	448	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/TARALLINI-EXT.DJEV_.MASLIN.-ULJE-200g.jpg
23320	Tarallini sa sjemenkama komorača 200g	1H137-2510	220	t	2026-03-17 09:09:43.575319	2026-03-17 09:09:43.575322	318	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/TARALLINI-SJEM.-KOMORACA-200-g.jpg
23321	Tarallini s ružmarinom BEZ GLUTENA 180g	1H255-2511	670	t	2026-03-17 09:09:43.575327	2026-03-17 09:09:43.57533	47	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/TARALLINI-RUZMARIN-BEZ-GLUTENA-180-g.jpg
23322	Tarallini s ekstra djev. maslin. uljem BEZ GLUTENA 100g	1H144-2512	320	t	2026-03-17 09:09:43.575336	2026-03-17 09:09:43.575338	3	NOVO U PONUDI	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/TARALLINI-EXT.DJEV_.MASLIN.ULJE-BEZ-GLUTENA-100-g.jpg
23323	Wieninger, Ried Rosengartel 1ÖTW Riesling	1VN1683-2513	5300	t	2026-03-17 09:09:43.575343	2026-03-17 09:09:43.575346	16	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/WIENINGER-RIED-ROSENGARTEL-RIESLING-075-L.jpg
23324	Masi, Campolongo di Torbe Amarone della Valpolicella Classico 2015	1VN1136-2-2514	16080	t	2026-03-17 09:09:43.575351	2026-03-17 09:09:43.575354	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN1136.png
23325	Aura, Liker Teranino Crema 0,7	1R004140-2515	2600	t	2026-03-17 09:09:43.575359	2026-03-17 09:09:43.575361	202	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/AURA-TERANINO-CREMA-LIKER.jpg
23326	Taittinger, Brut Reserve Champagne 12 L Balthazar	1ŠN335-2516	123000	t	2026-03-17 09:09:43.575367	2026-03-17 09:09:43.575369	3	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/Brut-Reserve-6L-mathusalem-box-w.jpg
23327	Manincor, Il Conte 2023	1VN558-2-2517	2420	t	2026-03-17 09:09:43.575374	2026-03-17 09:09:43.575377	106	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2024/05/manincor-il-conte-w.jpg
23328	Glencairn čaša u kutiji	1D330-2518	790	t	2026-03-17 09:09:43.575382	2026-03-17 09:09:43.575385	105	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Glencairn-Glass-Trade-Carton-w.jpg
23329	Glencairn čaša (bez kutije) - U DOLASKU	1D331-2519	670	t	2026-03-17 09:09:43.575391	2026-03-17 09:09:43.575393	762	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/Glencairn-whisky-čašaw.jpg
23330	Glencairn poklopac za čašu	1D332-2520	500	t	2026-03-17 09:09:43.575399	2026-03-17 09:09:43.575401	74	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/GLENCAIRN-POKLOPAC-ZA-CASU-w.jpg
23331	Glencairn set od 2 čaše	1D333-2521	2550	t	2026-03-17 09:09:43.575407	2026-03-17 09:09:43.575409	25	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/GLENCAIRN-SET-OD-2-CASE-w.jpg
23332	Glencairn pipeta	1D335-2522	1000	t	2026-03-17 09:09:43.575415	2026-03-17 09:09:43.575417	13	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/GLENCAIRN-PIPETA-w.jpg
23333	Glencairn Wee (mala) čaša	1D336-2523	750	t	2026-03-17 09:09:43.575437	2026-03-17 09:09:43.57544	77	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/GLENCAIRN-WEE-CASA-ww.jpg
23334	Glencairn čaša s poklopcem u kutiji	1D337-2524	1250	t	2026-03-17 09:09:43.575446	2026-03-17 09:09:43.575448	31	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Glencairn-Glass-with-Tasting-Cap-W.jpg
23335	Glencairn brušena set od 2 čaše	1D339-2525	7540	t	2026-03-17 09:09:43.575453	2026-03-17 09:09:43.575456	9	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/GLENCAIRN-SET-OD-2-CASE-BRUSENE.jpg
23336	Muscat de Noel blanc	1PN1001-2526	1150	t	2026-03-17 09:09:43.575461	2026-03-17 09:09:43.575463	77	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/MUSCAT-DE-NOEL-BLANC-w.jpg
23337	Les Vignes du Vent Signature Tautavel	1VN1872-2527	960	t	2026-03-17 09:09:43.57547	2026-03-17 09:09:43.575472	195	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/TAUTAVEL-SIGNATURE.jpg
23338	Rivesaltes Haute Coutume 1976	1PN1002-2528	8380	t	2026-03-17 09:09:43.575478	2026-03-17 09:09:43.57548	3	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/RIVESALTES-HAUTE-COUTUME-76.jpg
23339	Les Vignes du Vent Signature Les Aspres	1VN1873-2529	960	t	2026-03-17 09:09:43.575486	2026-03-17 09:09:43.575488	7	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/ASPRES-SIGNATURE.jpg
23340	Rivesaltes Haute Coutume 1996	1PN1003-2530	5150	t	2026-03-17 09:09:43.575495	2026-03-17 09:09:43.575498	7	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/RIVESALTES-HAUTE-COUTUME-96.jpg
23341	Château La Tour Carnet Grand Cru Classé Haut-Médoc 2019	1VN1868-2531	3950	t	2026-03-17 09:09:43.575504	2026-03-17 09:09:43.575506	28	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/CHATEAU-LA-TOUR-CARNET-HAUT-MEDOC-w.jpg
23342	Blason d’Issan 2022 Margaux	1VN1869-2532	4000	t	2026-03-17 09:09:43.575512	2026-03-17 09:09:43.575514	54	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/BLASON-DISSAN-MARGAUX-w.jpg
23343	Glencairn putna futrola za dvije čaše	1D334-2533	3350	t	2026-03-17 09:09:43.575521	2026-03-17 09:09:43.575523	1	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/GLENCAIRN-TRAVEL-BOX-W.jpg
23344	Glencairn bokal u kutiji	1D338-2534	2350	t	2026-03-17 09:09:43.57553	2026-03-17 09:09:43.575532	18	ČAŠE I VINSKI PRIBOR > ČAŠE BARSKE	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Glencairn-Water-Jug-w.jpg
23345	Chateau Margaux 2019 - 100/100 wine!	1VN1871-2535	92500	t	2026-03-17 09:09:43.575538	2026-03-17 09:09:43.57554	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Chateau-Margaux-2019-w.jpg
23346	Château Lynch Bages Pauillac 2020	1VN1881-2536	16950	t	2026-03-17 09:09:43.575547	2026-03-17 09:09:43.575549	8	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Chateau-Lynch-Bages-Pauillac-2020-w.jpg
23347	Château Carbonnieux Pessac-Leognan 2020 Cru Classe	1VN1882-2537	5350	t	2026-03-17 09:09:43.575556	2026-03-17 09:09:43.575558	35	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Chateau-Carbonnieux-Pessac-Leognan-w.jpg
23348	Château La Mission Haut-Brion Pessac-Leognan 2020 - 100/100	1VN1883-2538	46450	t	2026-03-17 09:09:43.575564	2026-03-17 09:09:43.575566	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/CHATEAU-LA-MISSION-HAUT-BRION-2020-W.jpg
23349	Château Angelus Saint-Emilion 2022 - 100/100!	1VN1886-2539	63500	t	2026-03-17 09:09:43.575572	2026-03-17 09:09:43.575574	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Chateau-Angelus-Saint-Emilion-2022-ww.jpg
23350	Château Bellefont-Belcier 2022 Saint-Emilion Magnum 1,5L	1VN1887-2540	13860	t	2026-03-17 09:09:43.57558	2026-03-17 09:09:43.575583	2	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Chateau-Bellefont-Belcier-2022-Saint-Emilion-magnum-w.jpg
23351	Château Canon Saint-Emilion 2022 - 100/100!	1VN1888-2541	26300	t	2026-03-17 09:09:43.575589	2026-03-17 09:09:43.575591	10	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Chateau-Canon-Saint-Emilion-2022-w.jpg
23352	Chateau Laroque Saint-Emilion 2020 Grand Cru Classe Magnum 1,5L	1VN1889-2542	10960	t	2026-03-17 09:09:43.575598	2026-03-17 09:09:43.5756	3	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/11/CH-LAROQUE-ST-EMILION-GC-rouge-w.jpg
23353	Château Calon Ségur Saint-Estèphe 2022	1VN1899-2543	21700	t	2026-03-17 09:09:43.575606	2026-03-17 09:09:43.57562	12	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Chateau-Calon-Segur-Saint-Estephe-2022-w.jpg
23354	Le Marquis de Calon Ségur Saint-Estèphe 2023	1VN1991-2544	4500	t	2026-03-17 09:09:43.575627	2026-03-17 09:09:43.575629	44	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Le-Marquis-de-Calon-Segur-Saint-Estephe-w.jpg
23355	Chateau Leoville Las Cases Saint-Julien 2022 - 100/100!	1VN1992-2545	44500	t	2026-03-17 09:09:43.575635	2026-03-17 09:09:43.575637	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2025/12/Chateau-Leoville-Las-Cases-Saint-Julien-2022-w.jpg
23356	Poli Conclave Whisky 46%	1RN041-2546	4900	t	2026-03-17 09:09:43.575642	2026-03-17 09:09:43.575645	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2026/01/JACOPO-POLI-CONCLAVE-whisky.jpg
23357	Mayer am Pfarrplatz, Prickelnd bezalkoholni pjenušac	1VN13901-2547	1720	t	2026-03-17 09:09:43.575651	2026-03-17 09:09:43.575653	78	VINO > BEZALKOHOLNA	https://www.vivat-finavina.hr/wp-content/uploads/2026/02/MAYER-ALKOHOLFREI-PRICKELND-BEZALKOHOLNO-pjenusavo-vino-075-L.jpg
23358	A.H. Riise X.O. Reserve Christmas Superior Rum 40% Giftbox	1R005231-2548	4780	t	2026-03-17 09:09:43.575658	2026-03-17 09:09:43.575661	5	DESTILATI	
23359	The Dalmore CIGAR MALT Reserve Highland Single Malt Scotch Whisky 44% Giftbox	1R004490-2549	15400	t	2026-03-17 09:09:43.575666	2026-03-17 09:09:43.575669	5	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/04/THE-DALMORE-CIGAR-MALT-RES-w.jpg
23360	Ron Zacapa Centenario SOLERA Gran Reserva Rum 40% Giftbox	1R003820-2550	5440	t	2026-03-17 09:09:43.575674	2026-03-17 09:09:43.575676	24	DESTILATI	
23361	Pian delle Vigne, Brunello di Montalcino MAGNUM	1VN359-1-2551	11850	t	2026-03-17 09:09:43.575682	2026-03-17 09:09:43.575684	1	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN642-4.png
23363	Graham's, Malvedos Vintage Port 2018	1PN32-6-2553	4950	t	2026-03-17 09:09:43.575698	2026-03-17 09:09:43.5757	23	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1PN322.jpg
23364	Guado al Tasso, San Walfredo Bolgheri Superiore DOC	1VN9832-2554	29750	t	2026-03-17 09:09:43.575705	2026-03-17 09:09:43.575707	6	VINO > CR(VE)NA	
23365	La Braccesca, Santa Pia Vino Nobile di Montepulciano Riserva DOCG 2021	1VN1372-2-2555	4170	t	2026-03-17 09:09:43.575713	2026-03-17 09:09:43.575715	18	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/12/1VN1372.jpg
23366	Wieninger, Select Chardonnay 2020	1VN622-3-2556	2700	t	2026-03-17 09:09:43.575721	2026-03-17 09:09:43.575723	21	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN622-1.png
23367	Domaine Laroche, Chablis St Martin MAGNUM	1VN8534-2557	4950	t	2026-03-17 09:09:43.575729	2026-03-17 09:09:43.575731	9	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN74.jpg
23368	Zotter, Labooko 80% Kolumbija 70 g	1H-20466-2558	570	t	2026-03-17 09:09:43.575736	2026-03-17 09:09:43.575738	30	OSTALO > ČOKOLADE I SLATKO	
23369	Zotter, "Hibiskus + Menta" čokolada sa punjenjem 70g	1H-16994-2559	540	t	2026-03-17 09:09:43.575744	2026-03-17 09:09:43.575746	18	OSTALO > ČOKOLADE I SLATKO	
23370	Zotter, "Brusnica" čokolada sa punjenjem 70g	1H-16607-2560	540	t	2026-03-17 09:09:43.575751	2026-03-17 09:09:43.575754	20	OSTALO > ČOKOLADE I SLATKO	
23371	Taittinger, Champagne Nocturne Sleever Wave Sec	1ŠN588-2561	5400	t	2026-03-17 09:09:43.575759	2026-03-17 09:09:43.575761	18	PJENUŠAVA VINA > CHAMPAGNE	
23372	Clai, Malvazija Sv. Jakov 2021	1V00041-2562	3250	t	2026-03-17 09:09:43.575768	2026-03-17 09:09:43.57577	1	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00041.jpg
23362	Tenuta Tignanello, Chianti Classico Riserva 3L	1VN14120-2552	19600	t	2026-03-17 09:09:43.57569	2026-03-24 08:12:19.967745	0	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN581.jpg
22570	Radović, Postup Reserve	1V00067-1760	2650	t	2026-03-17 09:09:43.569013	2026-03-24 08:12:19.973073	6	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/RADOVIC-POSTUP-RESERVE-075Lw.jpg
21534	Spiegelau, Salute 4720170 Burgundy SET/4 čaša	4720170-724	2700	t	2026-03-17 09:09:43.560581	2026-03-24 08:12:19.976505	0	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/4720170.jpg
21046	Lustau, Moscatel" EMILIN" Solera Familiar sherry	1VNSHERRY2-236	2950	t	2026-03-17 09:09:43.556444	2026-03-24 08:13:49.684287	30	VINO > FORTIFICIRANA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VNSHERRY2.jpg
22634	Dimple GOLDEN SELECTION Blended Scotch Whisky 40 vol%	1R00541-1824	2893	t	2026-03-17 09:09:43.56953	2026-03-24 08:13:49.690245	24	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/DIMPLE-GOLDEN-SELECT-WHISKY-40-070-L-w.jpg
22814	Haras de Pirque Hussonet Gran Reserva Cabernet sauvignon	1VN1413-2-2004	2000	t	2026-03-17 09:09:43.571172	2026-03-24 08:13:49.698512	31	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2023/05/HARAS-DE-PIRQUE-HUSSONET-CS-GR.jpg
22852	Bouvet Ladubay, Cremant de Loire Excellence Gold Brut Magnum	1ŠN636-2042	3250	t	2026-03-17 09:09:43.571465	2026-03-24 08:13:49.70411	31	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2023/07/BOUVET-CREMANT-DE-LOIRE-EXCELL.GOLD-brut-pjenusac-15-L-w.jpg
23067	Jankara, Vermentino di Gallura Superiore DOCG	1VN1505-2257	1790	t	2026-03-17 09:09:43.573188	2026-04-11 18:23:22.002655	130	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2024/06/JANKARA-VERMENTINO-DI-GALLURA-SUPERIORE-W.jpg
20858	Aura, Liker Teranino 0,7	1R204-48	2600	t	2026-03-17 09:09:43.554853	2026-04-11 18:23:22.008207	941	DESTILATI	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1R204.jpg
20836	Tormaresca, Calafuria Negroamaro Rose MAGNUM	1VN1098-26	2820	t	2026-03-17 09:09:43.554681	2026-05-05 10:50:50.591604	0	VINO > ROSE	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/calafuria.jpg
23096	Studio by Miraval Rose KARTON 6X0,75	1VN1192-4-1-2286	1450	t	2026-03-17 09:09:43.573438	2026-05-05 10:50:50.59735	6	POPUST	https://www.vivat-finavina.hr/wp-content/uploads/2022/03/STUDIO-BY-MIRVAL-W.jpg
23228	Monte Zovo, Amarone della Valpolicella 3 L	1VN1145-2418	20500	t	2026-03-17 09:09:43.574558	2026-05-05 10:50:50.600189	0	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN503.png
22289	SAPUN GROŽĐE 70 g	1A553214-1479	305	t	2026-03-17 09:09:43.566689	2026-05-05 10:50:50.603691	15	ČAŠE I VINSKI PRIBOR	https://www.vivat-finavina.hr/wp-content/uploads/2021/11/sapun-grozde-w.jpg
22923	San Marzano, Collezione 50	1VN968-2113	2100	t	2026-03-17 09:09:43.572046	2026-05-05 10:50:50.606947	46	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/06/san-marzano-collezione-50-1VN1096.jpg
21166	Domaine Koquelicot, Fugaz	1V00710-356	1800	t	2026-03-17 09:09:43.557431	2026-05-05 10:50:50.609905	9	VINO > BIJELA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1V00710.jpg
22624	Nicolas Maillart, Platine Premier Cru Champagne Extra Brut	1ŠN908-1814	4690	t	2026-03-17 09:09:43.569454	2026-06-30 15:10:24.161973	250	PJENUŠAVA VINA > CHAMPAGNE	https://www.vivat-finavina.hr/wp-content/uploads/2022/11/N.-MAILLART-PLATINE-1er-CRU-CHAMPAGNE-EXTRA-BRUT-075-L.jpg
23240	San Marzano, Sessantanni Primitivo di Manduria 3 L	1VN1312-2430	13206	t	2026-03-17 09:09:43.574667	2026-06-30 15:10:24.16519	24	VINO > CR(VE)NA	https://www.vivat-finavina.hr/wp-content/uploads/2020/05/1VN921.jpg
21980	Domaine Rolet et Fils, Cremant du Jura Coeur de Chardonnay Brut	1Š00237-1170	2256	t	2026-03-17 09:09:43.564192	2026-06-30 15:11:18.640194	27	PJENUŠAVA VINA	https://www.vivat-finavina.hr/wp-content/uploads/2021/02/rolet-jura-sparkling.jpg
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.schema_migrations (version) FROM stdin;
20260131184735
20260131184748
20260131184758
20260131192622
20260131192807
20260131192950
20260131193046
20260131193129
20260131193137
20260206213038
20260206222440
20260208210033
20260208212847
20260212183500
20260213181429
20260315085228
20260315090312
20260316124757
20260316124758
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: bornaivancic
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, company_id, role) FROM stdin;
176	admin@example.com	$2a$12$6Yqdaac8qI2/eUh2CGrqZukfQeMQqF2ZSD7JIh2JSG/FDX8XB9Wcy	\N	\N	\N	2026-03-17 09:09:43.092517	2026-03-17 09:09:43.092517	\N	1
177	a@a.a	$2a$12$xsrK5NPhlYhF/HwipseDJOo5rG5rzNWIfeqC14aBqQfjENfIRICbC	\N	\N	\N	2026-03-17 09:09:43.314253	2026-03-17 09:09:43.314253	\N	1
178	borna.ivancic23@gmail.com	$2a$12$OVYHpwBc86cbyK7Izhsb1uRsnMtHDpkVTsxYKU1Nou1S1BkVOfPyK	\N	\N	\N	2026-03-17 09:09:44.009005	2026-03-17 09:09:44.009005	151	0
179	partner2@winehub.test	$2a$12$JLSrnexvrsk70I7cosP2jOb13aLUB.FibLZhbqHRy.8sxQeLvkzLm	\N	\N	\N	2026-03-17 09:09:44.231389	2026-03-17 09:09:44.231389	152	0
180	partner3@winehub.test	$2a$12$LXfbWaRWAufRhLgWlest7OvFxxuBu5rsbHD0byyJ/PZmBXxiq7QnO	\N	\N	\N	2026-03-17 09:09:44.454052	2026-03-17 09:09:44.454052	153	0
181	partner4@winehub.test	$2a$12$b6dB54p18lDM6Jz3F7c3XuSaqTQP7PxAAkSSeOi5g2x4hh4DDfqUm	\N	\N	\N	2026-03-17 09:09:44.679947	2026-03-17 09:09:44.679947	154	0
182	partner5@winehub.test	$2a$12$PK7dY71ArNopJVXNu9g4LuSIW8SgFoWsqm4R2tPT21ZOBMLu9OFrm	\N	\N	\N	2026-03-17 09:09:44.908963	2026-03-17 09:09:44.908963	155	0
183	partner6@winehub.test	$2a$12$tYQaJeX20rF8O.Ffp74As.xtjCPl8ryLOZ.tDDovCfBMVaEcxa61m	\N	\N	\N	2026-03-17 09:09:45.131844	2026-03-17 09:09:45.131844	156	0
184	partner7@winehub.test	$2a$12$ZOhrq02DC0OqV.QO/L1aFu1bX9drLYbd2ozdgMnkQ31J4ZGp9.Qy.	\N	\N	\N	2026-03-17 09:09:45.354418	2026-03-17 09:09:45.354418	157	0
185	partner8@winehub.test	$2a$12$h.mzkaZZEYjWP83BU7v44O17BKsX53fwaxQ4RMnzrsOUjEM4pzl7W	\N	\N	\N	2026-03-17 09:09:45.578548	2026-03-17 09:09:45.578548	158	0
186	partner9@winehub.test	$2a$12$eu7Qr.aBolM7FcEzGWoYbeg01s924fY7CqYf61arJNlk9vpL3sKIG	\N	\N	\N	2026-03-17 09:09:45.806969	2026-03-17 09:09:45.806969	159	0
187	partner10@winehub.test	$2a$12$lP5MV9dIgr8KPPVR85d.WewkEFKMxoBfC1XgUVg5wc8jiHBPnsXkW	\N	\N	\N	2026-03-17 09:09:46.029841	2026-03-17 09:09:46.029841	160	0
188	partner11@winehub.test	$2a$12$72ftjG8cgt.CBZLu/6ETTeDi//f8rtYSphgVxo4zRgMw.PijDqSIS	\N	\N	\N	2026-03-17 09:09:46.254239	2026-03-17 09:09:46.254239	161	0
189	partner12@winehub.test	$2a$12$5a.ifrv50HjgaLA3vtLGuuWRroZtJhCNVbM0LKq9QUcuVfqvYMB7O	\N	\N	\N	2026-03-17 09:09:46.479377	2026-03-17 09:09:46.479377	162	0
190	partner13@winehub.test	$2a$12$Qw9uBjPEQ2vbsgHND994DuMeeDkG7YPF8VShTIGSGiap3B3dH3Pgm	\N	\N	\N	2026-03-17 09:09:46.707582	2026-03-17 09:09:46.707582	163	0
191	partner14@winehub.test	$2a$12$AP9xNp3vyJVVBSOYPQK32.aNBp0C1tBnphqurE9msww0pxJ/1IExG	\N	\N	\N	2026-03-17 09:09:46.946539	2026-03-17 09:09:46.946539	164	0
192	partner15@winehub.test	$2a$12$dbqJYuUcGbe4pm7P0SrceO9Dkn64nUWwPboC7M31adN0TM1GAUK9a	\N	\N	\N	2026-03-17 09:09:47.169657	2026-03-17 09:09:47.169657	165	0
193	partner16@winehub.test	$2a$12$IHGd6XGPzJc6jDJw/ECHSeYXn.P.P7lMHwYGjcqGQXR8yyR4N7/1C	\N	\N	\N	2026-03-17 09:09:47.391979	2026-03-17 09:09:47.391979	166	0
194	partner17@winehub.test	$2a$12$8d9s6YWBxcLUxJm4wNSnIOYkd2dd1E1WaT7fU/UPU2frE5nNnhthS	\N	\N	\N	2026-03-17 09:09:47.615625	2026-03-17 09:09:47.615625	167	0
195	partner18@winehub.test	$2a$12$EOAtLxlqWo2IeUUbrx1/fOr1sQjl4M4gH.1Z585AG7rGBd3wYkU1e	\N	\N	\N	2026-03-17 09:09:47.837785	2026-03-17 09:09:47.837785	168	0
196	partner19@winehub.test	$2a$12$UDj6wiLASTMcVHY/Xq5zx.B.9etNoFqvRojrDgXIsOiL.rMqD9eJ2	\N	\N	\N	2026-03-17 09:09:48.065107	2026-03-17 09:09:48.065107	169	0
197	partner20@winehub.test	$2a$12$plfB2DPKOXMDlQkuQeyKJOE.lUapQoD6rV/xUvKiU6.zuOf8.Hgdm	\N	\N	\N	2026-03-17 09:09:48.292134	2026-03-17 09:09:48.292134	170	0
198	partner21@winehub.test	$2a$12$sYqpglSU60EmuisqtaLLNuJpgPftljVM2F/PCzx6TB39oS08j0ZqW	\N	\N	\N	2026-03-17 09:09:48.516059	2026-03-17 09:09:48.516059	171	0
199	partner22@winehub.test	$2a$12$9GUNh50fkpRA2GKzL1u33uhkAkJURlv6SwzNjetKd9O63OYEREDZm	\N	\N	\N	2026-03-17 09:09:48.737843	2026-03-17 09:09:48.737843	172	0
200	partner23@winehub.test	$2a$12$xiGafBHHu8bhnTnafYPfQOY.FadWqMx6UK5ePKSmZim/IOEMQCF6S	\N	\N	\N	2026-03-17 09:09:48.96315	2026-03-17 09:09:48.96315	173	0
201	partner24@winehub.test	$2a$12$BQ8uWTBneYT20Vbnjs7LD.HCmGG9v69RnVv/N0mUeRsp3QOeB5iAC	\N	\N	\N	2026-03-17 09:09:49.186752	2026-03-17 09:09:49.186752	174	0
202	partner25@winehub.test	$2a$12$C6FIJO2d.kUoJHJbvRphH.v8rgGb3aHeMvFauiyYNGhHD5cjX4VjC	\N	\N	\N	2026-03-17 09:09:49.40861	2026-03-17 09:09:49.40861	175	0
203	partner26@winehub.test	$2a$12$DUD/Ihs0fPFmmAsQDt6ube5sNI3FY7aWVplJZPN83YgflXtZ7YYJm	\N	\N	\N	2026-03-17 09:09:49.631928	2026-03-17 09:09:49.631928	176	0
204	partner27@winehub.test	$2a$12$4q2/8REkyJgQlBqj/iLGj.b5AOLXx4tJcAinBwj2zgh3VEXwDWJOG	\N	\N	\N	2026-03-17 09:09:49.854254	2026-03-17 09:09:49.854254	177	0
205	partner28@winehub.test	$2a$12$bAeK1GMWrYvFLlnPQOxSV.WHbz2w9gDQ3v28hUBD0eG.TrUhclUAe	\N	\N	\N	2026-03-17 09:09:50.078685	2026-03-17 09:09:50.078685	178	0
206	partner29@winehub.test	$2a$12$ZN.4Id470pjRoYzURXpNte6fgEMyUZDZLmASDvepNZWtdLseb6Fsm	\N	\N	\N	2026-03-17 09:09:50.300938	2026-03-17 09:09:50.300938	179	0
207	partner30@winehub.test	$2a$12$GfuRV5Oy4YoguKHr/7tnCuAfeQH5yYMzlEMlDmIkQFm/zDPwlZgDq	\N	\N	\N	2026-03-17 09:09:50.523979	2026-03-17 09:09:50.523979	180	0
208	partner31@winehub.test	$2a$12$7OEdwSa2YtweRlo3wPY6JuY/sJvOrH4F0XSv4W7v7A6FGrQATL8Xa	\N	\N	\N	2026-03-17 09:09:50.745705	2026-03-17 09:09:50.745705	181	0
209	partner32@winehub.test	$2a$12$jXRn9DJOMU/0FdI3sma79.iz.tGJ9zMa4gbGDg/R8U80GmXG4Booe	\N	\N	\N	2026-03-17 09:09:50.969121	2026-03-17 09:09:50.969121	182	0
210	partner33@winehub.test	$2a$12$s2kL/52xRIrjJrRPrlCxmOjIqTpa37RUuV7e6k4..dH6RAoatCTna	\N	\N	\N	2026-03-17 09:09:51.193664	2026-03-17 09:09:51.193664	183	0
211	partner34@winehub.test	$2a$12$LBD958le7cw2TJx7MTxXMOx4SI.ckH1qhD1WRP/MLNUx.L0iuVcPq	\N	\N	\N	2026-03-17 09:09:51.415886	2026-03-17 09:09:51.415886	184	0
212	partner35@winehub.test	$2a$12$kv6Yobv4YrYsFXkSJxf28uWacrcMeCTZeccMh2eN5bX7DJYTbTch2	\N	\N	\N	2026-03-17 09:09:51.638853	2026-03-17 09:09:51.638853	185	0
213	partner36@winehub.test	$2a$12$hvbXLyeD3jUESS8Oz2tU9OP7K2BqZ5UfrwviaxOJRMRzCNFuy8iaG	\N	\N	\N	2026-03-17 09:09:51.860665	2026-03-17 09:09:51.860665	186	0
214	partner37@winehub.test	$2a$12$.rRQFp0D/i/jNRfaLpWsJepyy5fZwJch9015E8Y5AAJTdMWDtAbey	\N	\N	\N	2026-03-17 09:09:52.084473	2026-03-17 09:09:52.084473	187	0
215	partner38@winehub.test	$2a$12$SwMYCGiTSAB0J.2DTjskIurOxxnE1NpZfk5c6Evf3k.JwyukT6QAy	\N	\N	\N	2026-03-17 09:09:52.306304	2026-03-17 09:09:52.306304	188	0
216	partner39@winehub.test	$2a$12$SRYHRAMfoNiZ.BFa21aK8eOPoiTAB5EoGXqYv2JlU3h5paW4bQyLm	\N	\N	\N	2026-03-17 09:09:52.529698	2026-03-17 09:09:52.529698	189	0
217	partner40@winehub.test	$2a$12$qAcHoUsRLj5MvnBhbEmcuulx8xpGGUkhm7wyNdeDiA7njg0EgbcOq	\N	\N	\N	2026-03-17 09:09:52.752092	2026-03-17 09:09:52.752092	190	0
218	partner41@winehub.test	$2a$12$xJJTUm2KxOsqFFTJek0LaePuzytvaRywBAB1X2AAhAGvYqZuqUqZO	\N	\N	\N	2026-03-17 09:09:52.974772	2026-03-17 09:09:52.974772	191	0
219	partner42@winehub.test	$2a$12$mSKCmUBRh2gyj8YygIqpju.8.TCdGXFVbxtzUMTUfjklM7/h0KCYm	\N	\N	\N	2026-03-17 09:09:53.198116	2026-03-17 09:09:53.198116	192	0
220	partner43@winehub.test	$2a$12$YOqlCF8XYLVjd8y.XG2wROvyIc5tRILIklbMsJmUMuB5l10fuG46q	\N	\N	\N	2026-03-17 09:09:53.419941	2026-03-17 09:09:53.419941	193	0
221	partner44@winehub.test	$2a$12$egNLdHwFZre/1JWfngNPbO6E/mlHDtcE7oei1GTz65d5y7osUp/bq	\N	\N	\N	2026-03-17 09:09:53.642639	2026-03-17 09:09:53.642639	194	0
222	partner45@winehub.test	$2a$12$38/CmwmHUoZr7idvzF1mt.DqqP.t.6ikFI6ydsn7.LqxSc4glwXm.	\N	\N	\N	2026-03-17 09:09:53.86423	2026-03-17 09:09:53.86423	195	0
223	partner46@winehub.test	$2a$12$IOZvFKb0SkrmqLp2TTX8/e4siNtfBRioh2.ykllgpyp0tG0DCJtsS	\N	\N	\N	2026-03-17 09:09:54.088075	2026-03-17 09:09:54.088075	196	0
224	partner47@winehub.test	$2a$12$NnGLgSyEjiTUF9D174Dqq.YCy163VvVacPjQScEKCUVlQUxPx6MSK	\N	\N	\N	2026-03-17 09:09:54.310903	2026-03-17 09:09:54.310903	197	0
225	partner48@winehub.test	$2a$12$JluAT5SI.FsQOJxF7SYAiO3mHadLF64SHYI.SIWh0dlXkfiq.tDrq	\N	\N	\N	2026-03-17 09:09:54.534494	2026-03-17 09:09:54.534494	198	0
226	partner49@winehub.test	$2a$12$9wyxi4bki6qEzT0eYye/fOJbgx8GFea5TXoRgDFA40PR6bNRu3myu	\N	\N	\N	2026-03-17 09:09:54.756897	2026-03-17 09:09:54.756897	199	0
227	partner50@winehub.test	$2a$12$.imzDR7lKXh4W7rcLWzAFu3ubobvUhMSLw/IrF0nbTxNexbe4Aya6	\N	\N	\N	2026-03-17 09:09:54.98035	2026-03-17 09:09:54.98035	200	0
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 30, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 30, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.companies_id_seq', 200, true);


--
-- Name: offers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.offers_id_seq', 14, true);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.order_items_id_seq', 2885, true);


--
-- Name: order_status_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.order_status_histories_id_seq', 1359, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.orders_id_seq', 764, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.products_id_seq', 23372, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bornaivancic
--

SELECT pg_catalog.setval('public.users_id_seq', 227, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: offers offers_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: order_status_histories order_status_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.order_status_histories
    ADD CONSTRAINT order_status_histories_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_offers_on_order_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_offers_on_order_id ON public.offers USING btree (order_id);


--
-- Name: index_order_items_on_order_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_order_items_on_order_id ON public.order_items USING btree (order_id);


--
-- Name: index_order_items_on_order_id_and_product_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE UNIQUE INDEX index_order_items_on_order_id_and_product_id ON public.order_items USING btree (order_id, product_id);


--
-- Name: index_order_items_on_product_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_order_items_on_product_id ON public.order_items USING btree (product_id);


--
-- Name: index_order_status_histories_on_changed_by_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_order_status_histories_on_changed_by_id ON public.order_status_histories USING btree (changed_by_id);


--
-- Name: index_order_status_histories_on_order_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_order_status_histories_on_order_id ON public.order_status_histories USING btree (order_id);


--
-- Name: index_orders_on_company_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_orders_on_company_id ON public.orders USING btree (company_id);


--
-- Name: index_orders_on_created_by_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_orders_on_created_by_id ON public.orders USING btree (created_by_id);


--
-- Name: index_products_on_sku; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE UNIQUE INDEX index_products_on_sku ON public.products USING btree (sku);


--
-- Name: index_products_on_stock_quantity; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_products_on_stock_quantity ON public.products USING btree (stock_quantity);


--
-- Name: index_users_on_company_id; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE INDEX index_users_on_company_id ON public.users USING btree (company_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: bornaivancic
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: offers fk_rails_03fff695dd; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT fk_rails_03fff695dd FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: order_status_histories fk_rails_2b161b5f6d; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.order_status_histories
    ADD CONSTRAINT fk_rails_2b161b5f6d FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: users fk_rails_7682a3bdfe; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_7682a3bdfe FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: orders fk_rails_9ac523da23; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_9ac523da23 FOREIGN KEY (created_by_id) REFERENCES public.users(id);


--
-- Name: order_status_histories fk_rails_c2455aae0a; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.order_status_histories
    ADD CONSTRAINT fk_rails_c2455aae0a FOREIGN KEY (changed_by_id) REFERENCES public.users(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: orders fk_rails_dfd2d6dcf6; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_dfd2d6dcf6 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: order_items fk_rails_e3cb28f071; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_rails_e3cb28f071 FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: order_items fk_rails_f1a29ddd47; Type: FK CONSTRAINT; Schema: public; Owner: bornaivancic
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_rails_f1a29ddd47 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

\unrestrict ZNoUJPgXlS1klfcUX640t5eUYICVnWhVtCVmU65GBqzogmCZ6CEMdmblPj7XacG

