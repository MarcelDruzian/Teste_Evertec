# Teste_Evertec

**Repositório com intuito de realizar o exame admissional da Evertec Tupã, janeiro de 2026.**

### Exame de Lógica
Na pasta "Exame Lógica" se encontra o arquivo de texto com o Teste Prático de Lógica.

### Exame SQL
Na pasta "Exame Prático SQL" encontra-se 5 arquivos .sql para validação deverão ser executadas na seguinte ordem:
1. Abrir o [Criacao_Banco_Evertec.sql](https://github.com/MarcelDruzian/Teste_Evertec/blob/main/Exame%20Pr%C3%A1tico%20SQL/Criacao_Banco_Evertec.sql) no SQL Server e executá-lo
2. Caso o banco não esteja definido na consulta utilizar o comando: ``` use Teste_Evertec_SQL_Basico```, em seguida, executar o [Massa_Banco_Evertec.sql](https://github.com/MarcelDruzian/Teste_Evertec/tree/main/Exame%20Pr%C3%A1tico%20SQL) para inserção da massa de dados.
3. Para verificação dos conceitos, verifique o [Exame_Pratico_SQL_Evertec.sql](https://github.com/MarcelDruzian/Teste_Evertec/blob/main/Exame%20Pr%C3%A1tico%20SQL/Exame_Pratico_SQL_Evertec.sql)
4. Para validação, também foram adicionados uma procedure e uma view, [st_AtualizaInsereExcluiCidades.sql](https://github.com/MarcelDruzian/Teste_Evertec/blob/main/Exame%20Pr%C3%A1tico%20SQL/st_AtualizaInsereExcluiCidades.sql) e [vw_Cidades.sql](https://github.com/MarcelDruzian/Teste_Evertec/blob/main/Exame%20Pr%C3%A1tico%20SQL/vw_Cidades.sql)

### Exame Web
Na pasta "WebPontosTuristicos", existem duas pastas, a "ObjetosSQL" e a "WebPontosTuristicos", na pasta ObjetosSQL, encontram-se os arquivos para criação do banco e massa de dados para teste da aplicação.
É necessário que os arquivos sejam executados na seguinte ordem:
1. [Criacao_Banco.sql](https://github.com/MarcelDruzian/Teste_Evertec/blob/main/WebPontosTuristicos/ObjetosSQL/Criacao_Banco.sql)
2. [SQLQuery_Tabelas.sql](https://github.com/MarcelDruzian/Teste_Evertec/blob/main/WebPontosTuristicos/ObjetosSQL/SQLQuery_Tabelas.sql)

Após a criação do banco, verifique se existe o pacote .NET instalado na sua máquina, para isso execute no terminal:

`` dotnet --list-sdks``

Deverá ser retornado algo como: 

> 9.0.203 [C:\Program Files\dotnet\sdk]

Após isso, na pasta do projeto "./WebPontosTuristicos/WebPontosTuristicos/", realize a configuração do arquivo *appsettings.json*, apontando para o seu banco de dados

Execute os comandos:

```
dotnet build
```

```
dotnet run
```