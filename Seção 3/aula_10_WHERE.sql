select coluna_1, coluna_2, coluna_3
from schema_1.tabela_1
where condicao_x=true

-- exemplo 1

select email, state
from sales.customers
where state = 'SC'

select distinct state 
from sales.customers

-- exemplo 2

select email, state
from sales.customers
where state = 'SC' or state = 'MS'

-- exemplo 3

select email, state, birth_date
from sales.customers
where (state = 'SC' or state = 'MS') and birth_date < '1995-12-28'

select distinct birth_date
from sales.customers

