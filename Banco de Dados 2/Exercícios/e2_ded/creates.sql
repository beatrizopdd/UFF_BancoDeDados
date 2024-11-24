-- SCHEMA: e2_ded
-- DROP SCHEMA IF EXISTS e2_ded ;

CREATE TABLE e2_ded.Projeto (
	IdProjeto int,
	Orcamento float,
	Cidade varchar(50),
	PRIMARY KEY (IdProjeto)
);

CREATE TABLE e2_ded.Despesa (
	TipoDespesa char(1),
	NrDocumento int,
	Valor float,
	IdProjeto int REFERENCES e2_ded.Projeto (IdProjeto),
	PRIMARY KEY (TipoDespesa, NrDocumento)
);