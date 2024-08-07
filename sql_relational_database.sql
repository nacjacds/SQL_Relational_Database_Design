PGDMP  2                    |           SQL-TheBridge    16.3 (Debian 16.3-1.pgdg120+1)    16.0 =    b           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            c           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            d           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            e           1262    16412    SQL-TheBridge    DATABASE     z   CREATE DATABASE "SQL-TheBridge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "SQL-TheBridge";
                postgres    false            �            1259    16414    alumnos    TABLE     i   CREATE TABLE public.alumnos (
    alumnoid integer NOT NULL,
    nombre text NOT NULL,
    email text
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false            �            1259    16413    Alumnos_AlumnoID_seq    SEQUENCE     �   CREATE SEQUENCE public."Alumnos_AlumnoID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Alumnos_AlumnoID_seq";
       public          postgres    false    218            f           0    0    Alumnos_AlumnoID_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Alumnos_AlumnoID_seq" OWNED BY public.alumnos.alumnoid;
          public          postgres    false    217            �            1259    16423    docentes    TABLE     r   CREATE TABLE public.docentes (
    docenteid integer NOT NULL,
    nombre text NOT NULL,
    rol text NOT NULL
);
    DROP TABLE public.docentes;
       public         heap    postgres    false            �            1259    16422    Docentes_DocenteID_seq    SEQUENCE     �   CREATE SEQUENCE public."Docentes_DocenteID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Docentes_DocenteID_seq";
       public          postgres    false    220            g           0    0    Docentes_DocenteID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Docentes_DocenteID_seq" OWNED BY public.docentes.docenteid;
          public          postgres    false    219            �            1259    16485    notas    TABLE     F  CREATE TABLE public.notas (
    programaal_id integer NOT NULL,
    proyecto_hlf text,
    proyecto_eda text,
    proyecto_bbdd text,
    proyecto_deployment text,
    proyecto_webdev text,
    proyecto_frontend text,
    proyecto_backend text,
    proyecto_react text,
    proyecto_fullstack text,
    nombre_alumnos text
);
    DROP TABLE public.notas;
       public         heap    postgres    false            �            1259    16432    programa_alumnos    TABLE     �   CREATE TABLE public.programa_alumnos (
    programaal_id integer NOT NULL,
    alumnoid integer NOT NULL,
    programaid integer NOT NULL,
    modalidad text
);
 $   DROP TABLE public.programa_alumnos;
       public         heap    postgres    false            �            1259    16431 "   programa_alumnos_programaal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programa_alumnos_programaal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.programa_alumnos_programaal_id_seq;
       public          postgres    false    222            h           0    0 "   programa_alumnos_programaal_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.programa_alumnos_programaal_id_seq OWNED BY public.programa_alumnos.programaal_id;
          public          postgres    false    221            �            1259    16441    programa_docentes    TABLE     �   CREATE TABLE public.programa_docentes (
    programadoc_id integer NOT NULL,
    docenteid integer NOT NULL,
    programaid integer NOT NULL,
    modalidad text
);
 %   DROP TABLE public.programa_docentes;
       public         heap    postgres    false            �            1259    16440 $   programa_docentes_programadoc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programa_docentes_programadoc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.programa_docentes_programadoc_id_seq;
       public          postgres    false    224            i           0    0 $   programa_docentes_programadoc_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.programa_docentes_programadoc_id_seq OWNED BY public.programa_docentes.programadoc_id;
          public          postgres    false    223            �            1259    16450 	   programas    TABLE     �   CREATE TABLE public.programas (
    programaid integer NOT NULL,
    promocionid integer NOT NULL,
    sede text,
    vertical text NOT NULL
);
    DROP TABLE public.programas;
       public         heap    postgres    false            �            1259    16449    programas_programaid_seq    SEQUENCE     �   CREATE SEQUENCE public.programas_programaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.programas_programaid_seq;
       public          postgres    false    226            j           0    0    programas_programaid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.programas_programaid_seq OWNED BY public.programas.programaid;
          public          postgres    false    225            �            1259    16459    promociones    TABLE     s   CREATE TABLE public.promociones (
    promocionid integer NOT NULL,
    mes text NOT NULL,
    fechainicio text
);
    DROP TABLE public.promociones;
       public         heap    postgres    false            �            1259    16458    promociones_promocionid_seq    SEQUENCE     �   CREATE SEQUENCE public.promociones_promocionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.promociones_promocionid_seq;
       public          postgres    false    228            k           0    0    promociones_promocionid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.promociones_promocionid_seq OWNED BY public.promociones.promocionid;
          public          postgres    false    227            �            1259    16468    vertical    TABLE     [   CREATE TABLE public.vertical (
    verticalid integer NOT NULL,
    nombrevertical text
);
    DROP TABLE public.vertical;
       public         heap    postgres    false            �            1259    16467    vertical_verticalid_seq    SEQUENCE     �   CREATE SEQUENCE public.vertical_verticalid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.vertical_verticalid_seq;
       public          postgres    false    230            l           0    0    vertical_verticalid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.vertical_verticalid_seq OWNED BY public.vertical.verticalid;
          public          postgres    false    229            �           2604    16417    alumnos alumnoid    DEFAULT     v   ALTER TABLE ONLY public.alumnos ALTER COLUMN alumnoid SET DEFAULT nextval('public."Alumnos_AlumnoID_seq"'::regclass);
 ?   ALTER TABLE public.alumnos ALTER COLUMN alumnoid DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16426    docentes docenteid    DEFAULT     z   ALTER TABLE ONLY public.docentes ALTER COLUMN docenteid SET DEFAULT nextval('public."Docentes_DocenteID_seq"'::regclass);
 A   ALTER TABLE public.docentes ALTER COLUMN docenteid DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16435    programa_alumnos programaal_id    DEFAULT     �   ALTER TABLE ONLY public.programa_alumnos ALTER COLUMN programaal_id SET DEFAULT nextval('public.programa_alumnos_programaal_id_seq'::regclass);
 M   ALTER TABLE public.programa_alumnos ALTER COLUMN programaal_id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16444     programa_docentes programadoc_id    DEFAULT     �   ALTER TABLE ONLY public.programa_docentes ALTER COLUMN programadoc_id SET DEFAULT nextval('public.programa_docentes_programadoc_id_seq'::regclass);
 O   ALTER TABLE public.programa_docentes ALTER COLUMN programadoc_id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16453    programas programaid    DEFAULT     |   ALTER TABLE ONLY public.programas ALTER COLUMN programaid SET DEFAULT nextval('public.programas_programaid_seq'::regclass);
 C   ALTER TABLE public.programas ALTER COLUMN programaid DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16462    promociones promocionid    DEFAULT     �   ALTER TABLE ONLY public.promociones ALTER COLUMN promocionid SET DEFAULT nextval('public.promociones_promocionid_seq'::regclass);
 F   ALTER TABLE public.promociones ALTER COLUMN promocionid DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16471    vertical verticalid    DEFAULT     z   ALTER TABLE ONLY public.vertical ALTER COLUMN verticalid SET DEFAULT nextval('public.vertical_verticalid_seq'::regclass);
 B   ALTER TABLE public.vertical ALTER COLUMN verticalid DROP DEFAULT;
       public          postgres    false    229    230    230            R          0    16414    alumnos 
   TABLE DATA           :   COPY public.alumnos (alumnoid, nombre, email) FROM stdin;
    public          postgres    false    218   H       T          0    16423    docentes 
   TABLE DATA           :   COPY public.docentes (docenteid, nombre, rol) FROM stdin;
    public          postgres    false    220   �K       _          0    16485    notas 
   TABLE DATA           �   COPY public.notas (programaal_id, proyecto_hlf, proyecto_eda, proyecto_bbdd, proyecto_deployment, proyecto_webdev, proyecto_frontend, proyecto_backend, proyecto_react, proyecto_fullstack, nombre_alumnos) FROM stdin;
    public          postgres    false    231   ]L       V          0    16432    programa_alumnos 
   TABLE DATA           Z   COPY public.programa_alumnos (programaal_id, alumnoid, programaid, modalidad) FROM stdin;
    public          postgres    false    222   �O       X          0    16441    programa_docentes 
   TABLE DATA           ]   COPY public.programa_docentes (programadoc_id, docenteid, programaid, modalidad) FROM stdin;
    public          postgres    false    224   �P       Z          0    16450 	   programas 
   TABLE DATA           L   COPY public.programas (programaid, promocionid, sede, vertical) FROM stdin;
    public          postgres    false    226   JQ       \          0    16459    promociones 
   TABLE DATA           D   COPY public.promociones (promocionid, mes, fechainicio) FROM stdin;
    public          postgres    false    228   �Q       ^          0    16468    vertical 
   TABLE DATA           >   COPY public.vertical (verticalid, nombrevertical) FROM stdin;
    public          postgres    false    230   �Q       m           0    0    Alumnos_AlumnoID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Alumnos_AlumnoID_seq"', 52, true);
          public          postgres    false    217            n           0    0    Docentes_DocenteID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Docentes_DocenteID_seq"', 10, true);
          public          postgres    false    219            o           0    0 "   programa_alumnos_programaal_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.programa_alumnos_programaal_id_seq', 2132, true);
          public          postgres    false    221            p           0    0 $   programa_docentes_programadoc_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.programa_docentes_programadoc_id_seq', 111, true);
          public          postgres    false    223            q           0    0    programas_programaid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.programas_programaid_seq', 58, true);
          public          postgres    false    225            r           0    0    promociones_promocionid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.promociones_promocionid_seq', 64, true);
          public          postgres    false    227            s           0    0    vertical_verticalid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vertical_verticalid_seq', 2, true);
          public          postgres    false    229            �           2606    16421    alumnos Alumnos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT "Alumnos_pkey" PRIMARY KEY (alumnoid);
 @   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT "Alumnos_pkey";
       public            postgres    false    218            �           2606    16430    docentes Docentes_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT "Docentes_pkey" PRIMARY KEY (docenteid);
 B   ALTER TABLE ONLY public.docentes DROP CONSTRAINT "Docentes_pkey";
       public            postgres    false    220            �           2606    16439 &   programa_alumnos programa_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.programa_alumnos
    ADD CONSTRAINT programa_alumnos_pkey PRIMARY KEY (programaal_id);
 P   ALTER TABLE ONLY public.programa_alumnos DROP CONSTRAINT programa_alumnos_pkey;
       public            postgres    false    222            �           2606    16448 (   programa_docentes programa_docentes_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.programa_docentes
    ADD CONSTRAINT programa_docentes_pkey PRIMARY KEY (programadoc_id);
 R   ALTER TABLE ONLY public.programa_docentes DROP CONSTRAINT programa_docentes_pkey;
       public            postgres    false    224            �           2606    16457    programas programas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.programas
    ADD CONSTRAINT programas_pkey PRIMARY KEY (programaid);
 B   ALTER TABLE ONLY public.programas DROP CONSTRAINT programas_pkey;
       public            postgres    false    226            �           2606    16466    promociones promociones_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.promociones
    ADD CONSTRAINT promociones_pkey PRIMARY KEY (promocionid);
 F   ALTER TABLE ONLY public.promociones DROP CONSTRAINT promociones_pkey;
       public            postgres    false    228            �           2606    16475    vertical vertical_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.vertical
    ADD CONSTRAINT vertical_pkey PRIMARY KEY (verticalid);
 @   ALTER TABLE ONLY public.vertical DROP CONSTRAINT vertical_pkey;
       public            postgres    false    230            �           2606    16500    programa_alumnos ac_alumnos    FK CONSTRAINT     �   ALTER TABLE ONLY public.programa_alumnos
    ADD CONSTRAINT ac_alumnos FOREIGN KEY (alumnoid) REFERENCES public.alumnos(alumnoid);
 E   ALTER TABLE ONLY public.programa_alumnos DROP CONSTRAINT ac_alumnos;
       public          postgres    false    222    3247    218            �           2606    16525    notas ac_alumnosnotas    FK CONSTRAINT     �   ALTER TABLE ONLY public.notas
    ADD CONSTRAINT ac_alumnosnotas FOREIGN KEY (programaal_id) REFERENCES public.programa_alumnos(programaal_id);
 ?   ALTER TABLE ONLY public.notas DROP CONSTRAINT ac_alumnosnotas;
       public          postgres    false    222    231    3251            �           2606    16505 $   programa_alumnos ac_alumnosprogramas    FK CONSTRAINT     �   ALTER TABLE ONLY public.programa_alumnos
    ADD CONSTRAINT ac_alumnosprogramas FOREIGN KEY (programaid) REFERENCES public.programas(programaid);
 N   ALTER TABLE ONLY public.programa_alumnos DROP CONSTRAINT ac_alumnosprogramas;
       public          postgres    false    222    3255    226            �           2606    16490    programa_docentes ac_docentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.programa_docentes
    ADD CONSTRAINT ac_docentes FOREIGN KEY (docenteid) REFERENCES public.docentes(docenteid);
 G   ALTER TABLE ONLY public.programa_docentes DROP CONSTRAINT ac_docentes;
       public          postgres    false    224    3249    220            �           2606    16495    programa_docentes ac_programas    FK CONSTRAINT     �   ALTER TABLE ONLY public.programa_docentes
    ADD CONSTRAINT ac_programas FOREIGN KEY (programaid) REFERENCES public.programas(programaid);
 H   ALTER TABLE ONLY public.programa_docentes DROP CONSTRAINT ac_programas;
       public          postgres    false    3255    226    224            �           2606    16515    programas ac_promocionprogramas    FK CONSTRAINT     �   ALTER TABLE ONLY public.programas
    ADD CONSTRAINT ac_promocionprogramas FOREIGN KEY (promocionid) REFERENCES public.promociones(promocionid);
 I   ALTER TABLE ONLY public.programas DROP CONSTRAINT ac_promocionprogramas;
       public          postgres    false    3257    226    228            R   �  x�]�Kr�8���)p��ޏ�p�G�bW��j���",#	(�&���^d��x�i ��J�~| ��k(����S�fԏ������s���(�-�GUb}���M	��EaJm���Nc�"1oB-��ʣ|��z�9�>c}��88/��=��p�Ù�;��aʏʫJc$Hļ�X�7��$�zݾ�@������ڝ*]$Hļ�XuP��C��]��	��L��8{Tu���a��jE��*Gb�5MZz�ǒ�>����%Z�����ZӾ� ���Ԋ�ͮ�"ruګ7��{71�g�RպR^;y�|վ�������U-�Д��r� r������U��4��{���a)��&��5L������@\y�j����oQ�!1���>�g��O޵�~�K��N��v��6j�������i�hy6^�� R����6x�(�V�'�H\�
�-c�?8���^��9���3��W훒�z�(�0����J�����[�z���m��T��$���@Nx����[:z��qz��s爟_q[cI��l_�_T�Ȑ��Cq���حSG�\�;�ߚp���v} )���Z�^�S��mZ�1�s����k��j+�
"pm*���P�m�-	`��N����ڭ�"BF��źѵ܄�y��D�
�bĻ,�}�V��'&��\^R����\t4*۾ي^�R�S~��Fy�X����׆b���-��2\ ub�����ԡ���V֝01d��X�Wh��rK�C��?2d��D�[��,*WU$��ũx�wyY�a."@���g�����'���#.Ω�.�{�O�"���t�	�w>��"sy)���2+���E���| ���qC��M��R 9���Zid4�7A$.��V�Q�R�aB��y��������C�      T   �   x�%�A
1�uz��@E�ee�Q�q#�	%PZȴwe�B<B/f����'i��y�o~�ɚ��z���<�l�I�yQ2an�UU����
;�_��
����vf]����˰Oy��ʹN�6��<`+�k.c���76      _   }  x��VKN�@]�)�#��,=~"�H��r\�F�n(�h�6,Y�q_l�:��؉#Em%��z�UGA��q}��9s*����s���s�F�.]��1��f�[K�Ԇ;)�Fu�DH"��X|�/?#��B '���Qy�tn���SH5������ͻ�qbP��΁r�����O�ܩ?�������Y�7`�7PW`����H����m ��S{����.���#�*���N��S'���E6�ݦ����a#�ү��t<� �C��Ƿ(��֓�v1��u�A ���w`S�3��X_�Vd��ˁt�]`MlY̻g��2p6�L�ݫy��K%�i�%�'�fMɡw[Jj��\�A��w+�p	++�8!����*_>�ywW���L�q���;)>�Ӧ�G𔖯l zR 9o�6@�-0ڂ:�:)r�]�]�!%H\�YNO�^���j�I����!$bBa�i�V�����iH����H��g����8���t4Є�	�����P��0l^$.���89r��q�3`�W�I�R�^�a�D�5��B�gh3-�;M�[YF�5f~����v�oz�G��j��l+2�VP�/���n�Nwc�A�����/VJ���`.C�7ʚ�� �xꈋD$ԘxB��~�N����ȨC0����N�]�1P
j���:M�*�=O�<e�c���i�r��>+�`�ԩ�'��u]��S���r6��V�l�:@j�-���6� ��6l@<]Ж�6�Yu�q�7�SDv�lҩ�ܢ�;���[uԹ������׆O����fY�Х��î�f��`�n���� ���i�5�cA���L�/
��Z�{90���O�![_b	u��i���.�E"���H?-X\r�gm���R/�����g�F?�qu�kss�?�t��      V   �   x�=��q�0C�p/�\�����=�7�I��n� j��q;G�OՉDէ.��/,�nl���G�ŝ3�@�A�s&]}Zn��c	�Xr�Գ��i<��$�|��D�}.Ox�Ix�)x}��|Il�ֱ?� lz@P�#\N�9�P�%g!���P�g�� B	@���
l ��� R	@�D!���R�Fn���߀ �����^��M���<�?��c�      X   Y   x�340�4�45�(J-N�K�L��240�4�3�4�4�@3�4�45E��4��k�iR矗����ehh�i	2�7�
5Ab���� �'      Z   J   x�35�43�K�I�K�L�t+��Q.IL��25��&�e�p�$�$*'gU�r��s��`��@�A2+F��� ���      \   8   x�33�tKM*J-��44�70�7202�23�N-(�L�JqZ�X�$��b���� ak      ^   )   x�3�tI,ITN�L�KN�2�t+��Q.IL������ �D	/     