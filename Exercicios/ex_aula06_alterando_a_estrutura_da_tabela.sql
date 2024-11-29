use cadastro;

-- para descrever a tabela
describe pessoas;

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
