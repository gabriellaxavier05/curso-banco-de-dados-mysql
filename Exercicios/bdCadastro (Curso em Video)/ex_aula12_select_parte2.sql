use cadastro;

-- Usando o operador LIKE
-- Exibindo todos os registros de 'cursos' que começam com a letra P:
select * from cursos
where nome LIKE 'P%';


-- WILDCARDS (brincando com a posição do %)
-- Exibindo todos os registros de 'cursos' que terminam com a letra A:
select * from cursos
where nome LIKE '%A';

-- Exibindo todos os registros de 'cursos' que tenham a letra A em qualquer lugar em 'nome':
select * from cursos
where nome LIKE '%A%';

-- Exibindo todos os registros de 'cursos' que NÃO tenham a letra A em qualquer lugar em 'nome':
select * from cursos
where nome NOT LIKE '%A%';

-- Exibindo todos os registros de 'cursos' que tenham o nome começando com PH e terminando com P:
select * from cursos
where nome LIKE 'PH%P';

-- Exibindo todos os registros de 'cursos' que tenham o nome começando com PH e tendo a letra P em algum lugar depois disso:
select * from cursos
where nome LIKE 'PH%P%';

-- Exibindo todos os registros de 'cursos' que começam com PH, terminam com P e tenham algum caractere em seguiga:
select * from cursos
where nome LIKE 'PH%P_';
/*
Obs.:
1 _ => 1 caractere
2 __ => 2 caracteres
*/

-- Exibindo registros de 'cursos' que começam com PH, tenham 2 caracteres quaisquer depois e depois tenham a letra T
select * from cursos
where nome LIKE 'P__T%';

-- Exibindo registros de 'gafanhotos' que tenham 'Silva' em qualquer lugar do nome
select * from gafanhotos
where nome LIKE '%Silva%';

-- Exibindo registros de 'gafanhotos' que tenham o sobrenome 'Silva'
select * from gafanhotos
where nome LIKE '%_Silva%';


-- DISTINCT
-- Exibindo a nacionalidade das pessoas da tabela 'gafanhotos' sem duplicidade de registros
select distinct nacionalidade from gafanhotos
order by nacionalidade;


-- AGREGAÇÕES
-- Contando quantos registros tem a tabela 'cursos':
select count(*) from cursos;

-- Contando quantos registros na tabela 'cursos' tem a carga maior que 40: 
select count(*) from cursos
where carga > 40;

-- Retornando a maior carga horária de 'cursos':
select max(carga) from cursos;

-- Retornando o menor número de aulas de 'cursos':
select min(totaulas) from cursos;

-- Somando os valores da coluna 'totaulas' de 'cursos':
select sum(totaulas) from cursos;

-- Retornando a média de valores da coluna 'totaulas' de 'cursos':
select avg(totaulas) from cursos;