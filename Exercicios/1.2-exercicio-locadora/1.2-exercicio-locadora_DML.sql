--comandos DML Data Manipulation Languagem

use Locadora

--			Tabela		Coluna
insert into Locadora	(Telefone, Endereco)
values					(2544-2421, 'Av.Locadora 123');

insert into Veiculo		(Placa, idModelo, idAluguel)
values					(000-6546, 1, 1)
					   ,(000-2907, 2, 2)
					   ,(000-2308, 3, 3);

insert into Marca		(Marca)
values					('Volkswagen')
					   ,('Fiat')
					   ,('Audi');

insert into Modelo		(Modelo, idMarca, Cor)
values					('Golf Quadrado', 1, 'Vermelho')
					   ,('Palio Fire', 2, 'Prata')
					   ,('A1 Sport', 3, 'Azul');

insert into Aluguel		(DataDeRetirada, idCliente)
values					(23/02/2021, 1)
					   ,(19/02/2021, 2)
					   ,(05/02/2021, 3);

insert into Cliente		(Nome, CPF)
values					('Rafael', '654.234.657-56')
					   ,('Breno', '384.657.347-34')
					   ,('Victor', '734.239.932-09');
