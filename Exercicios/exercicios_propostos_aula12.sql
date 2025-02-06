/*

Exercícios propostos ao final da aula:

1. Uma lista com todos os nomes das gafanhotas
2. Uma lista com todos os dados de todos aqueles que nasceram entre 01/01/2000 e 31/12/2015
3. Uma lista com os dados de todos os homens que trabalham como programadores
4. Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciante com a letra J
5. Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 kg
6. Qual é a maior altura entre gafanhotos homens que moram no Brasil?
7. Qual é a média de peso dos gafanhotos cadastrados?
8. Qual é o menor peso entre gafanhotos mulheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/2000?
9. Quantas gafanhotos mulheres têm mais de 1.90 de altura?

*/

use cadastro;

select * from gafanhotos;

-- 1. Uma lista com todos os nomes das gafanhotas
select nome from gafanhotos
where sexo = 'F';

-- 2. Uma lista com todos os dados de todos aqueles que nasceram entre 01/01/2000 e 31/12/2015
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

-- 3. Uma lista com os dados de todos os homens que trabalham como programadores
select * from gafanhotos
where sexo = 'M' and prof = 'Programador';

-- 4. Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciante com a letra J
select nome from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome LIKE 'J%';

-- 5. Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 kg
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome LIKE '%Silva%' and nacionalidade <> 'Brasil' and peso < 100;

-- 6. Qual é a maior altura entre gafanhotos homens que moram no Brasil?
select max(altura) from gafanhotos
where nacionalidade = 'Brasil';

-- 7. Qual é a média de peso dos gafanhotos cadastrados?
select avg(peso) from gafanhotos;

-- 8. Qual é o menor peso entre gafanhotos mulheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/2000?
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade <> 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 9. Quantas gafanhotos mulheres têm mais de 1.90 de altura?
select count(*) from gafanhotos
where sexo = 'F' and altura > 1.90;