--comandos DQL Data Query Language

use Clinica;

--1
select Nome, CRMV, RazaoSocial
from Veterinarios as V
inner join Clinicas as C
on V.idClinica = C.idClinica;

--2
select Descricao as Raca
from Racas 
where Descricao like 'S%';

--3
select Descricao as TipoPet
from TiposPets
where Descricao like '%O';

--4
select P.Nome as Pet, D.Nomes as Donos
from Pets as P
inner join Donos as D
on P.idDono = D.idDono;

--5
select A.Descricao as Atendimento, V.Nome as Veterinario, Pets.Nome as Pet,
Racas.Descricao as Raca, TiposPets.Descricao as Tipo, Donos.Nomes as Dono,
Clinicas.RazaoSocial as Clinica
from Atendimentos as A
inner join Veterinarios as V
on A.idVeterinario = V.idVeterinario
inner join Pets
on A.idPet = Pets.idPet
inner join Racas 
on Pets.idRaca = Racas.idRaca
inner join TiposPets
on Racas.idTipoPet = TiposPets.idTipoPet
inner join Donos
on Pets.idDono = Donos.idDono
inner join Clinicas
on V.idClinica = Clinicas.idClinica;
