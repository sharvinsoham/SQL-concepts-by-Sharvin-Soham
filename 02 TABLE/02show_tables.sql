-- Displayinhg all tables in a selected Database

-- SQL Server does not provide SHOW TABLE command in an SQL Server.
-- Instead, we can use the "SELECT" statement to retrieve information about tables in a database.
SELECT * FROM sys.tables;

-- SELECT * FROM sys.tables
-- SELECT * FROM information_schema.tables
SELECT * FROM sysobjects
SELECT name, id, xtype FROM sysobjects WHERE xtype = 'U'