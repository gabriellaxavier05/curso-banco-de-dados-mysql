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