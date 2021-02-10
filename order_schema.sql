--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

-- Started on 2021-02-10 02:11:34

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

--
-- TOC entry 2873 (class 1262 OID 16393)
-- Name: order_processing; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE order_processing WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE order_processing OWNER TO postgres;

\connect order_processing

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
-- TOC entry 202 (class 1259 OID 16394)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id uuid NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    email_id text NOT NULL,
    addressline1 character varying(100),
    addressline2 character varying(50),
    city character varying(30),
    state character varying(50),
    zip integer
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16416)
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id uuid NOT NULL,
    name text NOT NULL,
    price numeric(20,2) NOT NULL,
    sin_no integer NOT NULL,
    description text
);


ALTER TABLE public.items OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16486)
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    id uuid NOT NULL,
    order_id uuid NOT NULL,
    item_id uuid NOT NULL,
    quantity integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16424)
-- Name: order_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_status (
    id uuid NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.order_status OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16448)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id uuid NOT NULL,
    customer_id uuid NOT NULL,
    status_id uuid NOT NULL,
    amount_pretax numeric(20,2) NOT NULL,
    tax_amount numeric(20,2),
    shipping_amount numeric(20,2),
    total_amount numeric(20,2),
    shipping_id uuid NOT NULL,
    created_date timestamp without time zone,
    modified_date timestamp without time zone
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16468)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id uuid NOT NULL,
    payment_type_id uuid NOT NULL,
    order_id uuid NOT NULL,
    addressline1 character varying(100) NOT NULL,
    addressline2 character varying(50),
    city character varying(30) NOT NULL,
    state character varying(50) NOT NULL,
    zip integer NOT NULL,
    amount numeric(20,2) NOT NULL,
    date timestamp without time zone NOT NULL,
    confirmation_number character varying(50) NOT NULL,
    card_no character varying(16) NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16440)
-- Name: payments_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments_type (
    id uuid NOT NULL,
    payment_type text NOT NULL
);


ALTER TABLE public.payments_type OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16432)
-- Name: shipping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shipping (
    id uuid NOT NULL,
    shipping_type text NOT NULL
);


ALTER TABLE public.shipping OWNER TO postgres;

--
-- TOC entry 2720 (class 2606 OID 16401)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 2722 (class 2606 OID 16423)
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- TOC entry 2734 (class 2606 OID 16490)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- TOC entry 2724 (class 2606 OID 16431)
-- Name: order_status order_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_status
    ADD CONSTRAINT order_status_pkey PRIMARY KEY (id);


--
-- TOC entry 2730 (class 2606 OID 16452)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 2732 (class 2606 OID 16475)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 2728 (class 2606 OID 16447)
-- Name: payments_type payments_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments_type
    ADD CONSTRAINT payments_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2726 (class 2606 OID 16439)
-- Name: shipping shipping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipping
    ADD CONSTRAINT shipping_pkey PRIMARY KEY (id);


--
-- TOC entry 2735 (class 2606 OID 16453)
-- Name: orders fk_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- TOC entry 2740 (class 2606 OID 16491)
-- Name: order_items fk_items; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_items FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- TOC entry 2739 (class 2606 OID 16481)
-- Name: payments fk_orders; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT fk_orders FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 2741 (class 2606 OID 16496)
-- Name: order_items fk_orders; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_orders FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 2738 (class 2606 OID 16476)
-- Name: payments fk_payments_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT fk_payments_type FOREIGN KEY (payment_type_id) REFERENCES public.payments_type(id);


--
-- TOC entry 2737 (class 2606 OID 16463)
-- Name: orders fk_shipping; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_shipping FOREIGN KEY (shipping_id) REFERENCES public.shipping(id);


--
-- TOC entry 2736 (class 2606 OID 16458)
-- Name: orders fk_status; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_status FOREIGN KEY (status_id) REFERENCES public.order_status(id);


-- Completed on 2021-02-10 02:11:34

--
-- PostgreSQL database dump complete
--

