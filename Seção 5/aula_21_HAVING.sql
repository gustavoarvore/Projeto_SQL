-- exemplo 1

select
	state,
	count(*)
from sales.customers

group by state
having count(*) > 100
	and state <> 'MG'
order by count(*) desc