use cadastro;

-- Distinguindo resultados da tabela 'cursos' pela coluna 'carga'
select distinct carga from cursos
order by carga;

-- Agrupando registros com GROUP BY
select carga from cursos
group by carga;

-- Agrupando e agregando