--comandos DDL Data Definition Language

create database Clinica;

use Clinica;

create table Clinicas
(
	idClinica		int primary key
	,RazaoSocial	varchar(30) not null
	,CNPJ			varchar(30) not null
	,Endereco		varchar(50) not null
);

create table TiposPets
(
	idTipoPet		int primary key
	,Descricao		varchar(20) not null
);

create table Racas
(
	idRaca			int primary key
	,Descricao		varchar(20) not null
	,idTipoPet		int foreign key references TiposPets(idTipoPet)
);

create table Donos
(
	idDono			int primary key
	,Nomes			varchar(20) not null
);

create table Veterinarios
(
	idVeterinario	int primary key
	,Nome			varchar(20) not null
	,CRMV			varchar(20) not null
	,idClinica		int foreign key references Clinicas(idClinica)
);

create table Pets
(
	idPet			int primary key
	,Nome			varchar(20) not null
	,DataNascimento	varchar(20) not null
	,idRaca			int foreign key references Racas(idRaca)
	,idDono			int foreign key references Donos(idDono)
);

create table Atendimentos
(
	idAtendimento	int primary key
	,Descricao		varchar(100) not null
	,DataAtendimento varchar(20) not null
	,idVeterinario	int foreign key references Veterinarios(idVeterinario)
	,idPet			int foreign key references Pets(idPet)
);

