-- exemplo 1

select *
from sales.products
where price >= 100000 and price <= 200000

select *
from sales.products
where price between 100000 and 200000

-- exemplo 2

select *
from sales.products
where price < 100000 or price > 200000

select *
from sales.products
where price not between 100000 and 200000

-- exemplo 3

select *
from sales.products
where brand = 'HONDA' or brand = 'TOYOTA' or brand = 'RENAULT'

select *
from sales.products
where brand in ('HONDA', 'TOYOTA', 'RENAULT')

-- EXEMPLO 4

select distinct first_name
from sales.customers
where first_name = 'ANA'

select distinct first_name
from sales.customers
where first_name like 'ANA%'

-- exemplo 5

select distinct first_name
from sales.customers
where first_name ilike 'ana%'


