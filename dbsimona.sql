--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.18
-- Dumped by pg_dump version 9.5.5

-- Started on 2019-11-27 15:01:46

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2294 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 16409)
-- Name: anggaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE anggaran (
    "ID" integer NOT NULL,
    kode character varying(20),
    parent integer,
    uraian text
);


ALTER TABLE anggaran OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16407)
-- Name: anggaran_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "anggaran_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "anggaran_ID_seq" OWNER TO postgres;

--
-- TOC entry 2295 (class 0 OID 0)
-- Dependencies: 183
-- Name: anggaran_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "anggaran_ID_seq" OWNED BY anggaran."ID";


--
-- TOC entry 186 (class 1259 OID 16431)
-- Name: detil_dipa; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE detil_dipa (
    dipa_id integer NOT NULL,
    intern_id integer,
    mdipa_id integer,
    pos_id integer,
    akun_id integer,
    dipa_nominal double precision NOT NULL,
    dipa_total_realisasi double precision,
    dipa_blokir character(1),
    dipa_catatan character varying(150),
    dipa_id_before integer,
    dipa_user_id integer,
    dipa_update_time date
);


ALTER TABLE detil_dipa OWNER TO usimona;

--
-- TOC entry 185 (class 1259 OID 16429)
-- Name: detil_dipa_dipa_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE detil_dipa_dipa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE detil_dipa_dipa_id_seq OWNER TO usimona;

--
-- TOC entry 2296 (class 0 OID 0)
-- Dependencies: 185
-- Name: detil_dipa_dipa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE detil_dipa_dipa_id_seq OWNED BY detil_dipa.dipa_id;


--
-- TOC entry 188 (class 1259 OID 16444)
-- Name: global; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE global (
    global_id integer NOT NULL,
    global_name character varying(15) NOT NULL,
    global_value character varying(100) NOT NULL,
    global_user_id integer,
    global_update_time date
);


ALTER TABLE global OWNER TO usimona;

--
-- TOC entry 187 (class 1259 OID 16442)
-- Name: global_global_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE global_global_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE global_global_id_seq OWNER TO usimona;

--
-- TOC entry 2297 (class 0 OID 0)
-- Dependencies: 187
-- Name: global_global_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE global_global_id_seq OWNED BY global.global_id;


--
-- TOC entry 190 (class 1259 OID 16453)
-- Name: kode_akun; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE kode_akun (
    akun_id integer NOT NULL,
    parent_level2 integer,
    parent_level3 integer,
    parent_level4 integer,
    parent_level5 integer,
    akun_kode character varying(4) NOT NULL,
    akun_uraian text NOT NULL
);


ALTER TABLE kode_akun OWNER TO usimona;

--
-- TOC entry 189 (class 1259 OID 16451)
-- Name: kode_akun_akun_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE kode_akun_akun_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kode_akun_akun_id_seq OWNER TO usimona;

--
-- TOC entry 2298 (class 0 OID 0)
-- Dependencies: 189
-- Name: kode_akun_akun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE kode_akun_akun_id_seq OWNED BY kode_akun.akun_id;


--
-- TOC entry 192 (class 1259 OID 16469)
-- Name: kode_bagian; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE kode_bagian (
    bag_id integer NOT NULL,
    kotama_parent_id integer,
    satker_parent_id integer,
    wil_id integer,
    bag_kode character varying(9) NOT NULL,
    bag_nama character varying(100) NOT NULL,
    bag_alamat character varying(150)
);


ALTER TABLE kode_bagian OWNER TO usimona;

--
-- TOC entry 191 (class 1259 OID 16467)
-- Name: kode_bagian_bag_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE kode_bagian_bag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kode_bagian_bag_id_seq OWNER TO usimona;

--
-- TOC entry 2299 (class 0 OID 0)
-- Dependencies: 191
-- Name: kode_bagian_bag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE kode_bagian_bag_id_seq OWNED BY kode_bagian.bag_id;


--
-- TOC entry 194 (class 1259 OID 16481)
-- Name: kode_intern; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE kode_intern (
    intern_id integer NOT NULL,
    parent_jns_dana_id integer,
    intern_kode character(2) NOT NULL,
    intern_uraian character varying(30) NOT NULL
);


ALTER TABLE kode_intern OWNER TO usimona;

--
-- TOC entry 193 (class 1259 OID 16479)
-- Name: kode_intern_intern_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE kode_intern_intern_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kode_intern_intern_id_seq OWNER TO usimona;

--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 193
-- Name: kode_intern_intern_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE kode_intern_intern_id_seq OWNED BY kode_intern.intern_id;


--
-- TOC entry 196 (class 1259 OID 16491)
-- Name: kode_pos; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE kode_pos (
    pos_id integer NOT NULL,
    subfung_parent_id integer,
    prog_parent_id integer,
    subprog_parent_id integer,
    giat_parent_id integer,
    output_parent_id integer,
    komp_parent_id integer,
    sub_komp_parent_id integer,
    pos_kode character(4) NOT NULL,
    pos_nama character varying(150) NOT NULL,
    pos_level smallint
);


ALTER TABLE kode_pos OWNER TO usimona;

--
-- TOC entry 195 (class 1259 OID 16489)
-- Name: kode_pos_pos_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE kode_pos_pos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kode_pos_pos_id_seq OWNER TO usimona;

--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 195
-- Name: kode_pos_pos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE kode_pos_pos_id_seq OWNED BY kode_pos.pos_id;


--
-- TOC entry 205 (class 1259 OID 16664)
-- Name: kode_pos_temp; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE kode_pos_temp (
    pos_id integer DEFAULT nextval('kode_pos_pos_id_seq'::regclass) NOT NULL,
    pos_kode character(10) NOT NULL,
    pos_nama character varying(150) NOT NULL,
    pos_level smallint,
    pos_volume integer,
    pos_jumlah numeric,
    pos_template bigint,
    pos_parent_kode character(100),
    pos_id_tahun integer
);


ALTER TABLE kode_pos_temp OWNER TO usimona;

--
-- TOC entry 198 (class 1259 OID 16507)
-- Name: master_dipa; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE master_dipa (
    mdipa_id integer NOT NULL,
    ta_id integer,
    bag_id integer,
    mdipa_no character varying(50) NOT NULL,
    mdipa_tgl_sah date,
    mdipa_rev smallint NOT NULL,
    mdipa_user_id integer,
    mdipa_update_time date
);


ALTER TABLE master_dipa OWNER TO usimona;

--
-- TOC entry 197 (class 1259 OID 16505)
-- Name: master_dipa_mdipa_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE master_dipa_mdipa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE master_dipa_mdipa_id_seq OWNER TO usimona;

--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 197
-- Name: master_dipa_mdipa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE master_dipa_mdipa_id_seq OWNED BY master_dipa.mdipa_id;


--
-- TOC entry 200 (class 1259 OID 16518)
-- Name: realisasi; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE realisasi (
    r_id integer NOT NULL,
    dipa_id integer,
    r_tanggal date NOT NULL,
    r_ket text,
    r_jumlah double precision NOT NULL,
    r_user_id integer,
    r_update_time date
);


ALTER TABLE realisasi OWNER TO usimona;

--
-- TOC entry 199 (class 1259 OID 16516)
-- Name: realisasi_r_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE realisasi_r_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE realisasi_r_id_seq OWNER TO usimona;

--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 199
-- Name: realisasi_r_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE realisasi_r_id_seq OWNED BY realisasi.r_id;


--
-- TOC entry 202 (class 1259 OID 16531)
-- Name: tahun_anggaran; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE tahun_anggaran (
    ta_id integer NOT NULL,
    ta_tahun smallint NOT NULL
);


ALTER TABLE tahun_anggaran OWNER TO usimona;

--
-- TOC entry 201 (class 1259 OID 16529)
-- Name: tahun_anggaran_ta_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE tahun_anggaran_ta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tahun_anggaran_ta_id_seq OWNER TO usimona;

--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 201
-- Name: tahun_anggaran_ta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE tahun_anggaran_ta_id_seq OWNED BY tahun_anggaran.ta_id;


--
-- TOC entry 182 (class 1259 OID 16397)
-- Name: user; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE "user" (
    "ID" integer NOT NULL,
    username character(100) NOT NULL,
    password character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    create_on timestamp without time zone,
    last_login timestamp without time zone,
    user_type integer
);


ALTER TABLE "user" OWNER TO usimona;

--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN "user".user_type; Type: COMMENT; Schema: public; Owner: usimona
--

COMMENT ON COLUMN "user".user_type IS '1: Kemhan Admin
2: Kemhan UO
2: Mabes TNI UO
2: TNI AD UO
2: TNI AU UO
2: TNI AL UO
3: Kotama
4: Satker';


--
-- TOC entry 181 (class 1259 OID 16395)
-- Name: user_ID_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE "user_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "user_ID_seq" OWNER TO usimona;

--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 181
-- Name: user_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE "user_ID_seq" OWNED BY "user"."ID";


--
-- TOC entry 204 (class 1259 OID 16540)
-- Name: wilayah; Type: TABLE; Schema: public; Owner: usimona
--

CREATE TABLE wilayah (
    wil_id integer NOT NULL,
    kab_parent_id integer,
    wil_kode character varying(5),
    wil_nama character varying(100) NOT NULL
);


ALTER TABLE wilayah OWNER TO usimona;

--
-- TOC entry 203 (class 1259 OID 16538)
-- Name: wilayah_wil_id_seq; Type: SEQUENCE; Schema: public; Owner: usimona
--

CREATE SEQUENCE wilayah_wil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wilayah_wil_id_seq OWNER TO usimona;

--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 203
-- Name: wilayah_wil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usimona
--

ALTER SEQUENCE wilayah_wil_id_seq OWNED BY wilayah.wil_id;


--
-- TOC entry 2056 (class 2604 OID 16412)
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anggaran ALTER COLUMN "ID" SET DEFAULT nextval('"anggaran_ID_seq"'::regclass);


--
-- TOC entry 2057 (class 2604 OID 16434)
-- Name: dipa_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY detil_dipa ALTER COLUMN dipa_id SET DEFAULT nextval('detil_dipa_dipa_id_seq'::regclass);


--
-- TOC entry 2058 (class 2604 OID 16447)
-- Name: global_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY global ALTER COLUMN global_id SET DEFAULT nextval('global_global_id_seq'::regclass);


--
-- TOC entry 2059 (class 2604 OID 16456)
-- Name: akun_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_akun ALTER COLUMN akun_id SET DEFAULT nextval('kode_akun_akun_id_seq'::regclass);


--
-- TOC entry 2060 (class 2604 OID 16472)
-- Name: bag_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_bagian ALTER COLUMN bag_id SET DEFAULT nextval('kode_bagian_bag_id_seq'::regclass);


--
-- TOC entry 2061 (class 2604 OID 16484)
-- Name: intern_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_intern ALTER COLUMN intern_id SET DEFAULT nextval('kode_intern_intern_id_seq'::regclass);


--
-- TOC entry 2062 (class 2604 OID 16494)
-- Name: pos_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos ALTER COLUMN pos_id SET DEFAULT nextval('kode_pos_pos_id_seq'::regclass);


--
-- TOC entry 2063 (class 2604 OID 16510)
-- Name: mdipa_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY master_dipa ALTER COLUMN mdipa_id SET DEFAULT nextval('master_dipa_mdipa_id_seq'::regclass);


--
-- TOC entry 2064 (class 2604 OID 16521)
-- Name: r_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY realisasi ALTER COLUMN r_id SET DEFAULT nextval('realisasi_r_id_seq'::regclass);


--
-- TOC entry 2065 (class 2604 OID 16534)
-- Name: ta_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY tahun_anggaran ALTER COLUMN ta_id SET DEFAULT nextval('tahun_anggaran_ta_id_seq'::regclass);


--
-- TOC entry 2055 (class 2604 OID 16400)
-- Name: ID; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY "user" ALTER COLUMN "ID" SET DEFAULT nextval('"user_ID_seq"'::regclass);


--
-- TOC entry 2066 (class 2604 OID 16543)
-- Name: wil_id; Type: DEFAULT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY wilayah ALTER COLUMN wil_id SET DEFAULT nextval('wilayah_wil_id_seq'::regclass);


--
-- TOC entry 2265 (class 0 OID 16409)
-- Dependencies: 184
-- Data for Name: anggaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY anggaran ("ID", kode, parent, uraian) FROM stdin;
33	11	0	A
34	111	1	AB
35	1111	2	ABC
36	1112	2	ABD
37	112	0	B
38	1121	5	BA
39	1122	5	BB
40	11221	7	BBA
\.


--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 183
-- Name: anggaran_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"anggaran_ID_seq"', 40, true);


--
-- TOC entry 2267 (class 0 OID 16431)
-- Dependencies: 186
-- Data for Name: detil_dipa; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY detil_dipa (dipa_id, intern_id, mdipa_id, pos_id, akun_id, dipa_nominal, dipa_total_realisasi, dipa_blokir, dipa_catatan, dipa_id_before, dipa_user_id, dipa_update_time) FROM stdin;
\.


--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 185
-- Name: detil_dipa_dipa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('detil_dipa_dipa_id_seq', 1, false);


--
-- TOC entry 2269 (class 0 OID 16444)
-- Dependencies: 188
-- Data for Name: global; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY global (global_id, global_name, global_value, global_user_id, global_update_time) FROM stdin;
\.


--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 187
-- Name: global_global_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('global_global_id_seq', 1, false);


--
-- TOC entry 2271 (class 0 OID 16453)
-- Dependencies: 190
-- Data for Name: kode_akun; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY kode_akun (akun_id, parent_level2, parent_level3, parent_level4, parent_level5, akun_kode, akun_uraian) FROM stdin;
\.


--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 189
-- Name: kode_akun_akun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('kode_akun_akun_id_seq', 1, false);


--
-- TOC entry 2273 (class 0 OID 16469)
-- Dependencies: 192
-- Data for Name: kode_bagian; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY kode_bagian (bag_id, kotama_parent_id, satker_parent_id, wil_id, bag_kode, bag_nama, bag_alamat) FROM stdin;
\.


--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 191
-- Name: kode_bagian_bag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('kode_bagian_bag_id_seq', 1, false);


--
-- TOC entry 2275 (class 0 OID 16481)
-- Dependencies: 194
-- Data for Name: kode_intern; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY kode_intern (intern_id, parent_jns_dana_id, intern_kode, intern_uraian) FROM stdin;
\.


--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 193
-- Name: kode_intern_intern_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('kode_intern_intern_id_seq', 1, false);


--
-- TOC entry 2277 (class 0 OID 16491)
-- Dependencies: 196
-- Data for Name: kode_pos; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY kode_pos (pos_id, subfung_parent_id, prog_parent_id, subprog_parent_id, giat_parent_id, output_parent_id, komp_parent_id, sub_komp_parent_id, pos_kode, pos_nama, pos_level) FROM stdin;
\.


--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 195
-- Name: kode_pos_pos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('kode_pos_pos_id_seq', 3288, true);


--
-- TOC entry 2286 (class 0 OID 16664)
-- Dependencies: 205
-- Data for Name: kode_pos_temp; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY kode_pos_temp (pos_id, pos_kode, pos_nama, pos_level, pos_volume, pos_jumlah, pos_template, pos_parent_kode, pos_id_tahun) FROM stdin;
3242	14        	Program Dukungan Kesiapan Matra Darat                                                                                                                 	1	0	1058070029000	11395535	0                                                                                                   	1
3243	1445      	Kerja Sama Internasional Matra Darat                                                                                                                  	2	0	7908291000	11395535	14                                                                                                  	1
3244	1445.001  	Kerjasama Internasional Matra Darat[Base Line]                                                                                                       	3	20	56000000	11395535	1445                                                                                                	1
3245	001       	Kerjasama Internasional                                                                                                                               	4	0	7908291000	11395535	1445.001                                                                                            	1
3246	003       	Dukungan Operasional Pertahanan dan Keamanan                                                                                                          	5	0	7908291000	11395535	1445.001.001                                                                                        	1
3247	B         	Pembinaan Kerjasama Internasional 	6	0	7908291000	11395535	1445.001.001.003                                                                                    	1
3248	521119    	Belanja Barang Operasional Lainnya                                                                                                                    	7	0	5261728000	11395535	1445.001.001.003.B                                                                                  	1
3249	524219    	Beban Perjalanan Dinas Lainnya - Luar Negeri                                                                                                          	7	0	2646563000	11395535	1445.001.001.003.B                                                                                  	1
3250	B.1       	Kunjungan Pa Intelijen TNI AD ke Luar Negeri	8	0	240882000	11395535	1445.001.001.003.B.521119                                                                           	1
3251	B.2       	Kunjungan Personel Intelijen AD Negara Sahabat ke TNI AD	8	0	1314541000	11395535	1445.001.001.003.B.521119                                                                           	1
3252	B.3       	Rapat/Giat dengan Angkatan dan Community Athan/As Athan serta Badan Internasional Negara Asing                                                        	8	0	3706305000	11395535	1445.001.001.003.B.521119                                                                           	1
3253	B.4       	Kunjungan Pa Intelijen TNI AD ke Luar Negeri                                                                                                          	8	0	2646563000	11395535	1445.001.001.003.B.521119                                                                           	1
3254	B.5       	Giat Rapat/Seminar/Simposium Giat Rutin Tahunan di Dalam Negeri                                                                                       	8	0	403620000	11395535	1445.001.001.003.B.521119                                                                           	1
3255	B.6       	Giat Rapat/Seminar/Simposium Giat Rutin Tahunan di Luar Negeri                                                                                        	8	0	676575000	11395535	1445.001.001.003.B.521119                                                                           	1
3256	B.1.1     	Rapat Staf penyiapan kunjungan ke Satintel Negara Asing	9	1	100000000	11395535	B.1                                                                                                 	1
3257	B.1.2     	Kebutuhan administrasi perlengkapan Binkersin	9	1	140882000	11395535	B.1                                                                                                 	1
3258	B.2.1     	Kunjungan pejabat Kawasan (Asia Pasifik/Afrika)	9	1	195000000	11395535	B.2                                                                                                 	1
3259	B.2.2     	Kunjungan pejabat Kawasan (Asia Pasifik/Afrika) 	9	1	195000000	11395535	B.2                                                                                                 	1
3260	B.2.3     	Kunjungan pejabat Kawasan (Amerika/Eropa)	9	1	195000000	11395535	B.2                                                                                                 	1
3261	B.2.4     	Kunjungan pejabat Kawasan (Asia Pasifik/Afrika)	9	1	195000000	11395535	B.2                                                                                                 	1
3262	B.2.5     	Kunjungan pejabat Kawasan (Asia Pasifik/Afrika) 	9	1	195000000	11395535	B.2                                                                                                 	1
3263	B.2.6     	Pendampingan Pa Intelijen	9	1	184541000	11395535	B.2                                                                                                 	1
3264	B.2.7     	Rapat Staf penyiapan kunjungan pejabat Intelijen Asing	9	1	75000000	11395535	B.2                                                                                                 	1
3265	B.2.8     	Kebutuhan protokoler tamu Asing	9	1	80000000	11395535	B.2                                                                                                 	1
3266	B.3.1     	Giat Rapat/Seminar/Simposium Giat Rutin Tahunan di dalam Negeri                                                                                       	9	0	2912318000	11395535	B.3                                                                                                 	1
3267	B.3.2     	Giat Milat (Pejabat TNI AD dengan Athan/AD Negara Sahabat                                                                                             	9	0	705000000	11395535	B.3                                                                                                 	1
3268	B.3.3     	Giat Rpat/Seminar/Simposium Giat Rutin Tahunan di Luar Negeri                                                                                         	9	0	88987000	11395535	B.3                                                                                                 	1
3269	B.4.1     	Kunjungan ke Satintel Negara Thailand                                                                                                                 	9	1	213218000	11395535	B.4                                                                                                 	1
3270	B.4.2     	Kunjungan ke Satintel Negara Mesir                                                                                                                    	9	1	381982000	11395535	B.4                                                                                                 	1
3271	B.4.3     	Kunjungan ke Satintel Negara Singapura                                                                                                                	9	1	235972000	11395535	B.4                                                                                                 	1
3272	B.4.4     	Kunjungan ke Satintel Negara Filipina                                                                                                                 	9	1	208971000	11395535	B.4                                                                                                 	1
3273	B.4.5     	Kunjungan ke Satintel Negara Amerika Serikat                                                                                                          	9	1	526225000	11395535	B.4                                                                                                 	1
3274	B.5.1     	SMEE Intelijen TNI AD - USARPAC                                                                                                                       	9	1	135190000	11395535	B.5                                                                                                 	1
3275	B.5.2     	SMEE Intelijen TNI AD - Singapura                                                                                                                     	9	1	133240000	11395535	B.5                                                                                                 	1
3276	B.5.3     	SMEE Intelijen TNI AD - Filipina                                                                                                                      	9	1	135190000	11395535	B.5                                                                                                 	1
3277	B.6.1     	SMEE Intelijen TNI AD - USARPAC                                                                                                                       	9	1	509361000	11395535	B.6                                                                                                 	1
3278	B.6.2     	SMEE Intelijen TNI AD - Singapura                                                                                                                     	9	1	167214000	11395535	B.6                                                                                                 	1
3279	B.3.1.1   	SMEE Intelijen TNI AD - AD Singapura                                                                                                                  	10	1	56760000	11395535	B.3.1                                                                                               	1
3280	B.3.1.2   	SMEE Intelijen TNI AD - AD Filipina                                                                                                                   	10	1	54810000	11395535	B.3.1                                                                                               	1
3281	B.3.1.3   	Rapat Giat Rutin                                                                                                                                      	10	1	100000000	11395535	B.3.1                                                                                               	1
3282	B.3.1.4   	Pelaksanaan AWG ACAMM & AAISW                                                                                                                         	10	1	2645938000	11395535	B.3.1                                                                                               	1
3283	B.3.1.5   	SMEE Intelijen TNI AD - USARPAC                                                                                                                       	10	1	54810000	11395535	B.3.1                                                                                               	1
3284	B.3.2.1   	Olah Raga bersama Aspam Kasad dengan Athan/Atad Negara sahabat                                                                                        	10	1	250000000	11395535	B.3.2                                                                                               	1
3285	B.3.2.2   	Coffee Morning Aspam Kasad                                                                                                                            	10	1	135000000	11395535	B.3.2                                                                                               	1
3286	B.3.2.3   	Forum Interaksi dengan Athan/Atad negara sahabat di Jakarta                                                                                           	10	1	320000000	11395535	B.3.2                                                                                               	1
3287	B.3.3.1   	SMEE Intelijen TNI AD-USARPAC                                                                                                                         	10	1	33101000	11395535	B.3.3                                                                                               	1
3288	B.3.3.2   	SMEE Intelijen TNI AD - Singapura                                                                                                                     	10	1	55886000	11395535	B.3.3                                                                                               	1
\.


--
-- TOC entry 2279 (class 0 OID 16507)
-- Dependencies: 198
-- Data for Name: master_dipa; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY master_dipa (mdipa_id, ta_id, bag_id, mdipa_no, mdipa_tgl_sah, mdipa_rev, mdipa_user_id, mdipa_update_time) FROM stdin;
\.


--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 197
-- Name: master_dipa_mdipa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('master_dipa_mdipa_id_seq', 1, false);


--
-- TOC entry 2281 (class 0 OID 16518)
-- Dependencies: 200
-- Data for Name: realisasi; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY realisasi (r_id, dipa_id, r_tanggal, r_ket, r_jumlah, r_user_id, r_update_time) FROM stdin;
\.


--
-- TOC entry 2316 (class 0 OID 0)
-- Dependencies: 199
-- Name: realisasi_r_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('realisasi_r_id_seq', 1, false);


--
-- TOC entry 2283 (class 0 OID 16531)
-- Dependencies: 202
-- Data for Name: tahun_anggaran; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY tahun_anggaran (ta_id, ta_tahun) FROM stdin;
\.


--
-- TOC entry 2317 (class 0 OID 0)
-- Dependencies: 201
-- Name: tahun_anggaran_ta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('tahun_anggaran_ta_id_seq', 1, false);


--
-- TOC entry 2263 (class 0 OID 16397)
-- Dependencies: 182
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY "user" ("ID", username, password, email, create_on, last_login, user_type) FROM stdin;
1	kemhan_admin                                                                                        	44c8350ca11a9a5c0bf1378a0485d09d	kemhan_admin@kemhan.go.id	2011-01-01 00:00:00	2011-01-01 00:00:00	1
2	kemhan_uo                                                                                           	4c9aab0adf4e670d9e1c3ee77903684d	kemhan_uo@kemhan.go.id	\N	\N	2
3	tni_ad_uo                                                                                           	4e13f37920cec9dff00453a2d3c42852	tni_ad_uo@kemhan.go.id	\N	\N	2
4	tni_al_uo                                                                                           	3ba3e2e5196c3d6ba7b767aab1c4773d	tni_al_uo@kemhan.go.id	\N	\N	2
5	tni_au_uo                                                                                           	a9670c2831e2cdf6fb0ce0b01e9f3d23	tni_au_uo@kemhan.go.id	\N	\N	2
6	kotama                                                                                              	8370ff304b6240d6c7bcdf8620ca645a	kotama@kemhan.go.id	\N	\N	3
7	satker                                                                                              	418b6672efe440cdce92f2f1233f9815	satker@kemhan.go.id	\N	\N	4
\.


--
-- TOC entry 2318 (class 0 OID 0)
-- Dependencies: 181
-- Name: user_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('"user_ID_seq"', 7, true);


--
-- TOC entry 2285 (class 0 OID 16540)
-- Dependencies: 204
-- Data for Name: wilayah; Type: TABLE DATA; Schema: public; Owner: usimona
--

COPY wilayah (wil_id, kab_parent_id, wil_kode, wil_nama) FROM stdin;
\.


--
-- TOC entry 2319 (class 0 OID 0)
-- Dependencies: 203
-- Name: wilayah_wil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usimona
--

SELECT pg_catalog.setval('wilayah_wil_id_seq', 1, false);


--
-- TOC entry 2071 (class 2606 OID 16426)
-- Name: PKAnggaran; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anggaran
    ADD CONSTRAINT "PKAnggaran" PRIMARY KEY ("ID");


--
-- TOC entry 2069 (class 2606 OID 16428)
-- Name: PKUser; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "PKUser" PRIMARY KEY ("ID");


--
-- TOC entry 2074 (class 2606 OID 16436)
-- Name: pk_detil_dipa; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY detil_dipa
    ADD CONSTRAINT pk_detil_dipa PRIMARY KEY (dipa_id);


--
-- TOC entry 2081 (class 2606 OID 16449)
-- Name: pk_global; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY global
    ADD CONSTRAINT pk_global PRIMARY KEY (global_id);


--
-- TOC entry 2084 (class 2606 OID 16461)
-- Name: pk_kode_akun; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_akun
    ADD CONSTRAINT pk_kode_akun PRIMARY KEY (akun_id);


--
-- TOC entry 2091 (class 2606 OID 16474)
-- Name: pk_kode_bagian; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_bagian
    ADD CONSTRAINT pk_kode_bagian PRIMARY KEY (bag_id);


--
-- TOC entry 2097 (class 2606 OID 16486)
-- Name: pk_kode_intern; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_intern
    ADD CONSTRAINT pk_kode_intern PRIMARY KEY (intern_id);


--
-- TOC entry 2101 (class 2606 OID 16496)
-- Name: pk_kode_pos; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos
    ADD CONSTRAINT pk_kode_pos PRIMARY KEY (pos_id);


--
-- TOC entry 2111 (class 2606 OID 16512)
-- Name: pk_master_dipa; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY master_dipa
    ADD CONSTRAINT pk_master_dipa PRIMARY KEY (mdipa_id);


--
-- TOC entry 2115 (class 2606 OID 16526)
-- Name: pk_realisasi; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY realisasi
    ADD CONSTRAINT pk_realisasi PRIMARY KEY (r_id);


--
-- TOC entry 2119 (class 2606 OID 16536)
-- Name: pk_tahun_anggaran; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY tahun_anggaran
    ADD CONSTRAINT pk_tahun_anggaran PRIMARY KEY (ta_id);


--
-- TOC entry 2122 (class 2606 OID 16545)
-- Name: pk_wilayah; Type: CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY wilayah
    ADD CONSTRAINT pk_wilayah PRIMARY KEY (wil_id);


--
-- TOC entry 2072 (class 1259 OID 16437)
-- Name: detil_dipa_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX detil_dipa_pk ON public.detil_dipa USING btree (dipa_id);


--
-- TOC entry 2079 (class 1259 OID 16450)
-- Name: global_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX global_pk ON public.global USING btree (global_id);


--
-- TOC entry 2082 (class 1259 OID 16462)
-- Name: kode_akun_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX kode_akun_pk ON public.kode_akun USING btree (akun_id);


--
-- TOC entry 2089 (class 1259 OID 16475)
-- Name: kode_bagian_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX kode_bagian_pk ON public.kode_bagian USING btree (bag_id);


--
-- TOC entry 2095 (class 1259 OID 16487)
-- Name: kode_intern_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX kode_intern_pk ON public.kode_intern USING btree (intern_id);


--
-- TOC entry 2099 (class 1259 OID 16497)
-- Name: kode_pos_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX kode_pos_pk ON public.kode_pos USING btree (pos_id);


--
-- TOC entry 2109 (class 1259 OID 16513)
-- Name: master_dipa_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX master_dipa_pk ON public.master_dipa USING btree (mdipa_id);


--
-- TOC entry 2116 (class 1259 OID 16527)
-- Name: realisasi_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX realisasi_pk ON public.realisasi USING btree (r_id);


--
-- TOC entry 2102 (class 1259 OID 16498)
-- Name: relationship_10_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_10_fk ON public.kode_pos USING btree (komp_parent_id);


--
-- TOC entry 2075 (class 1259 OID 16439)
-- Name: relationship_11_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_11_fk ON public.detil_dipa USING btree (intern_id);


--
-- TOC entry 2117 (class 1259 OID 16528)
-- Name: relationship_12_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_12_fk ON public.realisasi USING btree (dipa_id);


--
-- TOC entry 2076 (class 1259 OID 16440)
-- Name: relationship_13_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_13_fk ON public.detil_dipa USING btree (akun_id);


--
-- TOC entry 2077 (class 1259 OID 16441)
-- Name: relationship_14_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_14_fk ON public.detil_dipa USING btree (pos_id);


--
-- TOC entry 2092 (class 1259 OID 16477)
-- Name: relationship_15_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_15_fk ON public.kode_bagian USING btree (kotama_parent_id);


--
-- TOC entry 2103 (class 1259 OID 16499)
-- Name: relationship_17_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_17_fk ON public.kode_pos USING btree (subprog_parent_id);


--
-- TOC entry 2104 (class 1259 OID 16500)
-- Name: relationship_18_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_18_fk ON public.kode_pos USING btree (giat_parent_id);


--
-- TOC entry 2105 (class 1259 OID 16501)
-- Name: relationship_19_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_19_fk ON public.kode_pos USING btree (output_parent_id);


--
-- TOC entry 2106 (class 1259 OID 16502)
-- Name: relationship_20_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_20_fk ON public.kode_pos USING btree (prog_parent_id);


--
-- TOC entry 2107 (class 1259 OID 16503)
-- Name: relationship_21_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_21_fk ON public.kode_pos USING btree (subfung_parent_id);


--
-- TOC entry 2085 (class 1259 OID 16463)
-- Name: relationship_22_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_22_fk ON public.kode_akun USING btree (parent_level3);


--
-- TOC entry 2086 (class 1259 OID 16464)
-- Name: relationship_23_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_23_fk ON public.kode_akun USING btree (parent_level2);


--
-- TOC entry 2093 (class 1259 OID 16478)
-- Name: relationship_23_fk2; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_23_fk2 ON public.kode_bagian USING btree (wil_id);


--
-- TOC entry 2087 (class 1259 OID 16465)
-- Name: relationship_24_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_24_fk ON public.kode_akun USING btree (parent_level5);


--
-- TOC entry 2088 (class 1259 OID 16466)
-- Name: relationship_25_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_25_fk ON public.kode_akun USING btree (parent_level4);


--
-- TOC entry 2108 (class 1259 OID 16504)
-- Name: relationship_26_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_26_fk ON public.kode_pos USING btree (sub_komp_parent_id);


--
-- TOC entry 2112 (class 1259 OID 16515)
-- Name: relationship_27_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_27_fk ON public.master_dipa USING btree (ta_id);


--
-- TOC entry 2098 (class 1259 OID 16488)
-- Name: relationship_4_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_4_fk ON public.kode_intern USING btree (parent_jns_dana_id);


--
-- TOC entry 2123 (class 1259 OID 16547)
-- Name: relationship_5_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_5_fk ON public.wilayah USING btree (kab_parent_id);


--
-- TOC entry 2094 (class 1259 OID 16476)
-- Name: relationship_6_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_6_fk ON public.kode_bagian USING btree (satker_parent_id);


--
-- TOC entry 2113 (class 1259 OID 16514)
-- Name: relationship_8_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_8_fk ON public.master_dipa USING btree (bag_id);


--
-- TOC entry 2078 (class 1259 OID 16438)
-- Name: relationship_9_fk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE INDEX relationship_9_fk ON public.detil_dipa USING btree (mdipa_id);


--
-- TOC entry 2120 (class 1259 OID 16537)
-- Name: tahun_anggaran_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX tahun_anggaran_pk ON public.tahun_anggaran USING btree (ta_id);


--
-- TOC entry 2124 (class 1259 OID 16546)
-- Name: wilayah_pk; Type: INDEX; Schema: public; Owner: usimona
--

CREATE UNIQUE INDEX wilayah_pk ON public.wilayah USING btree (wil_id);


--
-- TOC entry 2126 (class 2606 OID 16553)
-- Name: fk_detil_di_relations_kode_aku; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY detil_dipa
    ADD CONSTRAINT fk_detil_di_relations_kode_aku FOREIGN KEY (akun_id) REFERENCES kode_akun(akun_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2125 (class 2606 OID 16548)
-- Name: fk_detil_di_relations_kode_int; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY detil_dipa
    ADD CONSTRAINT fk_detil_di_relations_kode_int FOREIGN KEY (intern_id) REFERENCES kode_intern(intern_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2127 (class 2606 OID 16558)
-- Name: fk_detil_di_relations_kode_pos; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY detil_dipa
    ADD CONSTRAINT fk_detil_di_relations_kode_pos FOREIGN KEY (pos_id) REFERENCES kode_pos(pos_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2128 (class 2606 OID 16563)
-- Name: fk_detil_di_relations_master_d; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY detil_dipa
    ADD CONSTRAINT fk_detil_di_relations_master_d FOREIGN KEY (mdipa_id) REFERENCES master_dipa(mdipa_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2129 (class 2606 OID 16568)
-- Name: fk_kode_aku_r22_kode_aku; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_akun
    ADD CONSTRAINT fk_kode_aku_r22_kode_aku FOREIGN KEY (parent_level3) REFERENCES kode_akun(akun_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2130 (class 2606 OID 16573)
-- Name: fk_kode_aku_r23_kode_aku; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_akun
    ADD CONSTRAINT fk_kode_aku_r23_kode_aku FOREIGN KEY (parent_level2) REFERENCES kode_akun(akun_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2131 (class 2606 OID 16578)
-- Name: fk_kode_aku_r24_kode_aku; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_akun
    ADD CONSTRAINT fk_kode_aku_r24_kode_aku FOREIGN KEY (parent_level5) REFERENCES kode_akun(akun_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2132 (class 2606 OID 16583)
-- Name: fk_kode_aku_r25_kode_aku; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_akun
    ADD CONSTRAINT fk_kode_aku_r25_kode_aku FOREIGN KEY (parent_level4) REFERENCES kode_akun(akun_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2133 (class 2606 OID 16588)
-- Name: fk_kode_bag_r15_kode_bag; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_bagian
    ADD CONSTRAINT fk_kode_bag_r15_kode_bag FOREIGN KEY (kotama_parent_id) REFERENCES kode_bagian(bag_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2134 (class 2606 OID 16593)
-- Name: fk_kode_bag_r6_kode_bag; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_bagian
    ADD CONSTRAINT fk_kode_bag_r6_kode_bag FOREIGN KEY (satker_parent_id) REFERENCES kode_bagian(bag_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2135 (class 2606 OID 16598)
-- Name: fk_kode_bag_relations_wilayah; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_bagian
    ADD CONSTRAINT fk_kode_bag_relations_wilayah FOREIGN KEY (wil_id) REFERENCES wilayah(wil_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2136 (class 2606 OID 16603)
-- Name: fk_kode_int_r4_kode_int; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_intern
    ADD CONSTRAINT fk_kode_int_r4_kode_int FOREIGN KEY (parent_jns_dana_id) REFERENCES kode_intern(intern_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2137 (class 2606 OID 16608)
-- Name: fk_kode_pos_r10_kode_pos; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos
    ADD CONSTRAINT fk_kode_pos_r10_kode_pos FOREIGN KEY (komp_parent_id) REFERENCES kode_pos(pos_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2138 (class 2606 OID 16613)
-- Name: fk_kode_pos_r17_kode_pos; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos
    ADD CONSTRAINT fk_kode_pos_r17_kode_pos FOREIGN KEY (subprog_parent_id) REFERENCES kode_pos(pos_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2139 (class 2606 OID 16618)
-- Name: fk_kode_pos_r18_kode_pos; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos
    ADD CONSTRAINT fk_kode_pos_r18_kode_pos FOREIGN KEY (giat_parent_id) REFERENCES kode_pos(pos_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2140 (class 2606 OID 16623)
-- Name: fk_kode_pos_r19_kode_pos; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos
    ADD CONSTRAINT fk_kode_pos_r19_kode_pos FOREIGN KEY (output_parent_id) REFERENCES kode_pos(pos_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2141 (class 2606 OID 16628)
-- Name: fk_kode_pos_r20_kode_pos; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos
    ADD CONSTRAINT fk_kode_pos_r20_kode_pos FOREIGN KEY (prog_parent_id) REFERENCES kode_pos(pos_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2142 (class 2606 OID 16633)
-- Name: fk_kode_pos_r21_kode_pos; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos
    ADD CONSTRAINT fk_kode_pos_r21_kode_pos FOREIGN KEY (subfung_parent_id) REFERENCES kode_pos(pos_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2143 (class 2606 OID 16638)
-- Name: fk_kode_pos_r26_kode_pos; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY kode_pos
    ADD CONSTRAINT fk_kode_pos_r26_kode_pos FOREIGN KEY (sub_komp_parent_id) REFERENCES kode_pos(pos_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2145 (class 2606 OID 16648)
-- Name: fk_master_d_relations_kode_bag; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY master_dipa
    ADD CONSTRAINT fk_master_d_relations_kode_bag FOREIGN KEY (bag_id) REFERENCES kode_bagian(bag_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2144 (class 2606 OID 16643)
-- Name: fk_master_d_relations_tahun_an; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY master_dipa
    ADD CONSTRAINT fk_master_d_relations_tahun_an FOREIGN KEY (ta_id) REFERENCES tahun_anggaran(ta_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2146 (class 2606 OID 16653)
-- Name: fk_realisas_relations_detil_di; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY realisasi
    ADD CONSTRAINT fk_realisas_relations_detil_di FOREIGN KEY (dipa_id) REFERENCES detil_dipa(dipa_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2147 (class 2606 OID 16658)
-- Name: fk_wilayah_r5_wilayah; Type: FK CONSTRAINT; Schema: public; Owner: usimona
--

ALTER TABLE ONLY wilayah
    ADD CONSTRAINT fk_wilayah_r5_wilayah FOREIGN KEY (kab_parent_id) REFERENCES wilayah(wil_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2293 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-11-27 15:01:46

--
-- PostgreSQL database dump complete
--

