-- Inserir dados na tabela CLIENTE
INSERT INTO CLIENTE (ID,NOME, ENDERECO, TELEFONE)
SELECT 
	i,
    'Cliente ' || i,
    'Endereco ' || i || ', Cidade ' || (i % 100),
    'Telefone ' || LPAD((RANDOM() * 100000000)::INTEGER::TEXT, 8, '0')
FROM GENERATE_SERIES(1, 1000) i;

-- Inserir dados na tabela PF (Pessoa Física) para metade dos clientes
INSERT INTO PF (ID, CPF, SALARIO)
SELECT 
    ID,
    LPAD((RANDOM() * 1000000000)::INTEGER::TEXT, 11, '0'),
    RANDOM() * 10000
FROM CLIENTE
WHERE ID % 2 = 0;

-- Inserir dados na tabela PJ (Pessoa Jurídica) para a outra metade dos clientes
INSERT INTO PJ (ID, CNPJ, LUCRO)
SELECT 
    ID,
    LPAD((RANDOM() * 100000000)::INTEGER::TEXT, 14, '0'),
    RANDOM() * 50000
    FROM CLIENTE
WHERE ID % 2 <> 0;


-- Inserir dados na tabela EMPRESA_COLABORADORA
INSERT INTO EMPRESA_COLABORADORA (ID,NOME, CNPJ, ENDERECO, TELEFONE)
SELECT 
    i,
    'Empresa ' || i,
    LPAD((RANDOM() * 10000000)::INTEGER::TEXT, 14, '0'),
    'Endereco ' || i || ', Cidade ' || (i % 50),
    'Telefone ' || LPAD((RANDOM() * 100000)::INTEGER::TEXT, 8, '0')
FROM GENERATE_SERIES(1, 50) i;

-- Inserir dados na tabela PRODUTO
INSERT INTO PRODUTO (ID,NOME, DESCRICAO, PRECO_UNITARIO, ID_FORNECEDOR)
SELECT 
i,
    'Produto ' || i,
    'Descricao do Produto ' || i,
    RANDOM() * 100 + 1,
    (RANDOM() * 49+1)::INTEGER
FROM GENERATE_SERIES(1, 200) i;

-- Inserir dados na tabela COMPRA
INSERT INTO COMPRA (ID,ID_CLIENTE, DATA, HORA, NFE)
SELECT 
i,
    (RANDOM() * 499 + 1)::INTEGER * 2, 
    NOW()::DATE - (RANDOM() * 365)::INTEGER,
    NOW()::TIME - (RANDOM() * 86400)::INTEGER * INTERVAL '1 second',
    'NFE-' || LPAD((RANDOM() * 100000)::INTEGER::TEXT, 6, '0')
FROM GENERATE_SERIES(1, 1000) i;

-- Inserir dados na tabela COMPRA
INSERT INTO ITEM_COMPRA (ID,ID_COMPRA, ID_PRODUTO, QUANTIDADE)
SELECT 
    i,
    (RANDOM() * 499 + 1)::INTEGER, 
    (RANDOM() * 48 + 1)::INTEGER, 
    (RANDOM() * 45 + 1)::INTEGER
FROM GENERATE_SERIES(1, 1000) i;

-- Inserir dados na tabela DEVOLUCAO
INSERT INTO DEVOLUCAO (ID,DATA, ID_ITEM_COMPRA)
SELECT 
i,
    NOW()::DATE - (RANDOM() * 30)::INTEGER,
    (RANDOM() * 200 + 1)::INTEGER
FROM GENERATE_SERIES(1, 200) i;

-- Inserir dados na tabela ENTREGA
INSERT INTO ENTREGA (ID,DATA, ID_ENTREGADOR, ID_COMPRA)
SELECT 
i,
    NOW()::DATE - (RANDOM() * 30)::INTEGER,
    (RANDOM() * 49 + 1)::INTEGER,
     (RANDOM() * 999 + 1)::INTEGER
FROM GENERATE_SERIES(1, 25) i;