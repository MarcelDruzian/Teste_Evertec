

-- (1) -  Criar um comando SELECT que retorne APENAS o nome dos 
--        clientes da cidade “TUPA”. Utilizar o EXISTS para realizar a condição. 
SELECT Nome
FROM Clientes 
WHERE EXISTS(SELECT 1
             FROM Enderecos
                  INNER JOIN dbo.Cidades 
                  ON Cidades.ID_Cidade = Enderecos.ID_Cidade
             WHERE Enderecos.ID_Cliente = Clientes.ID_Cliente
               AND Cidades.Nome = 'Tupã')

--// Validando se o endereço retornou certo
SELECT *
FROM Clientes A
     INNER JOIN Enderecos B
     ON B.ID_Cliente = A.ID_Cliente
     INNER JOIN Cidades C
     ON C.ID_Cidade = B.ID_Cidade
WHERE A.Nome = 'Cliente 1';

-- (2) - Criar um comando SELECT que retorne o nome do cliente e o nome da cidade de todos os registros
SELECT Clientes.Nome AS Nome_Cliente, -- o AS define um apelido pra coluna/tabela
       Cidades.Nome  AS Nome_Cidade
FROM Clientes
     INNER JOIN Enderecos 
     ON Enderecos.ID_Cliente = Clientes.ID_Cliente
     INNER JOIN Cidades
     ON Cidades.ID_Cidade = Enderecos.ID_Cidade

-- (3) - Criar um comando SELECT que retorne TODOS os nomes e os códigos dos clientes ordenados por nome do cliente.
SELECT Clientes.Nome
      ,Clientes.ID_Cliente
FROM Clientes
ORDER BY Clientes.Nome ASC

-- (4) - Criar um comando DELETE que exclua clientes com código do cliente entre a numeração 100 e 200.
DELETE FROM Clientes
WHERE Clientes.ID_Cliente BETWEEN 100 AND 200

--(5) - Criar um comando UPDATE que altere o estado de todas as cidades para o estado “SP” quando
--      estiverem com estado igual a “PR”. 
DECLARE @ID_Estado Integer

SELECT @ID_Estado = ID_Estado
FROM Estados
WHERE Estados.Sigla_Estado = 'SP'

UPDATE Cidades
SET Cidades.ID_Estado = @ID_Estado
FROM Cidades
     INNER JOIN Estados
     ON Estados.ID_Estado = Cidades.ID_Estado
WHERE Estados.Sigla_Estado = 'PR';

-- (6) - Criar um comando INSERT na tabela de clientes de um registro qualquer com todos os campos da
-- tabela. (valores livres) 
INSERT INTO Clientes (Nome, Data_Nascimento, Documento, Genero)
VALUES ('Marcel Druzian', '20030108', '12345678910', 'M')
