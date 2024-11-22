-- Para usar a tbcadastro:
use cadastro;

-- Inserindo dados na tabela:
insert into pessoas
values
(default, 'Claudio', '1975-04-22', 'M', '99.0', '2.15', 'Brasil'),
(default, 'Pedro', '1999-12-03', 'M', '87.0', '2', default),
(default, 'Janaina', '1987-11-12', 'F', '75.4', '1.66', 'EUA');

select * from pessoas;