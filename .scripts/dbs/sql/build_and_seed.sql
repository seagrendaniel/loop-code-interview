DROP DATABASE loop_interview_db;

CREATE DATABASE loop_interview_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';

\connect loop_interview_db

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

CREATE TABLE public."user" (
  id integer NOT NULL,
  first_name text,
  last_name text,
  email character varying(100)
);

INSERT INTO public."user" (id, first_name, last_name, email) VALUES (1, 'Thomas','Sullivan','thomas.sullivan@gmail.com');
INSERT INTO public."user" (id, first_name, last_name, email) VALUES (2, 'Sun','Sky','sun.sky@gmail.com');
INSERT INTO public."user" (id, first_name, last_name, email) VALUES (3, 'Abc','Def','abc.def@gmail.com');
INSERT INTO public."user" (id, first_name, last_name, email) VALUES (4, 'Lao','Mao','lao.mao@gmail.com');
INSERT INTO public."user" (id, first_name, last_name, email) VALUES (5, 'George','Hanity','mrhanitygeorge@gmail.com');

CREATE TABLE public."vehicle" (
  id integer NOT NULL,
  user_id integer NOT NULL,
  vin character varying(21) NOT NULL
);

INSERT INTO public."vehicle" (id, user_id, vin ) VALUES ( 1, 1, '10010-00101-00110' );
INSERT INTO public."vehicle" (id, user_id, vin ) VALUES ( 2, 5, '10010-00101-00120' );
INSERT INTO public."vehicle" (id, user_id, vin ) VALUES ( 3, 2, '10010-00101-00130' );
INSERT INTO public."vehicle" (id, user_id, vin ) VALUES ( 4, 3, '10010-00101-00140' );
INSERT INTO public."vehicle" (id, user_id, vin ) VALUES ( 5, 4, '10010-00101-00150' );