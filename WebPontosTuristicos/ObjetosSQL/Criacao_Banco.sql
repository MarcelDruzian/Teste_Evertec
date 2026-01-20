CREATE DATABASE Teste_Evertec_Web
GO

USE Teste_Evertec_Web
GO 

CREATE TABLE Estados (ID_Estado    Integer Primary Key Identity(1,1) 
                     ,Sigla_Estado Char(2)     NOT NULL
                     ,Nome         Varchar(50) NOT NULL)
GO

CREATE TABLE Cidades (ID_Cidade     Integer Primary Key Identity(1,1)
                     ,Nome          Varchar(100) NOT NULL
                     ,ID_Estado Integer
                     ,CONSTRAINT FK_ID_Estado  FOREIGN KEY (ID_Estado) References Estados (ID_Estado))
GO

CREATE TABLE Ponto_Turistico (ID_Ponto_Turistico         Integer Primary Key Identity (1,1)
                             ,Nome_Ponto_Turistico       Varchar(50)
                             ,Referencia_Ponto_Turistico Varchar(150)
                             ,ID_Cidade                  Integer
                             ,Descricao                  Varchar(500)
                             ,CONSTRAINT FK_ID_Cidade FOREIGN KEY (ID_Cidade) References Cidades (ID_Cidade))
GO