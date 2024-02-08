desafio 1

SELECT Nome, Ano
 FROM Filmes

desafio2

SELECT Nome, Ano
FROM Filmes order by Ano asc

 desafio 3

 SELECT Nome, Ano, Duracao
 FROM Filmes where Nome = 'De volta para o Futuro'

 desafio 4

 SELECT Nome, Ano, Duracao
 FROM Filmes where Ano = 1997

 desafio 5

 SELECT Nome, Ano, Duracao
 FROM Filmes where Ano > 2000

 desafio 6

 SELECT Nome, Ano, Duracao
 FROM Filmes where Duracao > 100 and Duracao < 150 order by Duracao asc

 desafio 7

 SELECT Ano, COUNT(Ano) as Quantidade
 FROM Filmes group by Ano order by sum(Duracao) Desc

 desafio 8 

 SELECT Id, PrimeiroNome,UltimoNome, Genero
 FROM Atores where Genero = 'm'

 desafio 9

 SELECT Id, PrimeiroNome,UltimoNome, Genero
 FROM Atores where Genero = 'F' order by PrimeiroNome

 desafio 10

 SELECT dbo.Filmes.Nome, dbo.Generos.Genero from Filmes inner join dbo.FilmesGenero on dbo.Filmes.Id = dbo.FilmesGenero.IdFilme inner join dbo.Generos on dbo.FilmesGenero.IdGenero = dbo.Generos.Id

 desafio 11

SELECT dbo.Filmes.Nome, dbo.Generos.Genero 
from Filmes inner join dbo.FilmesGenero 
on dbo.Filmes.Id = dbo.FilmesGenero.IdFilme 
inner join dbo.Generos 
on dbo.FilmesGenero.IdGenero = dbo.Generos.Id 
where dbo.Generos.Genero = 'Mistério'


desafio 12

select dbo.Filmes.Nome, dbo.Atores.PrimeiroNome, dbo.Atores.UltimoNome, dbo.ElencoFilme.Papel 
from Filmes
inner join dbo.ElencoFilme on dbo.Filmes.id = dbo.ElencoFilme.Id
inner join dbo.Atores on dbo.ElencoFilme.IdAtor = dbo.Atores.Id