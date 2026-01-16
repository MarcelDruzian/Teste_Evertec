CREATE DATABASE Teste_Evertec_SQL_Basico
GO

USE Teste_Evertec_SQL_Basico
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

CREATE TABLE Clientes (ID_Cliente      Integer Primary Key Identity(1,1)
                      ,Nome            Varchar(100) NOT NULL
                      ,Data_Nascimento Datetime     NOT NULL
                      ,Documento       Varchar(14)
                      ,Genero          Char(1))
GO

-- Foi amarrado o cliente com endereço pois um cliente pode ter mais de um endereço
-- Ex: Cliente tem um endereço comercial e residencial
CREATE TABLE Enderecos (ID_Endereco Integer Primary Key Identity(1,1)
                       ,ID_Cliente  Integer     NOT NULL
                       ,ID_Cidade   Integer     NOT NULL
                       ,Bairro      Varchar(50) NOT NULL
                       ,Rua         Varchar(20) NOT NULL
                       ,Numero      Smallint    NOT NULL
                       ,CEP         Char(9)     NOT NULL
                       ,CONSTRAINT FK_ID_Cliente FOREIGN KEY (ID_Cliente) REFERENCES Clientes (ID_Cliente)
                       ,CONSTRAINT FK_ID_Cidade  FOREIGN KEY (ID_Cidade) REFERENCES Cidades (ID_Cidade))
GO