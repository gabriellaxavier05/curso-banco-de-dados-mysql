use cadastro;

-- Distinguindo resultados da tabela 'cursos' pela coluna 'carga'
select distinct carga from cursos
order by carga;

-- Agrupando registros com GROUP BY
select carga from cursos
group by carga;

-- Agrupando e agregando
select carga, count(nome) from cursos
group by carga;

-- Contando quantos registros há em um agrupamento:
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;
 
 
-- Selecionando todos os registros da tb 'cursos' onde o totaulas é igual a 30
select * from cursos
where totaulas = 30;
-- ou
select carga, count(nome) from cursos
where totaulas = 30
group by carga;

-- Agrupando e agregando 2 (usando HAVING)
select carga, count(nome) from cursos
group by carga
having count(nome) > 3;
-- Acima, com o having será exibido apenas as cargas horárias que possuem + de 3 cursos.

-- O código abaixo é dá o mesmo resultado que o código anterior.
select nome, carga from cursos
where carga = 40;

-- Média de carga de cursos
select avg(carga) from cursos;

-- Selecione a carga e conte todos os registros da tbcursos que tenham ano maior que 2015, agrupe por carga e que tenha a carga maior que 36.6
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > 36.6;

-- O código abaixo é dá o mesmo resultado que o código anterior.
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos); -- carga acima da média