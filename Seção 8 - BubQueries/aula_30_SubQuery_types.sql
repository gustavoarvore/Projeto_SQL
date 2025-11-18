-- exemplo 1: subquery WHERE

select *
from sales.products
where price = (select min(price) from sales.products)

select min(price) from sales.products


-- exemplo 2

with alguma_tabela as (
select 
	professional_status,
	(current_date - birth_date)/365 as idade
from sales.customers 

)
select 
	professional_status,
	avg(idade) as idade_media
from alguma_tabela
group by professional_status


-- exemplo 3

with alguma_tabela as (
select 
	professional_status,
	(current_date - birth_date)/365 as idade
from sales.customers 

)
select 
	professional_status,
	avg(idade) as idade_media
from (
		select 
			professional_status,
			(current_date - birth_date)/365 as idade
		from sales.customers  
	) as alguma_tabela
group by professional_status


-- exemplo 4

select
	fun.visit_id,
	fun.visit_page_date,
	sto.store_name,
	(
		select count (*)
		from sales.funnel as fun2
		where fun2.visit_page_date <= fun.visit_page_date
			and fun2.store_id = fun.store_id
	) as visitas_acumuladas
from sales.funnel as fun
left join sales.stores as sto
	on fun.store_id = sto.store_id
order by sto.store_name, fun.visit_page_date