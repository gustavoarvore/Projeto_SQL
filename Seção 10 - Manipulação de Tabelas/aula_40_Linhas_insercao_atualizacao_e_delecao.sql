-- exemplo 1

create table temp_tables.profissoes (
	professional_status varchar,
	status_professional varchar
);

insert into temp_tables.profissoes
(professional_status, status_professional)

values
('freelancer', 'freelancer'),
('retired', 'aposentado(a)'),
('clt', 'clt'),
('self_employed', 'automato(a)'),
('other', 'outro'),
('businessman', 'empresario'),
('civil_servant', 'fuincionario publico(a)'),
('studant', 'estudante')



select * from temp_tables.profissoes

insert into temp_tables.profissoes
(professional_status, status_professional)

values
('unemployed', 'desemregado(a)'),
('trainee', 'estagiario')


-- exemplo 2

update temp_tables.profissoes
set professional_status = 'intern'
where status_professional = 'estagiario'

select * from temp_tables.profissoes

-- exemplo 3

delete from temp_tables.profissoes
where status_professional = 'desempregado(a)'
or status_professional = 'estagiario'