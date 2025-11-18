select *
from sales.products
order by price desc

-- exemplo 2

select distinct state
from sales.customers
order by state 

-- o comando ORDER BY puxa uma coluna e organiza ela em ordem crescente. Ao colocar DESC no fim, a ordem muda para decrescente

