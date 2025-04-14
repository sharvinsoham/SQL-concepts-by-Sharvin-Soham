-- The SQL SELECT Statement is used to fetch the data from a database table which returns this data in the form of a table.

-- Retrieving Selected fields/Columns
SELECT ID, NAME, AGE FROM CUSTOMERS;
-- Retrieving All Fields/Columns (equivalent to SELECT *)
SELECT * FROM CUSTOMERS;
SELECT * FROM NameStartsWith_K;

-- Computing Using Select
SELECT 52*10;

-- Alias for a Column Name
SELECT column_name AS alias_name FROM customers;

-- Retrieving customer details Name & age in a single column using "CONCAT()" expression
SELECT CONCAT(NAME,' ',AGE) AS DETAILS, ADDRESS FROM CUSTOMERS ORDER BY NAME;

-- Subquery in the select statement
SELECT COUNT(*) AS TOTAL_CUSTOMER, AVG(AGE) AS AVERAGE_AGE FROM CUSTOMERS;


SELECT ID, NAME, AGE + 10 AS SHOW_AGE FROM CUSTOMERS WHERE AGE > 25;
SELECT NAME
-- Working with NULL values
SELECT IFNULL(age, 'Not Provided') as age FROM customers;



EXEC sp_columns 'CUSTOMERS';