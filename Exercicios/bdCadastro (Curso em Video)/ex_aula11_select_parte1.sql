use cadastro;

-- Selecionando todos os registros da tabela cursos
select * from cursos;

-- Ordenando crescentemente os registros da tabela 'cursos' pela coluna 'nome'
select * from cursos
order by nome asc;

/*
Outra forma de ordenar os registros em ordem crescente pela coluna 'nome':
select * from cursos
order by nome;
*/

-- Ordenando decrescentemente os registros da tabela 'cursos' pela coluna 'nome':
select * from cursos
order by nome desc;

-- Selecionando colunas:
select nome, carga, ano from cursos
order by nome;

-- Criando uma ordem de exibição de resultados pelas colunas especificadas:
select ano, nome, carga from cursos
order by ano, nome; -- A ordenação será primeiro pela coluna 'ano' e depois pela coluna 'nome'

-- Selecionando linhas:
select * from cursos
where ano = '2016'
order by nome;
/*
Acima, selecione todos os registros da tabela 'cursos' onde 'ano' seja igual a 2016 e ordene os 
registros crescentemente pela coluna 'nome'
*/

-- Selecionando linhas e colunas:
select nome, descricao from cursos
where ano <= '2015'
order by nome;
/*
Acima, selecione as colunas 'nome' e 'descricao' da tabela 'cursos' onde 'ano' seja igual ou menor a 2015 e ordene
os registros crescentemente pela coluna 'nome'
*/

-- Selecionando intervalos:
select nome, ano from cursos
where ano between 2014 and 2016;
/*
Acima, selecione os registros das colunas 'nome' e 'ano' da tabela 'cursos' onde 'ano' seja ENTRE 2014 e 2016
*/

-- Selecionando valores específicos:
select id, nome, ano from cursos
where ano in (2014, 2016)
order by nome;
/*
Acima, selecione os registros das colunas 'idcurso' e 'nome' da tabela 'cursos' onde 'ano' seja em 2014 e 2016 e os
resultados sejam ordernados crescentemente pela coluna nome.
*/

-- Combinando testes:
select * from cursos
where carga > 35 and totaulas < 30
order by nome;
/*
Acima, selecione todos os registros da tabela 'cursos' onde 'carga' seja maior que 35 e 'totaulas' seja menor que 30,
ordenando crescentemente pela coluna nome
*/