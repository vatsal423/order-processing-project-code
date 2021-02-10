--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

-- Started on 2021-02-10 02:10:32

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
-- TOC entry 2868 (class 0 OID 16394)
-- Dependencies: 202
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers VALUES ('2137a2d4-68e4-11eb-9439-0242ac130002', 'Bob', 'Ross', 'bobross@email.com', '1234 ABC street', 'APT 0000', 'Dallas', 'Texas', 70000);
INSERT INTO public.customers VALUES ('88a13f5c-68e4-11eb-9439-0242ac130002', 'Adam', 'Kieth', 'adamkieth@email.com', '4567 ABC street', 'APT 0001', 'Naperville', 'Illinois', 70001);


--
-- TOC entry 2869 (class 0 OID 16416)
-- Dependencies: 203
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.items VALUES ('ef9b9ef0-68e4-11eb-9439-0242ac130002', 'Iphone 11', 899.00, 1001, 'Apple - Iphone 11');
INSERT INTO public.items VALUES ('283d0096-68e5-11eb-9439-0242ac130002', 'Samsung Note 20', 1099.00, 1101, 'Samsung Note 20');


--
-- TOC entry 2870 (class 0 OID 16424)
-- Dependencies: 204
-- Data for Name: order_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_status VALUES ('6efeb678-68e5-11eb-9439-0242ac130002', 'ORDERED');
INSERT INTO public.order_status VALUES ('9a4234a4-68e5-11eb-9439-0242ac130002', 'SHIPPED');
INSERT INTO public.order_status VALUES ('a479efa2-68e5-11eb-9439-0242ac130002', 'OUT FOR DEILVERY');
INSERT INTO public.order_status VALUES ('b0402e14-68e5-11eb-9439-0242ac130002', 'DEILVERED');
INSERT INTO public.order_status VALUES ('bb9780fa-68e5-11eb-9439-0242ac130002', 'ORDER CANCELLED');


--
-- TOC entry 2871 (class 0 OID 16432)
-- Dependencies: 205
-- Data for Name: shipping; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.shipping VALUES ('271575e4-68e6-11eb-9439-0242ac130002', 'In-store pickup');
INSERT INTO public.shipping VALUES ('3f040094-68e6-11eb-9439-0242ac130002', 'Curbside Delivery');
INSERT INTO public.shipping VALUES ('64048b8e-68e6-11eb-9439-0242ac130002', 'Home Delivery');


--
-- TOC entry 2873 (class 0 OID 16448)
-- Dependencies: 207
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders VALUES ('ef740c52-efe8-4a6f-a9d6-418c5ac628ab', '88a13f5c-68e4-11eb-9439-0242ac130002', '6efeb678-68e5-11eb-9439-0242ac130002', 1099.00, 87.92, 10.00, 1196.92, '271575e4-68e6-11eb-9439-0242ac130002', '2021-02-08 20:10:19.871', '2021-02-08 20:10:19.871');
INSERT INTO public.orders VALUES ('041b9942-4b99-4124-82e0-0021f52e0f36', '88a13f5c-68e4-11eb-9439-0242ac130002', '6efeb678-68e5-11eb-9439-0242ac130002', 1099.00, 87.92, 10.00, 1196.92, '271575e4-68e6-11eb-9439-0242ac130002', '2021-02-08 21:52:33.829', '2021-02-08 21:52:33.829');
INSERT INTO public.orders VALUES ('47e1b5b0-ee35-4776-a204-03658fa27128', '88a13f5c-68e4-11eb-9439-0242ac130002', '6efeb678-68e5-11eb-9439-0242ac130002', 1099.00, 87.92, 10.00, 1196.92, '271575e4-68e6-11eb-9439-0242ac130002', '2021-02-08 22:03:02.33', '2021-02-08 22:03:02.33');
INSERT INTO public.orders VALUES ('d7779288-0bb5-4289-95b8-e91b7c5ba389', '88a13f5c-68e4-11eb-9439-0242ac130002', '6efeb678-68e5-11eb-9439-0242ac130002', 1099.00, 87.92, 10.00, 1196.92, '271575e4-68e6-11eb-9439-0242ac130002', '2021-02-08 22:06:08.926', '2021-02-08 22:06:08.926');
INSERT INTO public.orders VALUES ('dd94d22b-8a6d-4fac-8fc7-fc7d106fe1e4', '2137a2d4-68e4-11eb-9439-0242ac130002', '6efeb678-68e5-11eb-9439-0242ac130002', 899.00, 71.92, 10.00, 980.92, '271575e4-68e6-11eb-9439-0242ac130002', '2021-02-10 01:48:52.19', '2021-02-10 01:48:52.19');
INSERT INTO public.orders VALUES ('ca96890a-dc52-4b1a-a0dc-e8a5666c5f30', '2137a2d4-68e4-11eb-9439-0242ac130002', '6efeb678-68e5-11eb-9439-0242ac130002', 899.00, 71.92, 10.00, 980.92, '271575e4-68e6-11eb-9439-0242ac130002', '2021-02-10 01:51:39.556', '2021-02-10 01:51:39.556');
INSERT INTO public.orders VALUES ('f9e6ae9d-a67e-422a-9bc1-e1e3108dc60f', '2137a2d4-68e4-11eb-9439-0242ac130002', 'bb9780fa-68e5-11eb-9439-0242ac130002', 899.00, 71.92, 10.00, 980.92, '271575e4-68e6-11eb-9439-0242ac130002', '2021-02-07 14:48:45.94', '2021-02-10 01:52:21.485');


--
-- TOC entry 2875 (class 0 OID 16486)
-- Dependencies: 209
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_items VALUES ('cbe4ec42-f92e-4855-8011-0675a4225728', 'f9e6ae9d-a67e-422a-9bc1-e1e3108dc60f', 'ef9b9ef0-68e4-11eb-9439-0242ac130002', 1);
INSERT INTO public.order_items VALUES ('928ce06e-ea07-49f9-817b-8e5783cd7984', 'ef740c52-efe8-4a6f-a9d6-418c5ac628ab', '283d0096-68e5-11eb-9439-0242ac130002', 1);
INSERT INTO public.order_items VALUES ('cf4f1de7-db93-4f26-8347-aa15a0ba8e21', '041b9942-4b99-4124-82e0-0021f52e0f36', '283d0096-68e5-11eb-9439-0242ac130002', 1);
INSERT INTO public.order_items VALUES ('a67f1929-daeb-459d-a50d-cd466e996aae', '47e1b5b0-ee35-4776-a204-03658fa27128', '283d0096-68e5-11eb-9439-0242ac130002', 1);
INSERT INTO public.order_items VALUES ('086c3b05-965a-482b-a9e2-e1908f0188b4', 'd7779288-0bb5-4289-95b8-e91b7c5ba389', '283d0096-68e5-11eb-9439-0242ac130002', 1);
INSERT INTO public.order_items VALUES ('2afb794b-a261-438a-8d27-7965b3a7703e', 'dd94d22b-8a6d-4fac-8fc7-fc7d106fe1e4', 'ef9b9ef0-68e4-11eb-9439-0242ac130002', 1);
INSERT INTO public.order_items VALUES ('90591902-aaa2-4a3a-8574-aa9bf399a241', 'ca96890a-dc52-4b1a-a0dc-e8a5666c5f30', 'ef9b9ef0-68e4-11eb-9439-0242ac130002', 1);


--
-- TOC entry 2872 (class 0 OID 16440)
-- Dependencies: 206
-- Data for Name: payments_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payments_type VALUES ('e8d19e02-68e5-11eb-9439-0242ac130002', 'CREDIT CARD');
INSERT INTO public.payments_type VALUES ('f1c948f2-68e5-11eb-9439-0242ac130002', 'DEBIT CARD');


--
-- TOC entry 2874 (class 0 OID 16468)
-- Dependencies: 208
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payments VALUES ('45e09368-32a6-4e06-9c1c-83d9dcfc04c4', 'e8d19e02-68e5-11eb-9439-0242ac130002', 'f9e6ae9d-a67e-422a-9bc1-e1e3108dc60f', '1234 ABC Street', 'Apt 1234', 'Dallas', 'Texas', 70000, 899.00, '2021-02-07 14:48:46.036', 'edfe9b8d-e3eb-4844-bc17-c0bde7f5aef0', '1234561234561234');
INSERT INTO public.payments VALUES ('74e37746-ff6b-45cd-aca7-c5f2f21943f8', 'e8d19e02-68e5-11eb-9439-0242ac130002', 'ef740c52-efe8-4a6f-a9d6-418c5ac628ab', '5678 ABC Street', 'Apt 5671', 'Naperville', 'Illinois', 70001, 899.00, '2021-02-08 20:10:20.26', 'c577ca95-719a-487f-b287-80956db35f2a', '1234561234561289');
INSERT INTO public.payments VALUES ('be83e441-e887-4ab5-b917-1be40fc1d3c5', 'e8d19e02-68e5-11eb-9439-0242ac130002', '041b9942-4b99-4124-82e0-0021f52e0f36', '5678 ABC Street', 'Apt 5671', 'Naperville', 'Illinois', 70001, 899.00, '2021-02-08 21:52:34.145', '15f97fb5-fc5a-4506-b13f-60d22180f1c9', '1234561234561289');
INSERT INTO public.payments VALUES ('84881bdc-285f-4b1e-ab27-ce9d3eafaf2b', 'e8d19e02-68e5-11eb-9439-0242ac130002', '47e1b5b0-ee35-4776-a204-03658fa27128', '5678 ABC Street', 'Apt 5671', 'Naperville', 'Illinois', 70001, 899.00, '2021-02-08 22:03:02.399', '6ad51f4d-7c29-433e-ac03-1e45bd311888', '1234561234561289');
INSERT INTO public.payments VALUES ('47c48c3f-c826-4a4a-8132-9df77eaa9a24', 'e8d19e02-68e5-11eb-9439-0242ac130002', 'd7779288-0bb5-4289-95b8-e91b7c5ba389', '5678 ABC Street', 'Apt 5671', 'Naperville', 'Illinois', 70001, 899.00, '2021-02-08 22:06:09.243', 'b2e31f21-afa2-4fb3-9aa6-4a1841823139', '1234561234561289');
INSERT INTO public.payments VALUES ('fe2a20d3-1a3e-4c26-b3e6-f8bb35b831a1', 'e8d19e02-68e5-11eb-9439-0242ac130002', 'ca96890a-dc52-4b1a-a0dc-e8a5666c5f30', '1234 ABC Street', 'Apt 1234', 'Dallas', 'Texas', 70000, 899.00, '2021-02-10 01:51:39.61', 'b0a09b09-c382-40b5-8fed-b52e85ffb14d', '1234561234561234');


-- Completed on 2021-02-10 02:10:32

--
-- PostgreSQL database dump complete
--

