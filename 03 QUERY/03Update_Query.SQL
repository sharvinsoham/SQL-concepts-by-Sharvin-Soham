-- The SQL UPDATE Statement is used to modify the existing records in a table.
-- This statement is a part of Data Manipulation Language (DML).
-- It only modifies the data present in a table without affecting the table's structure.

-- To filter records that needs to be modified, you can use a WHERE clause with UPDATE statement.
-- UPDATE table_name
-- SET column1 = value1, column2 = value2,..., columnN = valueN
-- WHERE [condition];

-- Using a WHERE clause, you can either update a single row or multiple rows.
-- You can also specify more than one column and its corresponding values using comma-separated syntax:
UPDATE CUSTOMERS SET ADDRESS='PUNE', SALARY += 5500 WHERE ID =2;    --single row update
UPDATE CUSTOMERS SET SALARY = SALARY + 5500 WHERE AGE>=30;          --multiple row update

-- If no condition is specified in the WHERE clause, all rows will be updated by default.
UPDATE CUSTOMERS SET AGE = AGE+5, SALARY = SALARY+3000;
-- In this example, it increases age by 5 for each customer and adds $3000 to salary for each customer.


-- Updating Records in a Table with the Result of an SQL Query
UPDATE customers
SET country='USA' 
WHERE country=(SELECT country FROM orders GROUP BY country LIMIT 1);

UPDATE customers
SET country='USA'
WHERE country=(SELECT country FROM orders GROUP BY country HAVING count(country) > 10);</s>   </s>
