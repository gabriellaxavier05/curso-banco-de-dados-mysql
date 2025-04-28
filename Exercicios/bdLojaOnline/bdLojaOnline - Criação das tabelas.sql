-- criação do BD
create database lojaOnline;

use lojaOnline;


-- criação das tabelas

create table clientes (
	idCliente int not null auto_increment,
    nomeCliente varchar(100) not null,
    emailCliente varchar(130) not null,
    cidade varchar(100) not null,
    primary key (idCliente)
);

create table produtos (
	idProduto int not null auto_increment,
    nomeProduto varchar(100) not null,
    preco decimal(10,  2) not null,
    estoque int not null,
    categoriaProduto varchar(60) not null,
    primary key (idProduto)
);