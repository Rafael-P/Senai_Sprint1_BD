-- Comandos DDL

-- Cria um banco de dados chamado Filmes
CREATE DATABASE Filmes;
GO

-- Define o banco de dados Filmes como o que ser� utilizado
USE Filmes;
GO

CREATE TABLE Generos
(
	idGenero	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL -- N�O NULO
);
GO

CREATE TABLE Filmes
(
	idFilme		INT PRIMARY KEY IDENTITY
	,idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo		VARCHAR(150) NOT NULL
);
GO