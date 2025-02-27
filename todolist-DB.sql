PGDMP  -                    |         
   to-do-list    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388 
   to-do-list    DATABASE     �   CREATE DATABASE "to-do-list" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "to-do-list";
                     postgres    false            �            1259    16390    task    TABLE     �   CREATE TABLE public.task (
    id integer NOT NULL,
    description character varying(50) NOT NULL,
    completed boolean DEFAULT false
);
    DROP TABLE public.task;
       public         heap r       postgres    false            �            1259    16389    task_id_seq    SEQUENCE     �   CREATE SEQUENCE public.task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.task_id_seq;
       public               postgres    false    218            �           0    0    task_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.task_id_seq OWNED BY public.task.id;
          public               postgres    false    217            W           2604    16393    task id    DEFAULT     b   ALTER TABLE ONLY public.task ALTER COLUMN id SET DEFAULT nextval('public.task_id_seq'::regclass);
 6   ALTER TABLE public.task ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    16390    task 
   TABLE DATA           :   COPY public.task (id, description, completed) FROM stdin;
    public               postgres    false    218   }
       �           0    0    task_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.task_id_seq', 1, true);
          public               postgres    false    217            Z           2606    16396    task task_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
       public                 postgres    false    218            �       x�3�I,JMKTHIUHN,N�L����� XvP     