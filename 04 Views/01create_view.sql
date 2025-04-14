-- A view is a database object that can contain rows (all or selected) from an existing table
-- A view in SQL is a virtual table that is stored in the database with an associated name.
-- It can be created from one or many tables which depends on the provided SQL query to create a view.

-- A view is a composition of tables in the form of a predefined SQL query.
-- A view can contain (selected or all) rows from an existing table.
-- A view can be created from one or many tables.
-- The result set returned by executing a view is called as derived table.
-- The result set returned by a view will always include column names, even if they are not present in the underlying tables.
-- The result set returned by executing a view consists of the columns and data from the tables specified in the SELECT statement used to create the view.

-- The data in the view does not exist in the database physically
-- Unless indexed, a view does not exist in a database.

CREATE VIEW CUSTOMERS_VIEW AS
SELECT * FROM CUSTOMERS;

-- The list of all the views using the following query:
SELECT TABLE_SCHEMA, TABLE_NAME 
FROM INFORMATION_SCHEMA.VIEWS
WHERE TABLE_SCHEMA='tutorials';

-- To access data from a view you use it like any other table:
SELECT * FROM BUYERS_VIEW;
-- This will show all columns available to this view
SHOW COLUMNS FROM CUSTOMERS_VIEW;  

-- Create View With WHERE Clause
CREATE VIEW my_view AS
SELECT * FROM CUSTTOMERS
WHERE [condition];

CREATE VIEW BUYERS_VIEW as SELECT * FROM CUSTOMERS 
WHERE SALARY > 3000;

-- The WITH CHECK OPTION Clause
-- The WITH CHECK OPTION is a CREATE VIEW statement option. 
-- The purpose of the WITH CHECK OPTION is to ensure that all UPDATE and INSERT statements satisfy the condition(s) specified by the WHERE clause.
-- If they do not satisfy the condition(s), the UPDATE or INSERT statements return an error.
-- When used, the base table must have a PRIMARY KEY or UNIQUE constraint for each column listed in the check clause.
CREATE VIEW MY_VIEW AS
SELECT name, age
FROM  CUSTOMERS
WHERE age >= 25
WITH CHECK OPTION;
-- The WITH CHECK OPTION in this case should deny the entry and updates of the records whose age value is greater than or equal to 25.