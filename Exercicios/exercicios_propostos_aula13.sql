use cadastro;

-- 1) Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos. (Quantos são programadores? E analistas? E professores?)
select prof, count(*) from gafanhotos
group by prof;

-- 2) Quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005?
select count(nome) from gafanhotos
where nascimento > '2005-01-01';

-- 3) Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade.
select nacionalidade, count(*) from gafanhotos
where nacionalidade <> 'BRASIL'
group by nacionalidade
having count(*) > 3;

-- 4) Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média da altura de todos cadastrados.
select nome, peso, altura from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);

select avg(altura) as 'Média altura' from gafanhotos;