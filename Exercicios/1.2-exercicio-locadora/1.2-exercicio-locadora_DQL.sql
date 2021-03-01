--comandos DQL Data Query Language

use Locadora;

--exemplos

--mostra as colunas idVeiculo, DataInicio da tabela Aluguel
select idVeiculo, DataInicio from Alugueis;

--mostra todas as colunas da tabela Alugueis
select * from Alugueis;

--mistura tudo da tabela Alugueis com a tabela Clientes
select * from Alugueis
inner join Clientes 
on Alugueis.idCliente = Clientes.idCliente;

--mistura algumas colunas da tabela Alugueis com algumas colunas da tabela Clientes 
select idAluguel, idVeiculo, Clientes.idCliente, Nome from Alugueis
inner join Clientes
on Alugueis.idCliente = Clientes.idCliente;

--a 'tag' as(alias) altera o nome da coluna somente para a exibicao
select idAluguel as Numero, Nome as Parceiro from Alugueis 
inner join Clientes 
on Alugueis.idCliente = Clientes.idCliente;

--se a palavra for reservada usar []
--left joi pega td da tabela da esquerda e pega itens relacionados da direita
--rigth joi o contrario


--exercicio 1 DQL
select C.Nome as Clientes, M.Nome as Modelos, A.DataInicio, A.DataFim
from Alugueis as A
inner join Clientes as C
on A.idCliente = C.idCliente
inner join Veiculos
on A.idVeiculo = Veiculos.idVeiculo
inner join Modelos as M
on Veiculos.idModelo = M.idModelo;

--exercicio 2 DQL
select C.Nome as Clientes, M.Nome as Modelos, A.DataInicio, A.DataFim
from Alugueis as A
inner join Clientes as C
on A.idCliente = C.idCliente
inner join Veiculos
on A.idVeiculo = Veiculos.idVeiculo
inner join Modelos as M
on Veiculos.idModelo = M.idModelo
where C.Nome like 'Rafael%';
