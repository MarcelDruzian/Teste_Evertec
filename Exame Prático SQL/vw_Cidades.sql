CREATE VIEW vw_Cidades
AS
  SELECT Cidades.Nome         AS Nome_Cidade,
         Estados.Nome         AS Nome_Estado,
         Estados.Sigla_Estado AS Sigla_Estado
  FROM Cidades
       INNER JOIN dbo.Estados
       ON Estados.ID_Estado = Cidades.ID_Estado