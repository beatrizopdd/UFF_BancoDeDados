-- SCHEMA: e2_ded
-- DROP SCHEMA IF EXISTS e2_ded ;

-- O engenheiro-chefe comumente submete consultas que retornam as despesas com valor igual a R$100.000,00.
SELECT *
FROM e2_ded.Despesa D
WHERE D.Valor = 100000;

-- Existe uma rotina de controle de projeto que precisa do total de despesas de um dado projeto a partir do seu valor de IdProjeto.
SELECT D.IdProjeto, sum(D.Valor) as DespesaTotal
FROM e2_ded.Despesa D
WHERE D.IdProjeto = x
GROUP BY D.IdProjeto;

-- Ao final de cada mês é gerado um relatório apresentando o total de despesas por projeto da cidade do Rio de Janeiro.
SELECT P.IdProjeto, sum(D.Valor) as DespesaTotal
FROM e2_ded.Projeto P
JOIN e2_ded.Despesa D ON P.IdProjeto = D.IdProjeto
WHERE P.cidade = "Rio de Janeiro"
GROUP BY P.IdProjeto;

-- Os dados da tabela Despesa são usados diariamente por rotinas analíticas que fazem cruzamentos de dados e respondem perguntas como: Há despesas de material de consumo pagas pela contratante (TipoDespesa = "Contratante")?
SELECT *
FROM e2_ded.Despesa D
WHERE D.TipoDespesa = "Contratante";