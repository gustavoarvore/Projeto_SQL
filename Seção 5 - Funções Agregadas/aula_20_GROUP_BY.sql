-- exemplo 1

select state, count(*) as contagem
from sales.customers
group by state
order by contagem desc

-- exemplo 2

select state, professional_status, count(*) as contagem
from sales.customers
group by 1, 2
order by contagem desc

-- exemplo 3

select distinct state
from sales.customers

select state 
from sales.customers
group by state
