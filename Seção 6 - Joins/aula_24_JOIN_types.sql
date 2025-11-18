-- exemplo 1

select * from temp_tables.tabela_1;
select * from temp_tables.tabela_2;



select t1.cpf, t1.name, t2.state
from temp_tables.tabela_1 as t1 
inner join temp_tables.tabela_2 as t2
	on t1.cpf = t2.cpf


-- Inner join cria uma interseção entre as tabelas selecionadas, evitando as linhas com null 