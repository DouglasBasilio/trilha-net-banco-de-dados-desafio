SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano FROM Filmes ORDER BY Ano;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

SELECT Nome FROM Filmes WHERE Ano = 1997;

SELECT Nome FROM Filmes WHERE Ano > 2000;

SELECT Nome, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

SELECT Ano, COUNT(*) AS QuantidadeFilmes FROM Filmes GROUP BY Ano ORDER BY QuantidadeFilmes DESC;

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.IDFilme = FG.IDFilme
INNER JOIN Generos AS G ON FG.IDGenero = G.IDGenero;

SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.IDFilme = FG.IDFilme
INNER JOIN Generos AS G ON FG.IDGenero = G.IDGenero
WHERE G.Genero = 'Mistério';

SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, P.Papel
FROM Filmes AS F
INNER JOIN Elenco AS E ON F.IDFilme = E.IDFilme
INNER JOIN Atores AS A ON E.IDAtor = A.IDAtor
INNER JOIN Papel AS P ON E.IDPapel = P.IDPapel;
