-- Deleting Records from Table
-- DELETE Statement is used to delete the records from an existing table
-- The DELETE statement removes rows from a table based on some conditions defined by the WHERE clause.
-- If you execute DELETE statement without a WHERE clause, it will delete all the records from the table.

-- Syntax for Delete Statement:
-- DELETE FROM table_name
-- WHERE [condition]

DELETE FROM CUSTOMERS WHERE ID = 6;         --Deleting single record
DELETE FROM CUSTOMERS WHERE AGE > 25;       --Deleting Multiple Rows
DELETE FROM CUSTOMERS;                      --Deleting All The Records From a Table

-- use the JOIN clause to combine data from multiple tables
-- Delete Records from Multiple Tables in MySQL
DELETE CUSTOMERS, ORDERS
FROM CUSTOMERS INNER JOIN ORDERS
ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID
WHERE CUSTOMERS.SALARY =6500;

-- Delete Records from Multiple Tables in SQL SERVER
DELETE CUSTOMERS
FROM CUSTOMERS INNER JOIN ORDERS ON ID=CUSTOMER_ID
WHERE SALARY=6500;