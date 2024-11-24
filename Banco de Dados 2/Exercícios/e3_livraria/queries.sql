-- SCHEMA: e3_livraria

-- DROP SCHEMA IF EXISTS e3_livraria ;

SELECT L.titulo
FROM e3_livraria.Livro L
WHERE L.categoria = 'Terror' 
	AND L.anopublicacao > 2021
	AND L.lid NOT IN (SELECT lid FROM e3_livraria.Item_Nf);

SELECT L.titulo, L.isbn
FROM e3_livraria.Livro L
JOIN e3_livraria.Item_Nf I ON L.lid = I.lid
JOIN e3_livraria.Nota_Fiscal N ON I.nfid = N.nfid
JOIN e3_livraria.Cliente C ON N.cid = C.cid
WHERE C.uf = 'RJ';

SELECT cnome
FROM e3_livraria.Cliente C
WHERE C.uf = 'AM';

SELECT DISTINCT C.cnome
FROM e3_livraria.Livro L
JOIN e3_livraria.Item_Nf I ON L.lid = I.lid
JOIN e3_livraria.Nota_Fiscal N ON I.nfid = N.nfid
JOIN e3_livraria.Cliente C ON N.cid = C.cid
WHERE L.categoria = 'Romance' AND L.anopublicacao < 1999 AND C.cnome != 'Daniel';

SELECT C.cnome, C.cid
FROM e3_livraria.Cliente C
WHERE C.uf = 'CE';
