/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT 
CAST(
	CAST(sum( NOTA_CIENCIAS_HUMANAS	 ) AS DECIMAL) / 
	CAST(sum(case when PRESENCA_CIENCIAS_HUMANAS = 1 then qtd end) AS DECIMAL)
	AS NUMERIC(15,2)
) AS NOTA_CIENCIAS_HUMANAS,

CAST(
	CAST(sum(case when PRESENCA_CIENCIAS_NATURAIS = 1 then NOTA_CIENCIAS_NATURAIS	 end) AS DECIMAL) / 
	CAST(sum(case when PRESENCA_CIENCIAS_NATURAIS = 1 then qtd end) AS DECIMAL)
	AS NUMERIC(15,2)
) AS NOTA_CIENCIAS_NATURAIS,
CAST(
	CAST(sum(case when PRESENCA_LINGUA = 1 then NOTA_LINGUAGEM	 end) AS DECIMAL) / 
	CAST(sum(case when PRESENCA_LINGUA = 1 then qtd end) AS DECIMAL)
	AS NUMERIC(15,2)
) AS NOTA_CIENCIAS_NATURAIS,
CAST(
	CAST(sum(case when PRESENCA_MATEMATICA = 1 then NOTA_MATEMATICA	 end) AS DECIMAL) / 
	CAST(sum(case when PRESENCA_MATEMATICA = 1 then qtd end) AS DECIMAL)
	AS NUMERIC(15,2)
) AS NOTA_MATEMATICA
FROM [DW_ENEM].[dbo].[fEnemsumarizada]
select 

cast(
	CAST(sum(case when PRESENCA_CIENCIAS_NATURAIS = 1 then qtd end) AS DECIMAL) /
	CAST(sum( qtd) AS DECIMAL) * 100
as decimal(15,1)) as presenca_ciencias_naturais_matematica,
cast(
	CAST(sum(case when PRESENCA_CIENCIAS_HUMANAS = 1 then qtd end) AS DECIMAL) /
	CAST(sum( qtd) AS DECIMAL) * 100
as decimal(15,1)) as presenca_ciencias_humanas_linguagem

FROM [DW_ENEM].[dbo].[fEnemsumarizada] 