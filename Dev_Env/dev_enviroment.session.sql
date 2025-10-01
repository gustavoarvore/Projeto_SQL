select *
from sales.customers
where state = 'MG'
order by state 
limit 10




select 
    first_name,
    cpf,
    income
from sales.customers
order by income desc