use cadastro;

-- recriando a tabela cursos:
create table if not exists cursos (
	nome varchar(30) not null unique, -- unique não permitirá 2 registros com o mesmo nome
    descricao text,
    carga int unsigned, -- unsigned não permitirá valores com sinal (-)
    totaulas int unsigned, -- unsigned não permitirá valores com sinal (-)
    ano year default '2016' -- se o ano não for especificado, começará valendo a partir de 2016
) default charset = utf8mb4;
-- o comando acima criará a tabela cursos se ela NÃO existir

-- adicionando o campo id como o 1o
alter table cursos
add column id int primary key not null first;

-- inserindo novos dados na tabela 'cursos'
insert into cursos values
	('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
	('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
	('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
	('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
	('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
	('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
	('7', 'Word', 'Curso Completo de Word', '40', '30', '2016'),
	('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
	('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
	('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '12', '2018');
select * from cursos;

describe cursos;

-- modificando linhas 
update cursos
set nome = 'HTML5'
where id = '1';

update cursos
set nome = 'PHP', ano = '2015'
where id = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where  id = '5'
limit 1; -- limita o número de linhas a serem afetadas (no caso, 1).

-- apagando registros
delete from cursos
where id = '10';

-- apagando TODOS os registros da tabela
truncate cursos; -- ou truncate table cursos;