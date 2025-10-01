-- select distinct coluna_1, coluna_2, coluna_3
-- from schema_1.tabela_1

-- exemplo 1

-- select brand
-- from sales.products --333 linhas(rows)

--exemplo 2

-- select distinct brand
-- from sales.products --40 linhas(rows)

--exemplo 3

-- select distinct brand, model_year
-- from sales.products --184 linhas(rows)

--exemplo 4

-- select distinct brand, model_year, price
-- from sales.products --329 linhas(rows)

--resumo: o comando DISTINCT é usado para remover linhas duplicadas e mostrar apenas as distintas. Entretanto, quanto mais colunas adicionadas em "SELECT", mais linhas teremos porque haverá uma soma das linhas distintas de cada coluna. Usado bastante em etapas de exploração de dados.
