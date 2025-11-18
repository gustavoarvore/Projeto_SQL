-- exemplo 1

select count(*)
from sales.funnel

-- exemplo2

select *
from sales.funnel
limit 10

select count(paid_date)
from sales.funnel

-- exemplo 3

select count(distinct product_id)
from sales.funnel
where visit_page_date between '2021-01-01' and '2021-01-31'

-- exemplo 4

select min(price), max(price), avg(price)
from sales.products

-- exemplo 5

select max(price) from sales.products

select *
from sales.products
where price = (select max(price) from sales.products)

