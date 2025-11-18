-- exemplo 1

select
	customer_id,
	datediff('years', birth_date, current_date) idade_cliente
	into temp_tables.customers_age
from sales.customers

select *
from temp_tables.customers_age

-- exemplo 2

select distinct professional_status
from sales.customers

create table temp_tables.profissoes (
	professional_status varchar,
	status_professional varchar
)

insert into temp_tables.profissoes
(professional_status, status_professional)

values
('freelancer', 'freelancer'),
('retired', 'aposentado'),
('self_employed', 'automato(a)'),
('clt', 'clt')

select * from temp_tables.profissoes

-- exemplo 3

drop table temp_tables.profissoes