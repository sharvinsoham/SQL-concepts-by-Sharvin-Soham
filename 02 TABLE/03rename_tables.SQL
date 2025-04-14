-- Renaming tables

-- To rename the table in MySQL Command
-- ALTER TABLE table_name RENAME [TO|AS] new_table_name
-- ALTER TABLE BUYERS RENAME AS CUSTOMERS;
ALTER TABLE table_name
RENAME TO|AS new_table_name;

-- MS SQL Server
-- EXEC sp_rename 'old_table_name', 'new_table_name'

-- EXAMPLE
EXEC sp_rename 'CUSTOMERS', 'WORKERS';