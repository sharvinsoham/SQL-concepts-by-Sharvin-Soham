-- Some databases sort the query results in an ascending order by default.
-- To sort the data in ascending order, we use the keyword ASC.
-- To sort the data in descending order, we use the keyword DESC.
SELECT * FROM CUSTOMERS ORDER BY NAME;
-- The above SQL statement will retrieve all columns from the "CUSTOMERS" table
-- and sort them alphabetically (in ascending order) based on the column named "NAME".
-- Let's try to sort the data in descending order:
SELECT * FROM CUSTOMERS ORDER BY NAME DESC;

-- Inserting Top N Rows
-- The LIMIT clause filters the number of rows from the query.
INSERT INTO BUYERS 
SELECT * FROM CUSTOMERS 
ORDER BY ID ASC LIMIT 3;