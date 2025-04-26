use bibilioteca;

select * from usuarios;
select * from livros;
select * from autores;
select * from emprestimos;

-- INNER JOIN entre várias tabelas

-- Abaixo, listagem do nome do usuário, título, autor e data de empréstimo de livros:
select
	usuarios.nomeUsuario as 'Usuário',
    livros.titulo as 'Título',
    autores.nomeAutor as 'Autor',
    emprestimos.dataEmprestimo as 'Data do Empréstimo'
from emprestimos
inner join usuarios on emprestimos.idUsuario = usuarios.idUsuario
inner join livros on emprestimos.idLivro = livros.idLivro
inner join autores on livros.idAutor = autores.idAutor;