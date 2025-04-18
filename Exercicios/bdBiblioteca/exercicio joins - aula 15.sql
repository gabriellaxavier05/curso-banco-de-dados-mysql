use biblioteca;

select * from autores;
select * from livros;
select * from emprestimos;

-- 1) Listar os títulos dos livros com o nome do autor
select livros.titulo as 'Livro', autores.nomeAutor as 'Autor'
from livros
inner join autores on livros.idAutor = autores.idAutor;

-- 2) Listar todos os livros (à esquerda), mesmo que nenhum empréstimo tenha sido feito
select livros.titulo as 'Livro', emprestimos.idEmprestimo
from livros
left join emprestimos on livros.idLivro = emprestimos.idLivro;

-- 3) Listar todos os empréstimos (à direita) e seus usuários (à esquerda)
select usuarios.nomeUsuario as 'Usuário', emprestimos.idEmprestimo
from usuarios
right join emprestimos on usuarios.idUsuario = emprestimos.idUsuario;

-- 4) Usando UNION (alternativa para fazer tipo um full join)
select livros.titulo as 'Livro', emprestimos.idEmprestimo
from livros
left join emprestimos on livros.idLivro = emprestimos.idLivro

union

select livros.titulo as 'Livro', emprestimos.idEmprestimo
from livros
right join emprestimos on livros.idLivro = emprestimos.idLivro;