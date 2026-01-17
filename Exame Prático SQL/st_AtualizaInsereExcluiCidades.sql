CREATE PROCEDURE st_AtualizaInsereExcluiCidades 
  @ID_Cidade    Integer,
  @Nome_Cidade  Varchar(100),
  @Sigla_Estado Char(2),
  @Acao         Char(1) -- I - Insere, U - Atualiza, D - Exclui
AS
BEGIN
  DECLARE @ID_Estado Integer

  SELECT @ID_Estado = ID_Estado
  FROM Estados
  WHERE Estados.SIgla_Estado = @Sigla_Estado

  IF (@Acao = 'I')
  BEGIN
    IF (@ID_Cidade <> 0) AND 
       EXISTS (SELECT 1
               FROM Cidades
               WHERE ID_Cidade = @ID_Cidade
                 AND Nome      <> @Nome_Cidade)
    BEGIN
      PRINT('Cidade já existente no sistema!')
    END
    ELSE
    BEGIN
      INSERT INTO Cidades (Nome
                          ,ID_Estado)
      VALUES (@Nome_Cidade
             ,@ID_Estado)
      PRINT('Cidade cadastrada com sucesso!')
    END
  END
  ELSE IF (@Acao = 'U')
  BEGIN
    IF NOT EXISTS (SELECT 1
                   FROM Cidades
                   WHERE ID_Cidade = @ID_Cidade)
    BEGIN
      PRINT('Cidade não encontrada no sistema!')
    END
    ELSE
    BEGIN
      UPDATE Cidades
      SET Nome      = @Nome_Cidade
         ,ID_Estado = @ID_Estado
      WHERE ID_Cidade = @ID_Cidade
    END
  END
  ELSE
  BEGIN
    DELETE FROM Cidades
    WHERE ID_Cidade = @ID_Cidade
  END

END