-- SCHEMA: e1_dba;
-- DROP SCHEMA IF EXISTS e1_dba ;

EXPLAIN ANALYZE SELECT P.Nome, S.* 
FROM e1_dba.Pessoas As P 
INNER JOIN e1_dba.Saldos As S ON P.ID = S.IDPessoa 
WHERE P.ID = 4