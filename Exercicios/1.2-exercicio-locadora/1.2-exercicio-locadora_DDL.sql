-- comandos DDL Data Definition Language

create database Locadora;

use Locadora;

create table Empresas
(
	idEmpresa	int		primary key		identity
	,Nome		varchar(20)		not null
);

create table Marcas
(
	idMarca		int		primary key		identity
	,Nome		varchar(20)		not null
);

create table Clientes
(
	idCliente	int		primary key		identity
	,Nome		varchar(50)		not null
	,CPF		varchar(20)		not null
);

create table Modelos
(
	idModelo	int		primary key		identity
	,Nome		varchar(20)		not null
	,idMarca	int		foreign key		references Marcas(idMarca)
);

create table Veiculos
(
	idVeiculo	int		primary key		identity
	,idModelo	int		foreign key		references Modelos(idModelo)
	,Placa		varchar(20)		not null
	,idEmpresa	int		foreign key		references Empresas(idEmpresa)
);

create table Alugueis
(
	idAluguel	int		primary key		identity
	,idCliente	int		foreign key		references Clientes(idCliente)
	,idVeiculo	int		foreign key		references Veiculos(idVeiculo)
	,DataInicio	varchar(20)		not null
	,DataFim	varchar(20)		not null
);
