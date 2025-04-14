-- To drop a table in a database, one must require ALTER permission on the said table and
--  CONTROL permissions on the table schema.
-- To drop a table
DROP TABLE table_name;
DROP TABLE BUYERS;

-- Dropping a table if it exists
DROP TABLE IF EXISTS BUYERS;

-- DROP TEMPORARY TABLE TEMP_TABLE;
DROP TEMPORARY TABLE CUSTOMERS;

-- Dropping Temporary Tables in SQL Server
-- If you want to drop a temporary table in SQL Server manually, you need to execute
-- the DROP TABLE statement by placing # before the local temporary table name
DROP TABLE #Customers;
-- and ## before the global temporary table name.
DROP TABLE ##Buyers;