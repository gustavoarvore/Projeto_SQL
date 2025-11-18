-- exemplo 1

select *
from sales.customers
limit 10


select
	email,
	birth_date,
	(current_date = birth_date) / 365 as idade_do_cliente
from sales.customers

-- exemplo 2

select
	email,
	birth_date,
	(current_date - birth_date) / 365 as idade_do_cliente
from sales.customers
order by idade_do_cliente

-- exemplo 3

select
	first_name || ' ' || last_name as nome_completo
from sales.customers
