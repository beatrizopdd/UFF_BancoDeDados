--
-- Name: cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(200) NOT NULL,
    endereco character varying(200),
    telefone character varying(20)
);


--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- Name: compra; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.compra (
    id integer NOT NULL,
    id_cliente integer NOT NULL,
    data date NOT NULL,
    hora time without time zone NOT NULL,
    nfe character varying(50) NOT NULL
);


--
-- Name: compra_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.compra_id_seq OWNED BY public.compra.id;


--
-- Name: devolucao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.devolucao (
    id integer NOT NULL,
    data date NOT NULL,
    id_item_compra integer NOT NULL
);


--
-- Name: devolucao_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.devolucao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: devolucao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.devolucao_id_seq OWNED BY public.devolucao.id;


--
-- Name: empresa_colaboradora; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.empresa_colaboradora (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    cnpj character varying(14) NOT NULL,
    endereco character varying(200),
    telefone character varying(20)
);


--
-- Name: empresa_colaboradora_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.empresa_colaboradora_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: empresa_colaboradora_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.empresa_colaboradora_id_seq OWNED BY public.empresa_colaboradora.id;


--
-- Name: entrega; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.entrega (
    id integer NOT NULL,
    data date NOT NULL,
    id_entregador integer NOT NULL,
    id_compra integer NOT NULL
);


--
-- Name: entrega_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.entrega_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entrega_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.entrega_id_seq OWNED BY public.entrega.id;


--
-- Name: item_compra; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.item_compra (
    id integer NOT NULL,
    id_produto integer NOT NULL,
    id_compra integer NOT NULL,
    quantidade integer NOT NULL
);


--
-- Name: item_compra_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.item_compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: item_compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.item_compra_id_seq OWNED BY public.item_compra.id;


--
-- Name: pf; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pf (
    id integer NOT NULL,
    cpf character varying(11) NOT NULL,
    salario numeric(15,2)
);


--
-- Name: pj; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pj (
    id integer NOT NULL,
    cnpj character varying(14) NOT NULL,
    lucro numeric(15,2)
);


--
-- Name: produto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    descricao text,
    preco_unitario numeric(15,2) NOT NULL,
    id_fornecedor integer NOT NULL
);


--
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- Name: compra id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.compra ALTER COLUMN id SET DEFAULT nextval('public.compra_id_seq'::regclass);




--
-- Name: devolucao id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.devolucao ALTER COLUMN id SET DEFAULT nextval('public.devolucao_id_seq'::regclass);


--
-- Name: empresa_colaboradora id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa_colaboradora ALTER COLUMN id SET DEFAULT nextval('public.empresa_colaboradora_id_seq'::regclass);


--
-- Name: entrega id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entrega ALTER COLUMN id SET DEFAULT nextval('public.entrega_id_seq'::regclass);


--
-- Name: item_compra id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.item_compra ALTER COLUMN id SET DEFAULT nextval('public.item_compra_id_seq'::regclass);


--
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: compra compra_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);


--
-- Name: devolucao devolucao_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.devolucao
    ADD CONSTRAINT devolucao_pkey PRIMARY KEY (id);


--
-- Name: empresa_colaboradora empresa_colaboradora_cnpj_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa_colaboradora
    ADD CONSTRAINT empresa_colaboradora_cnpj_key UNIQUE (cnpj);


--
-- Name: empresa_colaboradora empresa_colaboradora_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa_colaboradora
    ADD CONSTRAINT empresa_colaboradora_pkey PRIMARY KEY (id);


--
-- Name: entrega entrega_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entrega
    ADD CONSTRAINT entrega_pkey PRIMARY KEY (id);


--
-- Name: item_compra item_compra_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.item_compra
    ADD CONSTRAINT item_compra_pkey PRIMARY KEY (id);


--
-- Name: pf pf_cpf_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pf
    ADD CONSTRAINT pf_cpf_key UNIQUE (cpf);


--
-- Name: pf pf_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pf
    ADD CONSTRAINT pf_pkey PRIMARY KEY (id);


--
-- Name: pj pj_cnpj_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pj
    ADD CONSTRAINT pj_cnpj_key UNIQUE (cnpj);


--
-- Name: pj pj_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pj
    ADD CONSTRAINT pj_pkey PRIMARY KEY (id);


--
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


--
-- Name: pf fk_cliente_pf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pf
    ADD CONSTRAINT fk_cliente_pf FOREIGN KEY (id) REFERENCES public.cliente(id) ON DELETE CASCADE;


--
-- Name: pj fk_cliente_pj; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pj
    ADD CONSTRAINT fk_cliente_pj FOREIGN KEY (id) REFERENCES public.cliente(id) ON DELETE CASCADE;


--
-- Name: compra fk_compra_cliente; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT fk_compra_cliente FOREIGN KEY (id_cliente) REFERENCES public.pf(id) ON DELETE CASCADE;


--
-- Name: devolucao fk_devolucao_item_compra; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.devolucao
    ADD CONSTRAINT fk_devolucao_item_compra FOREIGN KEY (id_item_compra) REFERENCES public.item_compra(id) ON DELETE CASCADE;


--
-- Name: entrega fk_entrega_compra; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entrega
    ADD CONSTRAINT fk_entrega_compra FOREIGN KEY (id_compra) REFERENCES public.compra(id) ON DELETE RESTRICT;


--
-- Name: entrega fk_entrega_entregador; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entrega
    ADD CONSTRAINT fk_entrega_entregador FOREIGN KEY (id_entregador) REFERENCES public.empresa_colaboradora(id) ON DELETE RESTRICT;


--
-- Name: item_compra fk_item_compra; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.item_compra
    ADD CONSTRAINT fk_item_compra FOREIGN KEY (id_compra) REFERENCES public.compra(id) ON DELETE CASCADE;


--
-- Name: item_compra fk_item_compra_produto; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.item_compra
    ADD CONSTRAINT fk_item_compra_produto FOREIGN KEY (id_produto) REFERENCES public.produto(id) ON DELETE CASCADE;


--
-- Name: produto fk_produto_fornecedor; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT fk_produto_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES public.empresa_colaboradora(id) ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--
