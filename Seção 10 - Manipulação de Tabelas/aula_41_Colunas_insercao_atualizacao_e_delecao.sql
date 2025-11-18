-- exemplo 1

alter table sales.customers
add customer_age int

select * from sales.customers limit 10

update sales.customers
set customer_age = datediff('years', birth_date, current_date)
where true

-- exemplo 2

alter table sales.customers
alter column customer_age type varchar

-- exemplo 3

alter table sales.customers
rename column customer_age to age

select * from sales.customers

-- exemplo 4

alter table sales.customers
drop column age