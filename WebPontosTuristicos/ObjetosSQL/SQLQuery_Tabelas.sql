INSERT INTO Estados (Sigla_Estado, Nome)
VALUES
('AC', 'Acre'),
('AL', 'Alagoas'),
('AP', 'Amapá'),
('AM', 'Amazonas'),
('BA', 'Bahia'),
('CE', 'Ceará'),
('DF', 'Distrito Federal'),
('ES', 'Espírito Santo'),
('GO', 'Goiás'),
('MA', 'Maranhão'),
('MT', 'Mato Grosso'),
('MS', 'Mato Grosso do Sul'),
('MG', 'Minas Gerais'),
('PA', 'Pará'),
('PB', 'Paraíba'),
('PR', 'Paraná'),
('PE', 'Pernambuco'),
('PI', 'Piauí'),
('RJ', 'Rio de Janeiro'),
('RN', 'Rio Grande do Norte'),
('RS', 'Rio Grande do Sul'),
('RO', 'Rondônia'),
('RR', 'Roraima'),
('SC', 'Santa Catarina'),
('SP', 'São Paulo'),
('SE', 'Sergipe'),
('TO', 'Tocantins');
GO

select Sigla_Estado, Nome from Estados




DECLARE @ID_Estado INT


SELECT TOP 1 @ID_Estado = ID_Estado FROM Estados WHERE Sigla_Estado = 'SP'

INSERT INTO Cidades (Nome, ID_Estado)
VALUES
('São Paulo', @ID_Estado),
('Campinas', @ID_Estado),
('Santos', @ID_Estado);


SELECT TOP 1 @ID_Estado = ID_Estado FROM Estados WHERE Sigla_Estado = 'PR'

INSERT INTO Cidades (Nome, ID_Estado)
VALUES
('Curitiba', @ID_Estado),
('Foz do Iguaçu', @ID_Estado);

SELECT TOP 1 @ID_Estado = ID_Estado FROM Estados WHERE Sigla_Estado = 'RJ'

INSERT INTO Cidades (Nome, ID_Estado)
VALUES
('Rio de Janeiro', @ID_Estado);

SELECT TOP 1 @ID_Estado = ID_Estado FROM Estados WHERE Sigla_Estado = 'MS'

INSERT INTO Cidades (Nome, ID_Estado)
VALUE ('Bonito', @ID_Estado);

SELECT TOP 1 @ID_Estado = ID_Estado FROM Estados WHERE Sigla_Estado = 'DF'

INSERT INTO Cidades (Nome, ID_Estado)
VALUES ('Brasília', @ID_Estado);
GO

GO
CREATE VIEW vw_CidadesComEstado
AS
SELECT 
    c.ID_Cidade,
    c.Nome AS Cidade,
    e.Nome AS Estado,
    e.Sigla_Estado
FROM Cidades c
JOIN Estados e 
    ON e.ID_Estado = c.ID_Estado;
GO

SELECT * FROM vw_CidadesComEstado;


DECLARE @ID_Cidade INT

SELECT TOP 1 @ID_Cidade = ID_Cidade 
FROM Cidades 
WHERE Nome = 'São Paulo'

INSERT INTO Ponto_Turistico (Nome_Ponto_Turistico, Referencia_Ponto_Turistico, ID_Cidade, Descricao, Data_Cadastro)
VALUES('Avenida Paulista', 'MASP', @ID_Cidade, 'Principal avenida financeira e cultural da cidade', GETDATE()),
      ('Parque Ibirapuera', 'Portão 3', @ID_Cidade, 'Maior parque urbano da cidade de São Paulo', GETDATE());

SELECT TOP 1 @ID_Cidade = ID_Cidade 
FROM Cidades 
WHERE Nome = 'Campinas'

INSERT INTO Ponto_Turistico (Nome_Ponto_Turistico, Referencia_Ponto_Turistico, ID_Cidade, Descricao, Data_Cadastro)
VALUES ('Lagoa do Taquaral', 'Parque Portugal', @ID_Cidade, 'Área de lazer e prática esportiva', GETDATE());

SELECT TOP 1 @ID_Cidade = ID_Cidade 
FROM Cidades 
WHERE Nome = 'Santos'

INSERT INTO Ponto_Turistico (Nome_Ponto_Turistico, Referencia_Ponto_Turistico, ID_Cidade, Descricao, Data_Cadastro)
VALUES ('Orla da Praia', 'Jardim da Orla', @ID_Cidade, 'Maior jardim de orla marítima do mundo', GETDATE());

SELECT TOP 1 @ID_Cidade = ID_Cidade 
FROM Cidades 
WHERE Nome = 'Curitiba'

INSERT INTO Ponto_Turistico (Nome_Ponto_Turistico, Referencia_Ponto_Turistico, ID_Cidade, Descricao, Data_Cadastro)
VALUES ('Jardim Botânico', 'Estufa de Vidro', @ID_Cidade, 'Principal cartão-postal da cidade', GETDATE());

SELECT TOP 1 @ID_Cidade = ID_Cidade 
FROM Cidades 
WHERE Nome = 'Foz do Iguaçu'

INSERT INTO Ponto_Turistico (Nome_Ponto_Turistico, Referencia_Ponto_Turistico, ID_Cidade, Descricao, Data_Cadastro)
VALUES ('Cataratas do Iguaçu', 'Parque Nacional', @ID_Cidade, 'Uma das maiores quedas d’água do mundo', GETDATE());

SELECT TOP 1 @ID_Cidade = ID_Cidade 
FROM Cidades 
WHERE Nome = 'Rio de Janeiro'

INSERT INTO Ponto_Turistico (Nome_Ponto_Turistico, Referencia_Ponto_Turistico, ID_Cidade, Descricao, Data_Cadastro)
VALUES ('Cristo Redentor', 'Corcovado', @ID_Cidade, 'Uma das sete maravilhas do mundo moderno', GETDATE());

SELECT TOP 1 @ID_Cidade = ID_Cidade 
FROM Cidades 
WHERE Nome = 'Bonito'

INSERT INTO Ponto_Turistico (Nome_Ponto_Turistico, Referencia_Ponto_Turistico, ID_Cidade, Descricao, Data_Cadastro)
VALUES ('Gruta do Lago Azul', 'Gruta Natural', @ID_Cidade, 'Caverna com lago de águas cristalinas', GETDATE());

SELECT TOP 1 @ID_Cidade = ID_Cidade 
FROM Cidades 
WHERE Nome = 'Brasília'

INSERT INTO Ponto_Turistico (Nome_Ponto_Turistico, Referencia_Ponto_Turistico, ID_Cidade, Descricao, Data_Cadastro)
VALUES ('Congresso Nacional', 'Praça dos Três Poderes', @ID_Cidade, 'Sede do Poder Legislativo do Brasil', GETDATE());

SELECT * FROM Ponto_Turistico
