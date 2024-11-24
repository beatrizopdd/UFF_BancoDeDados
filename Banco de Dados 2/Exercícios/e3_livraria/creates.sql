-- SCHEMA: e3_livraria
-- DROP SCHEMA IF EXISTS e3_livraria ;

CREATE TABLE e3_livraria.Cliente (
	cid int,
	cnome varchar(50),
	uf varchar(2),
	PRIMARY KEY (cid)
);

CREATE TABLE e3_livraria.Livro (
	lid int,
	titulo varchar(50),
	categoria varchar(30),
	isbn varchar(13),
	anopublicacao int,
	PRIMARY KEY (lid)
);

CREATE TABLE e3_livraria.Nota_Fiscal (
	nfid int,
	cid int REFERENCES e3_livraria.Cliente (cid),
	datacompra date,
	valortotal float,
	PRIMARY KEY (nfid)
);

CREATE TABLE e3_livraria.Item_Nf (
	nfid int REFERENCES e3_livraria.Nota_Fiscal (nfid),
	lid int REFERENCES e3_livraria.Livro (lid),
	PRIMARY KEY (nfid, lid)
);
