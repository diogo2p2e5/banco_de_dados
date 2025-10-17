CREATE DATABASE db_loja_M;

USE db_loja_M;

CREATE TABLE Cliente(
	ID_Cliente		INT	IDENTITY(1, 1)		PRIMARY KEY,
	Nome			NVARCHAR(255)			NOT NULL

);

CREATE TABLE Produto(
ID_Produto			INT IDENTITY(1, 1)		PRIMARY KEY,
Nome				NVARCHAR(255)			NOT NULL,
Preco				DECIMAL(6, 2)			NOT NULL

);

CREATE TABLE Pedido(
ID_Pedido			INT IDENTITY(1, 1)		PRIMARY KEY,
Data_Horario		DATETIME				NOT NULL,
ID_Cliente			INT						NOT NULL,
ID_Produto			INT						NOT NULL

FOREIGN KEY(ID_Cliente) REFERENCES Cliente(ID_Cliente),
FOREIGN KEY(ID_Produto) REFERENCES Produto(ID_Produto),


);