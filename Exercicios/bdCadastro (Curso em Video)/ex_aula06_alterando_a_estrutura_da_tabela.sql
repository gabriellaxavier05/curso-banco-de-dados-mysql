use cadastro;

-- para descrever a tabela
describe pessoas; /* ou desc pessoas; */

-- alterando a tb pesssoas adicionando uma nova coluna
alter table pessoas
add column profissao varchar(10);

-- apagando a coluna criada na tabela
alter table pessoas
drop column profissao;

select * from pessoas;

-- modificando a posição da coluna 'profissao' na tabela pessoas
alter table pessoas
add column profissao varchar(10) after nome;
-- o comando acima adicionará a coluna 'profissao' depois da coluna 'nome'

-- adicionando uma nova coluna na tabela e definindo-a como a 1a
alter table pessoas
add column codigo int first;

-- modiificando a definições (tamanho dos tipos de dados)
alter table pessoas
modify column profissao varchar(20) not null default ' ';
-- o comando acima aumenta o tamanho do varchar para 20. not null é uma constraint que não permite campos nulos. default ' ' é para não ter conflitos de constraints

-- mudando o nome da coluna
alter table pessoas
change column profissao prof varchar(20) not null default ' ';

-- renomeando a tabela pessoas para 'gafanhotos'
alter table pessoas
rename to gafanhotos;

desc gafanhotos;

-- criando uma nova tabela
create table if not exists cursos (
	nome varchar(3) not null unique, -- unique não permitirá 2 registros com o mesmo nome
    descricao text,
    carga int unsigned, -- unsigned não permitirá valores com sinal (-)
    totaulas int unsigned, -- unsigned não permitirá valores com sinal (-)
    ano year default '2016' -- se o ano não for especificado, começará valendo a partir de 2016
) default charset = utf8mb4;
-- o comando acima criará a tabela cursos se ela NÃO existir

desc cursos;

-- alterando a tabela cursos adicionando a coluna idcurso
alter table cursos
add column idcurso int first;

-- alterando a tabela cursos definindo a coluna idcurso como chave primária (criando uma constraint)
alter table cursos
add primary key (idcurso);


-- criando registros para apagar uma tabela
create table if not exists teste(
	id int,
    nome varchar(100),
    idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;

drop table if exists teste; -- se a tabela teste existir, ela será apagada