/*
Nomes de todos os empregados 
do departamento 5 
que trabalhem mais de 10 horas por semana 
no projeto "projeto X"
*/

SELECT pnome, minicial, unome
FROM Empregado JOIN Trabalha_Em ON Empregado.ssn = Trabalha_Em.essn
JOIN Projeto ON Trabalha_Em.pno = Projeto.pnumero
WHERE dno = 5 AND pjnome = "Projeto X"

/*
Liste os nomes de todos os empregados 
que tenham um dependente com o mesmo primeiro nome que o deles
*/

SELECT pnome, minicial, unome
FROM Empregado JOIN Dependente ON Empregado.ssn = Dependente.essn
WHERE Dependente.nome-dependente LIKE 'Empregado.pnome%'