/* Criando o 1o banco de dados da aula */
create database bdCadastro;

/* Usando o banco de dados criado */
use bdCadastro;

/* Criando as tabelas */
create table tbPessoas (
	nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);

/* Descrevendo a tabela criada */
describe tbPessoas;