-- Modificações a serem feitas nas tabelas

use lojaOnline;

-- adicionando uma nova coluna na tb clientes:
alter table clientes
add column telefoneCliente varchar(12) not null;

select * from clientes;


-- removendo a coluna 'categoriaProduto' da tb produtos:
alter table produtos
drop column categoriaProduto;

select * from produtos;


-- Atualizando o estoque de um produto específico
update produtos
set estoque = 50
where idProduto = 5;


-- Apagando um cliente específico da tb clientes pelo seu código
delete from clientes
where idCLiente = 3;

-- Limpando todos os dados da tabela itensPedidos sem apagar sua estrutura:
truncate itensPedido;

select * from itensPedido;


-- Selecionando todos os produtos cujo preço seja entre R$ 50 - R$ 150:
select nomeProduto, preco from produtos
where preco between 50 and 150
order by preco;


-- Listando todos os clientes que moram em SP, RJ e BH:
select nomeCliente, cidade from clientes
where cidade in ('São Paulo', 'Rio de Janeiro', 'Belo Horizonte');


-- Listando pedidos feitos em datas específicas:
select idPedido, dataPedido from pedidos
where dataPedido between '2025-04-01' and '2025-04-12';


-- Buscando por produtos que comecem com a letra C:
select nomeProduto from produtos
where nomeProduto LIKE 'C%';


-- Listando os clientes que contenham a letra A em qualquer posição:
select idCliente, nomeCliente from clientes
where nomeCliente LIKE '%A%';


-- Calculando o valor médio dos produtos da tb produtos:
select avg(preco) from produtos;


-- Listando quantos pedidos cada cliente fez usando group by:
select count(idCliente) from pedidos
group by idCliente;


-- Listando as cidades distintas dos clientes cadastrados:
select distinct cidade from clientes
order by cidade;


-- Listando as cidades que possuem + de 1 cliente cadastrado:
select cidade from clientes
having count(nomeCliente) > 1;


-- INNER JOIN entre pedidos e clientes para mostrar o nome do cliente e a data do pedido
select pedidos.dataPedido as 'Data do Pedido', clientes.nomeCliente as 'Nome do Cliente'
from clientes
inner join pedidos on clientes.idCliente = pedidos.idCliente;


-- INNER JOIN entre as tbs itensPedidos, produtos e pedidos para listar o nome dos produtos pedidos, a data do pedido e a quantidade de produtos do pedido:
select produtos.nomeProduto, pedidos.dataPedido, itenspedido.quantidade
from produtos
inner join itenspedido on produtos.idProduto = itenspedido.idProduto
inner join pedidos on itenspedido.idPedido = pedidos.idPedido;