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

-- O código abaixo é o mesmo resultado que o código anterior.
select nome, carga from cursos
where carga = 40;