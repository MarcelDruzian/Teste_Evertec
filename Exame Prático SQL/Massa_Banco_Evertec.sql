

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

DECLARE @ID_Estado Integer 
SELECT @ID_Estado = ID_Estado
FROM Estados 
WHERE Sigla_Estado = 'SP'

INSERT INTO Cidades (Nome, ID_Estado)
VALUES ('São Paulo', @ID_Estado),
       ('Campinas', @ID_Estado),
       ('Santos', @ID_Estado),
       ('Sorocaba', @ID_Estado),
       ('Ribeirão Preto', @ID_Estado),
       ('São José dos Campos' ,@ID_Estado),
       ('Bauru',@ID_Estado),
       ('Piracicaba', @ID_Estado),
       ('Jundiaí', @ID_Estado),
       ('Guarulhos',@ID_Estado),
       ('Tupã', @ID_Estado)

SELECT @ID_Estado = ID_Estado
FROM Estados 
WHERE Sigla_Estado = 'PR'

-- Estado do Paraná
INSERT INTO Cidades (Nome, ID_Estado)
VALUES 
('Curitiba', @ID_Estado),
('Londrina', @ID_Estado),
('Maringá', @ID_Estado),
('Cascavel', @ID_Estado),
('Ponta Grossa', @ID_Estado),
('Foz do Iguaçu', @ID_Estado),
('Guarapuava', @ID_Estado),
('Paranaguá', @ID_Estado),
('Apucarana', @ID_Estado),
('Toledo', @ID_Estado);
GO


INSERT INTO Clientes (Nome, Data_Nascimento)
VALUES
('Cliente 1',  '19800115'),
('Cliente 2',  '19920322'),
('Cliente 3',  '19850709'),
('Cliente 4',  '19781130'),
('Cliente 5',  '19900512'),
('Cliente 6',  '19830925'),
('Cliente 7',  '19950218'),
('Cliente 8',  '19870603'),
('Cliente 9',  '19791221'),
('Cliente 10', '19910414'),
('Cliente 11', '19840807'),
('Cliente 12', '19961019'),
('Cliente 13', '19820228'),
('Cliente 14', '19890711'),
('Cliente 15', '19770305'),
('Cliente 16', '19930923'),
('Cliente 17', '19861202'),
('Cliente 18', '19940615'),
('Cliente 19', '19810127'),
('Cliente 20', '19970809'),
('Cliente 21', '19800210'),
('Cliente 22', '19920521'),
('Cliente 23', '19850913'),
('Cliente 24', '19780430'),
('Cliente 25', '19901105'),
('Cliente 26', '19830717'),
('Cliente 27', '19951228'),
('Cliente 28', '19870309'),
('Cliente 29', '19791022'),
('Cliente 30', '19910614'),
('Cliente 31', '19840108'),
('Cliente 32', '19960919'),
('Cliente 33', '19821127'),
('Cliente 34', '19890511'),
('Cliente 35', '19770803'),
('Cliente 36', '19930225'),
('Cliente 37', '19860712'),
('Cliente 38', '19941030'),
('Cliente 39', '19810321'),
('Cliente 40', '19971209'),
('Cliente 41', '19800615'),
('Cliente 42', '19920822'),
('Cliente 43', '19850209'),
('Cliente 44', '19780930'),
('Cliente 45', '19900312'),
('Cliente 46', '19831125'),
('Cliente 47', '19950718'),
('Cliente 48', '19870103'),
('Cliente 49', '19790521'),
('Cliente 50', '19910914'),
('Cliente 51', '19841207'),
('Cliente 52', '19960419'),
('Cliente 53', '19820828'),
('Cliente 54', '19890211'),
('Cliente 55', '19770605'),
('Cliente 56', '19931123'),
('Cliente 57', '19860502'),
('Cliente 58', '19940115'),
('Cliente 59', '19810727'),
('Cliente 60', '19970309'),
('Cliente 61', '19800910'),
('Cliente 62', '19921121'),
('Cliente 63', '19850413'),
('Cliente 64', '19780730'),
('Cliente 65', '19901205'),
('Cliente 66', '19830217'),
('Cliente 67', '19950828'),
('Cliente 68', '19871009'),
('Cliente 69', '19790122'),
('Cliente 70', '19910514'),
('Cliente 71', '19840308'),
('Cliente 72', '19960719'),
('Cliente 73', '19820927'),
('Cliente 74', '19891111'),
('Cliente 75', '19770103'),
('Cliente 76', '19930525'),
('Cliente 77', '19860812'),
('Cliente 78', '19941230'),
('Cliente 79', '19810221'),
('Cliente 80', '19970609'),
('Cliente 81', '19800415'),
('Cliente 82', '19920622'),
('Cliente 83', '19851009'),
('Cliente 84', '19780228'),
('Cliente 85', '19900812'),
('Cliente 86', '19830625'),
('Cliente 87', '19950118'),
('Cliente 88', '19870903'),
('Cliente 89', '19791121'),
('Cliente 90', '19910214'),
('Cliente 91', '19840507'),
('Cliente 92', '19961019'),
('Cliente 93', '19820128'),
('Cliente 94', '19890611'),
('Cliente 95', '19770903'),
('Cliente 96', '19930325'),
('Cliente 97', '19861112'),
('Cliente 98', '19940530'),
('Cliente 99', '19810821'),
('Cliente 100', '19971109'),


('Cliente 101', '19800115'),
('Cliente 102', '19920322'),
('Cliente 103', '19850709'),
('Cliente 104', '19781130'),
('Cliente 105', '19900512'),
('Cliente 106', '19830925'),
('Cliente 107', '19950218'),
('Cliente 108', '19870603'),
('Cliente 109', '19791221'),
('Cliente 110', '19910414'),
('Cliente 111', '19840807'),
('Cliente 112', '19961019'),
('Cliente 113', '19820228'),
('Cliente 114', '19890711'),
('Cliente 115', '19770305'),
('Cliente 116', '19930923'),
('Cliente 117', '19861202'),
('Cliente 118', '19940615'),
('Cliente 119', '19810127'),
('Cliente 120', '19970809'),
('Cliente 121', '19800210'),
('Cliente 122', '19920521'),
('Cliente 123', '19850913'),
('Cliente 124', '19780430'),
('Cliente 125', '19901105'),
('Cliente 126', '19830717'),
('Cliente 127', '19951228'),
('Cliente 128', '19870309'),
('Cliente 129', '19791022'),
('Cliente 130', '19910614'),
('Cliente 131', '19840108'),
('Cliente 132', '19960919'),
('Cliente 133', '19821127'),
('Cliente 134', '19890511'),
('Cliente 135', '19770803'),
('Cliente 136', '19930225'),
('Cliente 137', '19860712'),
('Cliente 138', '19941030'),
('Cliente 139', '19810321'),
('Cliente 140', '19971209'),
('Cliente 141', '19800615'),
('Cliente 142', '19920822'),
('Cliente 143', '19850209'),
('Cliente 144', '19780930'),
('Cliente 145', '19900312'),
('Cliente 146', '19831125'),
('Cliente 147', '19950718'),
('Cliente 148', '19870103'),
('Cliente 149', '19790521'),
('Cliente 150', '19910914'),
('Cliente 151', '19841207'),
('Cliente 152', '19960419'),
('Cliente 153', '19820828'),
('Cliente 154', '19890211'),
('Cliente 155', '19770605'),
('Cliente 156', '19931123'),
('Cliente 157', '19860502'),
('Cliente 158', '19940115'),
('Cliente 159', '19810727'),
('Cliente 160', '19970309'),
('Cliente 161', '19800910'),
('Cliente 162', '19921121'),
('Cliente 163', '19850413'),
('Cliente 164', '19780730'),
('Cliente 165', '19901205'),
('Cliente 166', '19830217'),
('Cliente 167', '19950828'),
('Cliente 168', '19871009'),
('Cliente 169', '19790122'),
('Cliente 170', '19910514'),
('Cliente 171', '19840308'),
('Cliente 172', '19960719'),
('Cliente 173', '19820927'),
('Cliente 174', '19891111'),
('Cliente 175', '19770103'),
('Cliente 176', '19930525'),
('Cliente 177', '19860812'),
('Cliente 178', '19941230'),
('Cliente 179', '19810221'),
('Cliente 180', '19970609'),
('Cliente 181', '19800415'),
('Cliente 182', '19920622'),
('Cliente 183', '19851009'),
('Cliente 184', '19780228'),
('Cliente 185', '19900812'),
('Cliente 186', '19830625'),
('Cliente 187', '19950118'),
('Cliente 188', '19870903'),
('Cliente 189', '19791121'),
('Cliente 190', '19910214'),
('Cliente 191', '19840507'),
('Cliente 192', '19961019'),
('Cliente 193', '19820128'),
('Cliente 194', '19890611'),
('Cliente 195', '19770903'),
('Cliente 196', '19930325'),
('Cliente 197', '19861112'),
('Cliente 198', '19940530'),
('Cliente 199', '19810821'),
('Cliente 200', '19971109');
GO

INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (1, 11, 'Centro', 'Rua Exemplo', 101, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (2, 11, 'Centro', 'Rua Exemplo', 102, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (3, 11, 'Centro', 'Rua Exemplo', 103, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (4, 11, 'Centro', 'Rua Exemplo', 104, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (5, 11, 'Centro', 'Rua Exemplo', 105, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (6, 11, 'Centro', 'Rua Exemplo', 106, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (7, 11, 'Centro', 'Rua Exemplo', 107, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (8, 11, 'Centro', 'Rua Exemplo', 108, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (9, 11, 'Centro', 'Rua Exemplo', 109, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (11, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (12, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (13, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (14, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (15, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (16, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (17, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (18, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (19, 2, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (20, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (21, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (22, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (23, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (24, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (25, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (26, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (27, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (28, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (29, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (30, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (31, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (32, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (33, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (34, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (35, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (36, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (37, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (38, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (39, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (40, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (41, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (42, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (43, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (44, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (45, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (46, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (47, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (48, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (49, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (50, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (51, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (52, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (53, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (54, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (55, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (56, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (57, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (58, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (59, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (60, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (61, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (62, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (63, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (64, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (65, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (66, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (67, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (68, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (69, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (70, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (71, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (72, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (73, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (74, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (75, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (76, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (77, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (78, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (79, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (80, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (81, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (82, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (83, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (84, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (85, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (86, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (87, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (88, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (89, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (90, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (91, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (92, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (93, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (94, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (95, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (96, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (97, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (98, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (99, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (100, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (101, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (102, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (103, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (104, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (105, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (106, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (107, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (108, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (109, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (100, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (111, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (112, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (113, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (114, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (115, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (116, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (117, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (118, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (119, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (120, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (121, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (122, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (123, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (124, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (125, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (126, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (127, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (128, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (129, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (130, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (131, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (132, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (133, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (134, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (135, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (136, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (137, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (138, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (139, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (140, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (141, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (142, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (143, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (144, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (145, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (146, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (147, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (148, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (149, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (150, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (151, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (152, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (153, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (154, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (155, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (156, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (157, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (158, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (159, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (160, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (161, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (162, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (163, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (164, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (165, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (166, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (167, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (168, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (169, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (170, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (171, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (172, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (173, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (174, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (175, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (176, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (177, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (178, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (179, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (180, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (181, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (182, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (183, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (184, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (185, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (186, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (187, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (188, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (189, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (190, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (191, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (192, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (193, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (194, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (195, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (196, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (197, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (198, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (199, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');
INSERT INTO dbo.Enderecos (ID_Cliente, ID_Cidade, Bairro, Rua, Numero, CEP) VALUES (200, 1, 'Centro', 'Rua Exemplo', 110, '01000-000');



UPDATE dbo.Enderecos
SET ID_Cidade = 11
WHERE ID_Cliente between 55 and 83
