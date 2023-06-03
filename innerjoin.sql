USE bdLivraria



--1.O nome dos livros ao lado do nome das editoras e do nome dos autores ​
SELECT nomeLivro, nomeEditora, nomeAutor  FROM tbLivro
LEFT JOIN tbEditora ON tbEditora.codEditora = tbLivro.codEditora
LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor

--2.O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for “Cia das Letras” 
SELECT nomeLivro, nomeAutor, nomeEditora  FROM tbLivro
LEFT JOIN tbEditora ON tbEditora.codEditora = tbLivro.codEditora
LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor
WHERE nomeEditora LIKE 'Companhia das Letras%'

--3.O nome dos livros ao lado dos nomes dos autores, somente dos livros que não forem do autor “Érico Veríssimo” 
SELECT nomeLivro, nomeAutor FROM tbLivro
LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor
WHERE nomeAutor <> 'Érico Veríssimo'

--4.Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem livros cadastrados 
SELECT nomeAutor, nomeLivro FROM tbLivro
RIGHT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor

--5.Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem autores cadastrados 
SELECT nomeLivro, nomeAutor FROM tbLivro
LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor

--6.O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou não livro publicado, e indiferente do livro pertencer a algum autor.
SELECT nomeAutor, nomeLivro FROM tbLivro
FULL JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor

--7.A editora Ática irá publicar todos os títulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora Ática. 
SELECT nomeLivro, nomeEditora  FROM tbLivro
LEFT JOIN tbEditora ON tbEditora.codEditora = tbLivro.codEditora
WHERE nomeEditora LIKE 'Ática%'

--8.Somente os nomes dos autores que não tem livros cadastrados.
SELECT nomeAutor, nomeLivro FROM tbLivro
RIGHT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor
WHERE nomeLivro IS NULL

--9.Os nomes dos gêneros que não possuem nenhum livro cadastrado. 
SELECT nomeGenero, nomeLivro FROM tbLivro
RIGHT JOIN tbGenero ON tbGenero.codGenero = tbLivro.codGenero
WHERE nomeLivro IS NULL
