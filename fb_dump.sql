PGDMP     0                     {            fb_integration     13.7 (Ubuntu 13.7-1.pgdg20.04+1)     14.4 (Ubuntu 14.4-1.pgdg20.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    238798    fb_integration    DATABASE     c   CREATE DATABASE fb_integration WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE fb_integration;
                postgres    false            �            1259    238861    facebook_accounts    TABLE     `  CREATE TABLE public.facebook_accounts (
    id integer NOT NULL,
    account_id integer NOT NULL,
    account_name character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP(6) NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP(6) NOT NULL
);
 %   DROP TABLE public.facebook_accounts;
       public         heap    admin    false            �            1259    238859    facebook_accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facebook_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.facebook_accounts_id_seq;
       public          admin    false    204            �           0    0    facebook_accounts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.facebook_accounts_id_seq OWNED BY public.facebook_accounts.id;
          public          admin    false    203            �            1259    238871    fb_engagements    TABLE     `  CREATE TABLE public.fb_engagements (
    id integer NOT NULL,
    account_id integer NOT NULL,
    likes integer NOT NULL,
    shares integer NOT NULL,
    comments text NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP(6) NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP(6) NOT NULL
);
 "   DROP TABLE public.fb_engagements;
       public         heap    admin    false            �            1259    238869    fb_engagements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fb_engagements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.fb_engagements_id_seq;
       public          admin    false    206            �           0    0    fb_engagements_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.fb_engagements_id_seq OWNED BY public.fb_engagements.id;
          public          admin    false    205            �            1259    238843 
   migrations    TABLE     n   CREATE TABLE public.migrations (
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    admin    false            �            1259    238848    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    access_token character varying(255) NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP(6) NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP(6) NOT NULL
);
    DROP TABLE public.users;
       public         heap    admin    false            �            1259    238846    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          admin    false    202            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          admin    false    201            =           2604    238864    facebook_accounts id    DEFAULT     |   ALTER TABLE ONLY public.facebook_accounts ALTER COLUMN id SET DEFAULT nextval('public.facebook_accounts_id_seq'::regclass);
 C   ALTER TABLE public.facebook_accounts ALTER COLUMN id DROP DEFAULT;
       public          admin    false    203    204    204            @           2604    238874    fb_engagements id    DEFAULT     v   ALTER TABLE ONLY public.fb_engagements ALTER COLUMN id SET DEFAULT nextval('public.fb_engagements_id_seq'::regclass);
 @   ALTER TABLE public.fb_engagements ALTER COLUMN id DROP DEFAULT;
       public          admin    false    206    205    206            :           2604    238851    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          admin    false    201    202    202            �          0    238861    facebook_accounts 
   TABLE DATA           l   COPY public.facebook_accounts (id, account_id, account_name, is_active, created_at, updated_at) FROM stdin;
    public          admin    false    204   !       �          0    238871    fb_engagements 
   TABLE DATA           i   COPY public.fb_engagements (id, account_id, likes, shares, comments, created_at, updated_at) FROM stdin;
    public          admin    false    206   v!       �          0    238843 
   migrations 
   TABLE DATA           6   COPY public.migrations (migration, batch) FROM stdin;
    public          admin    false    200   �!       �          0    238848    users 
   TABLE DATA           d   COPY public.users (id, username, email, password, access_token, created_at, updated_at) FROM stdin;
    public          admin    false    202   Y"       �           0    0    facebook_accounts_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.facebook_accounts_id_seq', 4, true);
          public          admin    false    203            �           0    0    fb_engagements_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fb_engagements_id_seq', 7, true);
          public          admin    false    205            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          admin    false    201            F           2606    238868 (   facebook_accounts facebook_accounts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.facebook_accounts
    ADD CONSTRAINT facebook_accounts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.facebook_accounts DROP CONSTRAINT facebook_accounts_pkey;
       public            admin    false    204            H           2606    238881 "   fb_engagements fb_engagements_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.fb_engagements
    ADD CONSTRAINT fb_engagements_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.fb_engagements DROP CONSTRAINT fb_engagements_pkey;
       public            admin    false    206            D           2606    238858    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            admin    false    202            I           2606    238882 0   fb_engagements fb_engagements_account_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.fb_engagements
    ADD CONSTRAINT fb_engagements_account_id_foreign FOREIGN KEY (account_id) REFERENCES public.facebook_accounts(id);
 Z   ALTER TABLE ONLY public.fb_engagements DROP CONSTRAINT fb_engagements_account_id_foreign;
       public          admin    false    204    2886    206            �   b   x�}�1�0���|�U����YaC��A0۲����~�!4z0c�ΚA�����a^7Y��W�X�쾉�+���Rs;+��&:EU=�9'Y      �   `   x�}˱�0D�:�"$�]lPܲ%b���RBvu_��]G��EQf0ЃV�
�2z���Uc��u��|Yj8�����z�^��5�$٫�܏!�      �   c   x�U�1�0�?��p�� ��֑K�������2ePF!&�-|��=�]��'n94!��^ޢ����֏u���R� �R��s,�������i},�      �   �  x���Ks�P���+�p��}r��(*B�)X�A| 
��	���d1S��Y̦7�U]�;ͅͶ�ї�ؗI~i]
=��!�+�Y }3��ƫ��;����2�{����Q�eg9����4�������4�sC:Y����RU���)
UC�Jq�F�xЋ:��G��G��cb1��CjEH�8�IrY����$��a ��QR���mu��oy椩:�C���	|BH�D!pB�>,҇���
�
e@Bθ8�m��_�N8M��i�F��l=/@3I�A}l��ջo��(�n`�h�u��l�;��~@-����ș$/�:z�/��G�C�5�۔Ƿj:�&Uu߻3��XD�)B�E�T0U0�J����O�����=k�g��u37�rb�#o��6ie]Sr�w�B}��ll��egI��R�I�cN�=B�a�?�(�ﶩ»     