-- SCHEMA: public

-- 1. Seleciona todos os clientes com nome contendo 'João'.
SELECT * 
FROM cliente 
WHERE nome ILIKE '%Cliente 1%';

-- 2. Seleciona todas as compras feitas após o dia 1º de janeiro de 2023.
SELECT * 
FROM compra 
WHERE data > '2023-01-01';

-- 3. Seleciona todos os produtos com preço unitário acima de 100,00.
SELECT * 
FROM produto 
WHERE preco_unitario > 100.00;

-- 4. Seleciona todas as devoluções realizadas antes do dia 1º de junho de 2023.
SELECT * 
FROM devolucao 
WHERE data < '2023-06-01';

-- 5. Seleciona todas as empresas colaboradoras localizadas em um endereço contendo 'Centro'.
SELECT * 
FROM empresa_colaboradora 
WHERE endereco ILIKE '%Centro%';

-- 6. Seleciona todos os clientes cujo telefone começa com '21'.
SELECT * 
FROM cliente 
WHERE telefone LIKE 'Telefone 21%';

-- 7. Seleciona todos os itens de compra que possuem uma quantidade maior que 5.
SELECT * 
FROM item_compra 
WHERE quantidade > 5;

-- 8. Seleciona todos os entregadores (empresas colaboradoras) que participaram de uma entrega no ano de 2024.
SELECT DISTINCT ec.*
FROM entrega e
JOIN empresa_colaboradora ec ON e.id_entregador = ec.id
WHERE e.data BETWEEN '2024-01-01' AND '2024-12-31';

-- 9. Seleciona todas as compras feitas por clientes com salário superior a 5.000,00.
SELECT c.*
FROM compra c
JOIN pf p ON c.id_cliente = p.id
WHERE p.salario > 5000.00;

-- 10. Seleciona todos os produtos fornecidos por empresas cujo nome contém 'Tech'.
SELECT p.*
FROM produto p
JOIN empresa_colaboradora ec ON p.id_fornecedor = ec.id
WHERE ec.nome ILIKE '%Empresa 1%';

-- 11. Seleciona todos os clientes que não possuem endereço registrado (endereço nulo).
SELECT * 
FROM cliente 
WHERE endereco IS NULL;

-- 12. Seleciona todas as devoluções feitas para itens de compras de produtos cujo preço unitário é maior que 200,00.
SELECT d.*
FROM devolucao d
JOIN item_compra ic ON d.id_item_compra = ic.id
JOIN produto p ON ic.id_produto = p.id
WHERE p.preco_unitario > 200.00;

-- 13. Seleciona todos os clientes que fizeram pelo menos uma compra em fevereiro de 2023.
SELECT DISTINCT c.*
FROM cliente c
JOIN compra co ON c.id = co.id_cliente
WHERE co.data BETWEEN '2023-02-01' AND '2023-02-28';

-- 14. Seleciona todas as entregas que ocorreram após as 01/01/2001.
SELECT * 
FROM entrega 
WHERE data > '2001-01-01';

-- 15. Seleciona todos os registros de Pessoas Jurídicas com lucro superior a 1.000,00.
SELECT * 
FROM pj 
WHERE lucro > 1000.00;