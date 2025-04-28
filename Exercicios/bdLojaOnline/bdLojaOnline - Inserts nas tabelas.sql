-- inserção de dados nas tabelas

use lojaOnline;

insert into clientes (nomeCliente, emailCliente, cidade) values
('Ana Souza', 'ana.souza@email.com', 'São Paulo'),
('Bruno Lima', 'bruno.lima@email.com', 'Rio de Janeiro'),
('Carla Mendes', 'carla.mendes@email.com', 'Belo Horizonte'),
('Diego Rocha', 'diego.rocha@email.com', 'Curitiba'),
('Eduarda Silva', 'eduarda.silva@email.com', 'Salvador');

select * from clientes;


insert into produtos (nomeProduto, preco, estoque, categoriaProduto) values
('Camiseta Polo', 79.90, 50, 'Roupas'),
('Tênis esportivo', 199.90, 30, 'Calçados'),
('Relógio Digital', 149.90, 20, 'Acessórios'),
('Mochila Escolar', 99.90, 25, 'Bolsas'),
('Fones de Ouvido', 89.90, 40, 'Eletrônicos');

select * from produtos;


insert into pedidos (idCliente, dataPedido, total) values
(1, '2025-04-10', 279.80),
(3, '2025-04-12', 89.90),
(5, '2025-04-15', 149.90);

select * from pedidos;


insert into itensPedido (idPedido, idProduto, quantidade, precoUnitario) values
(1, 1, 2, 79.90),
(1, 2, 1, 199.90),
(3, 5, 1, 89.90),
(2, 3, 1, 149.90);

select * from itensPedido;