There is no direct query to rename a view in SQL.

In MySQL we can rename a view using the RENAME TABLE statement and
In MS SQL Server we can rename a view using the sp_rename procedure.

Deleting the existing view and then re-creating it with a new name is often recommended.

-- Renaming a View in MySQL
RENAME TABLE old_view_name To new_view_name;

CREATE VIEW CUSTOMERS_VIEW AS 
SELECT * FROM CUSTOMERS;

RENAME TABLE CUSTOMERS_VIEW TO VIEW_CUSTOMERS;

-- Renaming a View in SQL Server
EXEC sp_rename 'old_view_name', 'new_view_name'
EXEC sp_rename CUSTOMERS_VIEW, VIEW_CUSTOMERS;