-- exemplo 1

select '2021-10-01'::date - '2021-02-01'::date
select nome_coluna::date
from nome_tabela


-- exemplo 2

select '100'::numeric - '10'::numeric


-- exemplo 3

select replace(112122::text,'1','A')

-- exemplo 4

select cast ('2021-10-01' as date) - cast ('2021-02-01' as date)
