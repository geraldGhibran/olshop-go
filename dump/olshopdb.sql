PGDMP     .                    {            olshopdb    15.4    15.4 j    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16872    olshopdb    DATABASE     �   CREATE DATABASE olshopdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE olshopdb;
                postgres    false            �            1259    16882 	   addresses    TABLE     �  CREATE TABLE public.addresses (
    id character varying(36) NOT NULL,
    user_id character varying(36),
    name character varying(100),
    is_primary boolean,
    city_id character varying(100),
    province_id character varying(100),
    address1 character varying(255),
    address2 character varying(255),
    phone character varying(100),
    email character varying(100),
    post_code character varying(100),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    17085 
   cart_items    TABLE     �  CREATE TABLE public.cart_items (
    id character varying(36) NOT NULL,
    cart_id character varying(36),
    product_id character varying(36),
    qty bigint,
    base_price numeric(16,2),
    base_total numeric(16,2),
    tax_amount numeric(16,2),
    tax_percent numeric(10,2),
    discount_amount numeric(16,2),
    discount_percent numeric(10,2),
    sub_total numeric(16,2),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.cart_items;
       public         heap    postgres    false            �            1259    17079    carts    TABLE       CREATE TABLE public.carts (
    id character varying(36) NOT NULL,
    base_total_price numeric(16,2),
    tax_amount numeric(16,2),
    tax_percent numeric(10,2),
    discount_amount numeric(16,2),
    discount_percent numeric(10,2),
    grand_total numeric(16,2)
);
    DROP TABLE public.carts;
       public         heap    postgres    false            �            1259    16924 
   categories    TABLE     )  CREATE TABLE public.categories (
    id character varying(36) NOT NULL,
    parent_id character varying(36),
    section_id character varying(36),
    name character varying(100),
    slug character varying(100),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    17016    order_customers    TABLE     F  CREATE TABLE public.order_customers (
    id character varying(36) NOT NULL,
    user_id character varying(36),
    order_id character varying(36),
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    city_id character varying(100),
    province_id character varying(100),
    address1 character varying(100),
    address2 character varying(100),
    phone character varying(50),
    email character varying(100),
    post_code character varying(100),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 #   DROP TABLE public.order_customers;
       public         heap    postgres    false            �            1259    16992    order_items    TABLE     .  CREATE TABLE public.order_items (
    id character varying(36) NOT NULL,
    order_id character varying(36),
    product_id character varying(36),
    qty bigint,
    base_price numeric(16,2),
    base_total numeric(16,2),
    tax_amount numeric(16,2),
    tax_percent numeric(10,2),
    discount_amount numeric(16,2),
    discount_percent numeric(10,2),
    sub_total numeric(16,2),
    sku character varying(36),
    name character varying(255),
    weight numeric(10,2),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.order_items;
       public         heap    postgres    false            �            1259    16975    orders    TABLE     �  CREATE TABLE public.orders (
    id character varying(36) NOT NULL,
    user_id character varying(36),
    code character varying(50),
    status bigint,
    order_date timestamp with time zone,
    payment_due timestamp with time zone,
    payment_status character varying(50),
    payment_token character varying(100),
    base_total_price numeric(16,2),
    tax_amount numeric(16,2),
    tax_percent numeric(10,2),
    discount_amount numeric(16,2),
    discount_percent numeric(10,2),
    shipping_cost numeric(16,2),
    grand_total numeric(16,2),
    note text,
    shipping_courier character varying(100),
    shipping_service_name character varying(100),
    approved_by character varying(36),
    approved_at timestamp with time zone,
    cancelled_by character varying(36),
    cancelled_at timestamp with time zone,
    cancellation_note character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    17041    payments    TABLE     8  CREATE TABLE public.payments (
    id character varying(36) NOT NULL,
    order_id character varying(36),
    number character varying(100),
    amount numeric(16,2),
    method character varying(100),
    status character varying(100),
    token character varying(100),
    payload text,
    payment_type character varying(100),
    va_number character varying(100),
    bill_code character varying(100),
    bill_key character varying(100),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.payments;
       public         heap    postgres    false            �            1259    16941    product_categories    TABLE     �   CREATE TABLE public.product_categories (
    category_id character varying(36) NOT NULL,
    product_id character varying(36) NOT NULL
);
 &   DROP TABLE public.product_categories;
       public         heap    postgres    false            �            1259    16956    product_images    TABLE       CREATE TABLE public.product_images (
    id character varying(36) NOT NULL,
    product_id character varying(36),
    path text,
    extra_large text,
    large text,
    medium text,
    small text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            �            1259    16901    products    TABLE       CREATE TABLE public.products (
    id character varying(36) NOT NULL,
    parent_id character varying(36),
    user_id character varying(36),
    sku character varying(100),
    name character varying(255),
    slug character varying(255),
    price numeric(16,2),
    stock bigint,
    weight numeric(10,2),
    short_description text,
    description text,
    status bigint DEFAULT 0,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16918    sections    TABLE     �   CREATE TABLE public.sections (
    id character varying(36) NOT NULL,
    name character varying(100),
    slug character varying(100),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.sections;
       public         heap    postgres    false            �            1259    17057 	   shipments    TABLE     9  CREATE TABLE public.shipments (
    id character varying(36) NOT NULL,
    user_id character varying(36),
    order_id character varying(36),
    track_number character varying(255),
    status character varying(36),
    total_qty bigint,
    total_weight numeric(10,2),
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    city_id character varying(100),
    province_id character varying(100),
    address1 character varying(100),
    address2 character varying(100),
    phone character varying(50),
    email character varying(100),
    post_code character varying(100),
    shipped_by character varying(36),
    shipped_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.shipments;
       public         heap    postgres    false            �            1259    16873    users    TABLE     �  CREATE TABLE public.users (
    id character varying(36) NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(255) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �          0    16882 	   addresses 
   TABLE DATA           �   COPY public.addresses (id, user_id, name, is_primary, city_id, province_id, address1, address2, phone, email, post_code, created_at, updated_at) FROM stdin;
    public          postgres    false    215   =�       �          0    17085 
   cart_items 
   TABLE DATA           �   COPY public.cart_items (id, cart_id, product_id, qty, base_price, base_total, tax_amount, tax_percent, discount_amount, discount_percent, sub_total, created_at, updated_at) FROM stdin;
    public          postgres    false    227   Z�       �          0    17079    carts 
   TABLE DATA           ~   COPY public.carts (id, base_total_price, tax_amount, tax_percent, discount_amount, discount_percent, grand_total) FROM stdin;
    public          postgres    false    226   w�       �          0    16924 
   categories 
   TABLE DATA           c   COPY public.categories (id, parent_id, section_id, name, slug, created_at, updated_at) FROM stdin;
    public          postgres    false    218   Œ       �          0    17016    order_customers 
   TABLE DATA           �   COPY public.order_customers (id, user_id, order_id, first_name, last_name, city_id, province_id, address1, address2, phone, email, post_code, created_at, updated_at) FROM stdin;
    public          postgres    false    223   �       �          0    16992    order_items 
   TABLE DATA           �   COPY public.order_items (id, order_id, product_id, qty, base_price, base_total, tax_amount, tax_percent, discount_amount, discount_percent, sub_total, sku, name, weight, created_at, updated_at) FROM stdin;
    public          postgres    false    222   ��       �          0    16975    orders 
   TABLE DATA           y  COPY public.orders (id, user_id, code, status, order_date, payment_due, payment_status, payment_token, base_total_price, tax_amount, tax_percent, discount_amount, discount_percent, shipping_cost, grand_total, note, shipping_courier, shipping_service_name, approved_by, approved_at, cancelled_by, cancelled_at, cancellation_note, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    221   �       �          0    17041    payments 
   TABLE DATA           �   COPY public.payments (id, order_id, number, amount, method, status, token, payload, payment_type, va_number, bill_code, bill_key, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    224   9�       �          0    16941    product_categories 
   TABLE DATA           E   COPY public.product_categories (category_id, product_id) FROM stdin;
    public          postgres    false    219   V�       �          0    16956    product_images 
   TABLE DATA           y   COPY public.product_images (id, product_id, path, extra_large, large, medium, small, created_at, updated_at) FROM stdin;
    public          postgres    false    220   s�       �          0    16901    products 
   TABLE DATA           �   COPY public.products (id, parent_id, user_id, sku, name, slug, price, stock, weight, short_description, description, status, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    216   Г       �          0    16918    sections 
   TABLE DATA           J   COPY public.sections (id, name, slug, created_at, updated_at) FROM stdin;
    public          postgres    false    217    �       �          0    17057 	   shipments 
   TABLE DATA           �   COPY public.shipments (id, user_id, order_id, track_number, status, total_qty, total_weight, first_name, last_name, city_id, province_id, address1, address2, phone, email, post_code, shipped_by, shipped_at, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    225   =�                 0    16873    users 
   TABLE DATA              COPY public.users (id, first_name, last_name, email, password, remember_token, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    214   Z�       �           2606    16888    addresses addresses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    215            �           2606    17089    cart_items cart_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.cart_items DROP CONSTRAINT cart_items_pkey;
       public            postgres    false    227            �           2606    17083    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    226            �           2606    16928    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    218            �           2606    17022 $   order_customers order_customers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.order_customers
    ADD CONSTRAINT order_customers_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.order_customers DROP CONSTRAINT order_customers_pkey;
       public            postgres    false    223            �           2606    16996    order_items order_items_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public            postgres    false    222            �           2606    16981    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    221            �           2606    17047    payments payments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    224            �           2606    16945 *   product_categories product_categories_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (category_id, product_id);
 T   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_pkey;
       public            postgres    false    219    219            �           2606    16962 "   product_images product_images_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public            postgres    false    220            �           2606    16908    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    216            �           2606    16922    sections sections_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sections DROP CONSTRAINT sections_pkey;
       public            postgres    false    217            �           2606    17063    shipments shipments_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.shipments
    ADD CONSTRAINT shipments_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.shipments DROP CONSTRAINT shipments_pkey;
       public            postgres    false    225            �           2606    16879    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    214            �           1259    16900    idx_addresses_id    INDEX     K   CREATE UNIQUE INDEX idx_addresses_id ON public.addresses USING btree (id);
 $   DROP INDEX public.idx_addresses_id;
       public            postgres    false    215            �           1259    16899    idx_addresses_user_id    INDEX     N   CREATE INDEX idx_addresses_user_id ON public.addresses USING btree (user_id);
 )   DROP INDEX public.idx_addresses_user_id;
       public            postgres    false    215            �           1259    17106    idx_cart_items_cart_id    INDEX     P   CREATE INDEX idx_cart_items_cart_id ON public.cart_items USING btree (cart_id);
 *   DROP INDEX public.idx_cart_items_cart_id;
       public            postgres    false    227            �           1259    17107    idx_cart_items_id    INDEX     M   CREATE UNIQUE INDEX idx_cart_items_id ON public.cart_items USING btree (id);
 %   DROP INDEX public.idx_cart_items_id;
       public            postgres    false    227            �           1259    17105    idx_cart_items_product_id    INDEX     V   CREATE INDEX idx_cart_items_product_id ON public.cart_items USING btree (product_id);
 -   DROP INDEX public.idx_cart_items_product_id;
       public            postgres    false    227            �           1259    17084    idx_carts_id    INDEX     C   CREATE UNIQUE INDEX idx_carts_id ON public.carts USING btree (id);
     DROP INDEX public.idx_carts_id;
       public            postgres    false    226            �           1259    16940    idx_categories_id    INDEX     M   CREATE UNIQUE INDEX idx_categories_id ON public.categories USING btree (id);
 %   DROP INDEX public.idx_categories_id;
       public            postgres    false    218            �           1259    16939    idx_categories_section_id    INDEX     V   CREATE INDEX idx_categories_section_id ON public.categories USING btree (section_id);
 -   DROP INDEX public.idx_categories_section_id;
       public            postgres    false    218            �           1259    17040    idx_order_customers_id    INDEX     W   CREATE UNIQUE INDEX idx_order_customers_id ON public.order_customers USING btree (id);
 *   DROP INDEX public.idx_order_customers_id;
       public            postgres    false    223            �           1259    17038    idx_order_customers_order_id    INDEX     \   CREATE INDEX idx_order_customers_order_id ON public.order_customers USING btree (order_id);
 0   DROP INDEX public.idx_order_customers_order_id;
       public            postgres    false    223            �           1259    17039    idx_order_customers_user_id    INDEX     Z   CREATE INDEX idx_order_customers_user_id ON public.order_customers USING btree (user_id);
 /   DROP INDEX public.idx_order_customers_user_id;
       public            postgres    false    223            �           1259    17015    idx_order_items_id    INDEX     O   CREATE UNIQUE INDEX idx_order_items_id ON public.order_items USING btree (id);
 &   DROP INDEX public.idx_order_items_id;
       public            postgres    false    222            �           1259    17014    idx_order_items_order_id    INDEX     T   CREATE INDEX idx_order_items_order_id ON public.order_items USING btree (order_id);
 ,   DROP INDEX public.idx_order_items_order_id;
       public            postgres    false    222            �           1259    17013    idx_order_items_product_id    INDEX     X   CREATE INDEX idx_order_items_product_id ON public.order_items USING btree (product_id);
 .   DROP INDEX public.idx_order_items_product_id;
       public            postgres    false    222            �           1259    17012    idx_order_items_sku    INDEX     J   CREATE INDEX idx_order_items_sku ON public.order_items USING btree (sku);
 '   DROP INDEX public.idx_order_items_sku;
       public            postgres    false    222            �           1259    16991    idx_orders_code    INDEX     B   CREATE INDEX idx_orders_code ON public.orders USING btree (code);
 #   DROP INDEX public.idx_orders_code;
       public            postgres    false    221            �           1259    16988    idx_orders_id    INDEX     E   CREATE UNIQUE INDEX idx_orders_id ON public.orders USING btree (id);
 !   DROP INDEX public.idx_orders_id;
       public            postgres    false    221            �           1259    16990    idx_orders_payment_status    INDEX     V   CREATE INDEX idx_orders_payment_status ON public.orders USING btree (payment_status);
 -   DROP INDEX public.idx_orders_payment_status;
       public            postgres    false    221            �           1259    16989    idx_orders_payment_token    INDEX     T   CREATE INDEX idx_orders_payment_token ON public.orders USING btree (payment_token);
 ,   DROP INDEX public.idx_orders_payment_token;
       public            postgres    false    221            �           1259    16987    idx_orders_user_id    INDEX     H   CREATE INDEX idx_orders_user_id ON public.orders USING btree (user_id);
 &   DROP INDEX public.idx_orders_user_id;
       public            postgres    false    221            �           1259    17056    idx_payments_id    INDEX     I   CREATE UNIQUE INDEX idx_payments_id ON public.payments USING btree (id);
 #   DROP INDEX public.idx_payments_id;
       public            postgres    false    224            �           1259    17054    idx_payments_number    INDEX     J   CREATE INDEX idx_payments_number ON public.payments USING btree (number);
 '   DROP INDEX public.idx_payments_number;
       public            postgres    false    224            �           1259    17055    idx_payments_order_id    INDEX     N   CREATE INDEX idx_payments_order_id ON public.payments USING btree (order_id);
 )   DROP INDEX public.idx_payments_order_id;
       public            postgres    false    224            �           1259    17053    idx_payments_token    INDEX     H   CREATE INDEX idx_payments_token ON public.payments USING btree (token);
 &   DROP INDEX public.idx_payments_token;
       public            postgres    false    224            �           1259    16973    idx_product_images_id    INDEX     U   CREATE UNIQUE INDEX idx_product_images_id ON public.product_images USING btree (id);
 )   DROP INDEX public.idx_product_images_id;
       public            postgres    false    220            �           1259    16974    idx_product_images_product_id    INDEX     ^   CREATE INDEX idx_product_images_product_id ON public.product_images USING btree (product_id);
 1   DROP INDEX public.idx_product_images_product_id;
       public            postgres    false    220            �           1259    16917    idx_products_id    INDEX     I   CREATE UNIQUE INDEX idx_products_id ON public.products USING btree (id);
 #   DROP INDEX public.idx_products_id;
       public            postgres    false    216            �           1259    16916    idx_products_parent_id    INDEX     P   CREATE INDEX idx_products_parent_id ON public.products USING btree (parent_id);
 *   DROP INDEX public.idx_products_parent_id;
       public            postgres    false    216            �           1259    16914    idx_products_sku    INDEX     D   CREATE INDEX idx_products_sku ON public.products USING btree (sku);
 $   DROP INDEX public.idx_products_sku;
       public            postgres    false    216            �           1259    16915    idx_products_user_id    INDEX     L   CREATE INDEX idx_products_user_id ON public.products USING btree (user_id);
 (   DROP INDEX public.idx_products_user_id;
       public            postgres    false    216            �           1259    16923    idx_sections_id    INDEX     I   CREATE UNIQUE INDEX idx_sections_id ON public.sections USING btree (id);
 #   DROP INDEX public.idx_sections_id;
       public            postgres    false    217            �           1259    17077    idx_shipments_id    INDEX     K   CREATE UNIQUE INDEX idx_shipments_id ON public.shipments USING btree (id);
 $   DROP INDEX public.idx_shipments_id;
       public            postgres    false    225            �           1259    17075    idx_shipments_order_id    INDEX     P   CREATE INDEX idx_shipments_order_id ON public.shipments USING btree (order_id);
 *   DROP INDEX public.idx_shipments_order_id;
       public            postgres    false    225            �           1259    17078    idx_shipments_status    INDEX     L   CREATE INDEX idx_shipments_status ON public.shipments USING btree (status);
 (   DROP INDEX public.idx_shipments_status;
       public            postgres    false    225            �           1259    17074    idx_shipments_track_number    INDEX     X   CREATE INDEX idx_shipments_track_number ON public.shipments USING btree (track_number);
 .   DROP INDEX public.idx_shipments_track_number;
       public            postgres    false    225            �           1259    17076    idx_shipments_user_id    INDEX     N   CREATE INDEX idx_shipments_user_id ON public.shipments USING btree (user_id);
 )   DROP INDEX public.idx_shipments_user_id;
       public            postgres    false    225            �           1259    16880    idx_users_email    INDEX     I   CREATE UNIQUE INDEX idx_users_email ON public.users USING btree (email);
 #   DROP INDEX public.idx_users_email;
       public            postgres    false    214            �           1259    16881    idx_users_id    INDEX     C   CREATE UNIQUE INDEX idx_users_id ON public.users USING btree (id);
     DROP INDEX public.idx_users_id;
       public            postgres    false    214            �           2606    16889    addresses fk_addresses_user    FK CONSTRAINT     z   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT fk_addresses_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.addresses DROP CONSTRAINT fk_addresses_user;
       public          postgres    false    214    215    3228            �           2606    17090    cart_items fk_cart_items_cart    FK CONSTRAINT     |   ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT fk_cart_items_cart FOREIGN KEY (cart_id) REFERENCES public.carts(id);
 G   ALTER TABLE ONLY public.cart_items DROP CONSTRAINT fk_cart_items_cart;
       public          postgres    false    3284    226    227            �           2606    17095     cart_items fk_cart_items_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT fk_cart_items_product FOREIGN KEY (product_id) REFERENCES public.products(id);
 J   ALTER TABLE ONLY public.cart_items DROP CONSTRAINT fk_cart_items_product;
       public          postgres    false    216    227    3238            �           2606    17100    cart_items fk_carts_cart_items    FK CONSTRAINT     }   ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT fk_carts_cart_items FOREIGN KEY (cart_id) REFERENCES public.carts(id);
 H   ALTER TABLE ONLY public.cart_items DROP CONSTRAINT fk_carts_cart_items;
       public          postgres    false    226    227    3284            �           2606    16934     categories fk_categories_section    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT fk_categories_section FOREIGN KEY (section_id) REFERENCES public.sections(id);
 J   ALTER TABLE ONLY public.categories DROP CONSTRAINT fk_categories_section;
       public          postgres    false    218    3241    217            �           2606    17028 (   order_customers fk_order_customers_order    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_customers
    ADD CONSTRAINT fk_order_customers_order FOREIGN KEY (order_id) REFERENCES public.orders(id);
 R   ALTER TABLE ONLY public.order_customers DROP CONSTRAINT fk_order_customers_order;
       public          postgres    false    223    221    3258            �           2606    17023 '   order_customers fk_order_customers_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_customers
    ADD CONSTRAINT fk_order_customers_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.order_customers DROP CONSTRAINT fk_order_customers_user;
       public          postgres    false    3228    214    223            �           2606    16997     order_items fk_order_items_order    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_order_items_order FOREIGN KEY (order_id) REFERENCES public.orders(id);
 J   ALTER TABLE ONLY public.order_items DROP CONSTRAINT fk_order_items_order;
       public          postgres    false    222    3258    221            �           2606    17002 "   order_items fk_order_items_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_order_items_product FOREIGN KEY (product_id) REFERENCES public.products(id);
 L   ALTER TABLE ONLY public.order_items DROP CONSTRAINT fk_order_items_product;
       public          postgres    false    3238    222    216            �           2606    17033 (   order_customers fk_orders_order_customer    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_customers
    ADD CONSTRAINT fk_orders_order_customer FOREIGN KEY (order_id) REFERENCES public.orders(id);
 R   ALTER TABLE ONLY public.order_customers DROP CONSTRAINT fk_orders_order_customer;
       public          postgres    false    221    3258    223            �           2606    17007 !   order_items fk_orders_order_items    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_orders_order_items FOREIGN KEY (order_id) REFERENCES public.orders(id);
 K   ALTER TABLE ONLY public.order_items DROP CONSTRAINT fk_orders_order_items;
       public          postgres    false    221    3258    222            �           2606    16982    orders fk_orders_user    FK CONSTRAINT     t   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_user;
       public          postgres    false    3228    214    221            �           2606    17048    payments fk_payments_order    FK CONSTRAINT     {   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT fk_payments_order FOREIGN KEY (order_id) REFERENCES public.orders(id);
 D   ALTER TABLE ONLY public.payments DROP CONSTRAINT fk_payments_order;
       public          postgres    false    224    221    3258            �           2606    16946 1   product_categories fk_product_categories_category    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT fk_product_categories_category FOREIGN KEY (category_id) REFERENCES public.categories(id);
 [   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT fk_product_categories_category;
       public          postgres    false    218    219    3243            �           2606    16951 0   product_categories fk_product_categories_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT fk_product_categories_product FOREIGN KEY (product_id) REFERENCES public.products(id);
 Z   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT fk_product_categories_product;
       public          postgres    false    3238    216    219            �           2606    16963 (   product_images fk_product_images_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT fk_product_images_product FOREIGN KEY (product_id) REFERENCES public.products(id);
 R   ALTER TABLE ONLY public.product_images DROP CONSTRAINT fk_product_images_product;
       public          postgres    false    216    220    3238            �           2606    16968 )   product_images fk_products_product_images    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT fk_products_product_images FOREIGN KEY (product_id) REFERENCES public.products(id);
 S   ALTER TABLE ONLY public.product_images DROP CONSTRAINT fk_products_product_images;
       public          postgres    false    3238    216    220            �           2606    16909    products fk_products_user    FK CONSTRAINT     x   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_products_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_products_user;
       public          postgres    false    3228    216    214            �           2606    16929 !   categories fk_sections_categories    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT fk_sections_categories FOREIGN KEY (section_id) REFERENCES public.sections(id);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT fk_sections_categories;
       public          postgres    false    218    217    3241            �           2606    17064    shipments fk_shipments_order    FK CONSTRAINT     }   ALTER TABLE ONLY public.shipments
    ADD CONSTRAINT fk_shipments_order FOREIGN KEY (order_id) REFERENCES public.orders(id);
 F   ALTER TABLE ONLY public.shipments DROP CONSTRAINT fk_shipments_order;
       public          postgres    false    3258    221    225            �           2606    17069    shipments fk_shipments_user    FK CONSTRAINT     z   ALTER TABLE ONLY public.shipments
    ADD CONSTRAINT fk_shipments_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.shipments DROP CONSTRAINT fk_shipments_user;
       public          postgres    false    3228    214    225            �           2606    16894    addresses fk_users_addresses    FK CONSTRAINT     {   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT fk_users_addresses FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.addresses DROP CONSTRAINT fk_users_addresses;
       public          postgres    false    214    3228    215            �      x������ � �      �      x������ � �      �   >   x��037H3JK�5N2��5I5N�M4H��MN15O50J44KN�4�30���p&������� ��^      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   M   x�32M3J1�4ӵHIM�5I3��RRu�SLSS�,�SS9��Q�����_P��R�\R�o��U���㇆�b���� �� �      �   @  x��S1r� ��+�30$ΤJ��)��Xv��AN��qRI:nw�v�G��r0�n:�9 Z�pm����T�.�bځ'���}�;�<1����a
0���gO�>�cV�ըz�(gH	��
=��>�	���<�nZ��6.fS<�e
���/�8a�9n=�aK�[�]H،2��U������3����.�Fo_Y�3|�y�{�
\�Wpܜ���S�M~�i�~���[�_�/���w����f�{yGʼ��W.���c}�ʽ��_�qW�����]��E�qA�"\`�wB���dR�&�8=�4�4�7{��)      �      x������ � �      �      x������ � �         �   x��ϻN�0 ���
�lȎ}�J:UT�T@[�xu��u�(��{���.��8\֮Ƣ�SW��C!Y!�f��s�ʇzn��]�OgӾyR�w�2��x}Zv�fE�Ճ��'['�m�6�1m;�H�gf �qp/���=B@�c�c�&\O8%Jr��%��n�PS2i`�5�"�9�V;, ��T�Z�h3����~p=jN�_7�i�~��Ip�$TN��5�߉I���id     