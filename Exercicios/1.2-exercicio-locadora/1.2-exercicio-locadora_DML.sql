--comandos DML Data Manipulation Language

use Locadora;

insert into Empresas (Nome)
values				 ('Unidas')
				    ,('Localiza');

insert into Marcas	(Nome)
values				('Ford')
				   ,('GM')
				   ,('Fiat');

insert into Clientes	(Nome, CPF)
values				    ('Rafael', '498.239.342-89')
					   ,('Victor', '328.355.147-32')
					   ,('Breno', '239.238.078-63');

insert into Modelos		(Nome, idMarca)
values					('Fiesta', 1)
					   ,('Onix', 2)
					   ,('Argo', 3);

insert into Veiculos	(idModelo, Placa, idEmpresa)
values				    (1, 'HEL1805', 1)
					   ,(2, 'FER1010', 1)
					   ,(3, 'POR1978', 2)
					   ,(1, 'LEM9876', 2);

insert into Alugueis	(idCliente, idVeiculo, DataInicio, DataFim)
values					(1, 1, '19/01/2019', '20/01/2019')
					   ,(1, 2, '20/01/2019', '21/01/2019')
					   ,(2, 3, '21/01/2019', '21/01/2019')
					   ,(3, 2, '22/01/2019', '22/01/2019');
