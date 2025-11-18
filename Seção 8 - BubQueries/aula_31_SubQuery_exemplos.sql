-- exemplo 1

with primeira_visita as (

	select customer_id, min(visit_page_date) as visita_1
	from sales.funnel
	group by customer_id
	
)

select
	visit_page_date,
	(fun.visit_page_date <> primeira_visita.visita_1) as lead_recorrente,
	count(*)
from sales.funnel as fun
left join primeira_visita
	on fun.customer_id = primeira_visita.customer_id
group by fun.visit_page_date, lead_recorrente
order by fun.visit_page_date desc, lead_recorrente


-- exemplo 2

with preco_medio as (

	select brand, avg(price) as preco_medio_da_marca
	from sales.products
	group by brand

)

select
	fun.visit_id,
	fun.visit_page_date,
	pro.brand,
	(pro.price *(1+fun.discount)) as preco_final,
	preco_medio.preco_medio_da_marca,
	((pro.price *(1+fun.discount)) - preco_medio.preco_medio_da_marca) as preco_vs_media
	
from sales.funnel as fun
left join sales.products as pro
	on fun.product_id = pro.product_id
left join preco_medio
	on pro.brand = preco_medio.brand