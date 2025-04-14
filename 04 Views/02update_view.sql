-- SQL UPDATE View Statement
-- use the SQL UPDATE Statement to modify the existing records in a table or a view.

UPDATE view_name
SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];
-- You can combine N number of conditions using the AND or the OR operators.

CREATE VIEW CUSTOMERS_VIEW AS SELECT * FROM CUSTOMERS;

UPDATE CUSTOMERS_VIEW 
SET AGE = 35 WHERE name = 'Ramesh';
-- Above query updates the age of Ramesh to 35 in the above created CUSTOMERS_VIEW 

-- Updating Multiple Rows and Columns
-- Using UPDATE statement, multiple rows and columns in a view/table can also be updated.
-- While updating multiple rows, specify the condition in a WHERE clause such that only required rows would satisfy it.
UPDATE CUSTOMERS_VIEW
SET NAME = 'Kaushik Ramanujan', AGE = 24
WHERE ID = 3;

