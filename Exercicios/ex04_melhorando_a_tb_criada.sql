-- Recriando o banco de dados
create database cadastro
default character set utf8mb4 /* parâmetro */
default collate utf8mb4_general_ci; /* collation */
/* Obs.: o parâmetro e a collation criados acima são para uso e definição de caracteres do padrão utf8, de idiomas de língua latina. */
 
-- Para usar o bd
use cadastro;

-- Criando a tabela 'pessoas'
create table pessoas (
	id int NOT NULL auto_increment, /* Indica q a cada novo registro, o código identificador é por ordem de acréscimo. Ex.: 1, 2, ... */
	nome varchar(30) NOT NULL,
    nascimento date,
    sexo enum('M', 'F'), /* só aceita 'M' ou 'F' */
    peso decimal(5,2), /* espaço para 5 elementos, sendo 2 deles para DEPOIS da vírgula. Ex.: 102,03 */
	altura decimal(3,2), /* espaço para 3 elementos, sendo 2 deles para DEPOIS da vírgula. Ex.: 1,55 */
	nacionalidade varchar(20) default 'BRASIL', /* se ninguém digitar nada, por padrão define 'BRASIL' */
    primary key (id) /* define 'id' como chave primária da tabela */
) default charset = utf8mb4; /* para uso de caracteres do tipo UTF8 */