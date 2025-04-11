create database biblioteca;

use biblioteca; -- pra usar o banco de dados

-- criando a tbAutores
create table autores (
	idAutor int auto_increment primary key, -- chave primária com código gerado automaticamente
    nomeAutor varchar(100) not null
);

-- criando a tbLivros
create table livros (
	idLivro int auto_increment primary key, -- chave primária com código gerado automaticamente
    titulo varchar(150) not null,
    anoPublicacao int not null,
    idAutor int not null,
    foreign key (idAutor) references autores (idAutor) -- chave estrangeira pra fazer ref. à tbAutores
);

-- criando a tbUsuarios
create table usuarios (
	idUsuario int auto_increment primary key, -- chave primária com código gerado automaticamente
    nomeUsuario varchar(150) not null,
    email varchar(150) not null
);

-- criando tbEmprestimos
create table emprestimos (
	idEmprestimo int auto_increment primary key, -- chave primária com código gerado automaticamente
    idUsuario int not null,
    idLivro int not null,
    foreign key (idUsuario) references usuario (idUsuario), -- chave estrangeira pra fazer ref. à tbUsuarios
    foreign key (idLivro) references livros (idLivro), -- chave estrangeira pra fazer ref. à tbLivros
    dataEmprestimo date,
    dataDevolucao date
);