--comandos DQL

USE Filmes;

SELECT * FROM Generos;

-- * = TUDO (ALL)
SELECT * FROM Filmes;

-- listar todos os alugueis mostrando as datas de in�cio e fim, 
-- o nome do cliente que alugou e nome do modelo do carro
-- INNER JOIN
-- AS (ALIAS)
SELECT Filmes.idFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela1
INNER JOIN Generos -- Tabela2
ON Filmes.idGenero = Generos.idGenero;

-- LEFT JOIN
SELECT Filmes.idFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela1
LEFT JOIN Generos -- Tabela2
ON Filmes.idGenero = Generos.idGenero;

-- RIGHT JOIN
SELECT Filmes.idFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela1
RIGHT JOIN Generos -- Tabela2
ON Filmes.idGenero = Generos.idGenero;

-- FULL OUTER JOIN
SELECT Filmes.idFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela1
FULL OUTER JOIN Generos -- Tabela2
ON Filmes.idGenero = Generos.idGenero;