--comandos DDL

--cria um banco de dados chamado Locadora
create database Locadora;

--define que o banco de dados Locadora sera usado
use Locadora;

--cria tabela com o nome Marca
create table Marca
(
	idMarca		int		primary key		identity
	,Marca		varchar(50)		not null
);

--cria tabela com o nome Modelos 
create table Modelo
(
	idModelo		int		primary key		identity
	,Modelo			varchar(30)		not null
	,Cor			varchar(20)		not null
	,idMarca		int		foreign key		references Marca(idMarca)	
);

--cria uma tabela com o nome Cliente
create table Cliente
(
	idCliente		int		primary key		identity
	,Nome			varchar(30)		not null
	,CPF			varchar(14)		not null
);

--cria uma tabela com o nome Aluguel
create table Aluguel
(
	idAluguel		int		primary key		identity
	,DataDeRetirada	varchar(20)		not null
	,idCliente		int		foreign key		references Cliente(idCliente)
);

--cria uma tabela com o nome Veiculo
create table Veiculo
(
	idVeiculo		int		primary key		identity
	,Placa			int		not null
	,idModelo		int		foreign key		references Modelo(idModelo)
	,idAluguel		int		foreign key		references Aluguel(idAluguel)
);

--cria uma tabela com o nome Locadora
create table Locadora
(
	idLocadora		int		primary key		identity
	,Telefone		int		not null
	,Endereco		varchar(100)	not null
	,idVeiculo		int		foreign key		references Veiculo(idVeiculo)
);
