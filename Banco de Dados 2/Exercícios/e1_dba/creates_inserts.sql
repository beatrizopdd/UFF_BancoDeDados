-- SCHEMA: e1_dba

CREATE TABLE e1_dba.Pessoas (
	ID INT, 
	Nome VARCHAR(50),
	PRIMARY KEY (ID)
);
	
CREATE TABLE e1_dba.Saldos (
	DataSaldo DATE,
	IDPessoa INT REFERENCES e1_dba.Pessoas (ID), 
	Valor MONEY,
	PRIMARY KEY (DataSaldo, IDPessoa)
);

INSERT INTO e1_dba.Pessoas VALUES (1,'Daniel'),
							(2,'Wagner'),
							(3,'Marcos'),
							(4,'Maria');

INSERT INTO e1_dba.Saldos VALUES ('2012-08-15',4,5000);