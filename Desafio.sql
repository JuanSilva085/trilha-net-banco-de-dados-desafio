--1
SELECT 
  Nome, 
  Ano
FROM Filmes

--2
SELECT 
 Nome,
 Ano,
 Duracao
FROM Filmes
ORDER BY Ano 

--3
SELECT 
  Nome,
  Ano,
  Duracao
FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT
 Nome,
 Ano,
 Duracao
FROM Filmes WHERE Ano = 1997

--5
SELECT 
  Nome,
  Ano,
  Duracao
FROM Filmes WHERE Ano > 2000

--6
SELECT
 Nome,
 Ano,
 Duracao
FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

--7 
SELECT 
Ano,
COUNT(*) Quantidade 
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC


--8
 SELECT 
  Id,
  PrimeiroNome,
  UltimoNome,
  Genero
 FROM Atores WHERE Genero = 'M'

 --9
  SELECT 
  Id,
  PrimeiroNome,
  UltimoNome,
  Genero
 FROM Atores WHERE Genero = 'F'
 ORDER BY PrimeiroNome

 --10
SELECT F.Nome AS Nome, G.Genero AS Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id


--11
SELECT F.Nome AS Nome, G.Genero AS Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'


--12
SELECT Filmes.Nome AS Nome, Atores.PrimeiroNome AS PrimeiroNome,
Atores.UltimoNome AS UltimoNome, ElencoFilme.Papel AS Papel
FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.Id

