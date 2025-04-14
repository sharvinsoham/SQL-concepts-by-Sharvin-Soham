-- To delete all the records from the table you can use the following SQL statement:
DELETE FROM CUSTOMERS;

-- This will remove all rows and columns in the table.
-- If there are any constraints on the table (such as foreign key references)
-- that prevent deletion of some rows, the DELETE statement may fail.
-- Be careful with this command, as it is irreversible.

-- SQL DELETE TABLE with WHERE Clause
-- DELETE FROM table_name
-- WHERE condition;
-- example
DELETE FROM CUSTOMERS WHERE ID=1;

-- Deleting rows based on multiple conditions
DELETE FROM table_name
WHERE condition1 AND condition2 OR conditionN;
-- example
DELETE FROM CUSTOMERS 
WHERE NAME='Komal' OR ADDRESS='Mumbai';