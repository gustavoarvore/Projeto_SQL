-- exemplo 1

select
	customer_id,
	first_name,
	professional_status,
	professional_status = 'clt' as cliente_clt
from sales.customers