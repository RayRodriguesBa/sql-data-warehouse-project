/*
============================================================

Criar Banco de Dados e Schemas

============================================================

Propósito do Script:

    Este script cria um novo banco de dados chamado 'DataWarehouse'
    após verificar se ele já existe.

    Se o banco de dados existir, ele é excluído e recriado.
    Além disso, o script configura três schemas dentro do banco:
    'bronze', 'silver' e 'gold'.

AVISO:

    A execução deste script irá excluir todo o banco de dados
    'DataWarehouse' caso ele exista.

    Todos os dados no banco serão permanentemente apagados.
    Prossiga com cautela e certifique-se de que possui backups
    adequados antes de executar este script.
*/

IF EXISTS( SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
  BEGIN 
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse
  END;

GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA prata;
GO

CREATE SCHEMA ouro;
GO
