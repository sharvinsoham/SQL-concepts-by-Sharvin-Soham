-- The SQL ORDER BY clause is used to sort the data.
-- In ascending order or descending order or on the basis of first come first serve
-- By default, some databases sort the query results in an ascending order.
SELECT column-list 
FROM table_name 
[WHERE condition] 
[ORDER BY column1, column2, .. columnN] [ASC | DESC];


-- It sorts by default or by specifying the "ASC" keyword in the clause condition
SELECT * FROM CUSTOMERS ORDER BY NAME;

-- It Sorts the records in a database table in descending order:
SELECT * FROM CUSTOMERS ORDER BY NAME DESC;

-- Sorting Results in a Preferred Order
-- Use the CASE statement within the ORDER BY clause.
-- Specify the values in the clause along with the position they are supposed to be sorted in;
-- if the values are not given any number, they are automatically sorted in ascending order.
SELECT EMPLOYEE_ID, SALARY FROM EMPLOYEES
ORDER BY (CASE WHEN SALARY < 500 THEN 1 ELSE 2 END), SALARY ASC;

SELECT * FROM CUSTOMERS
ORDER BY ( CASE ADDRESS
   WHEN 'DELHI' 	 THEN 1
   WHEN 'BHOPAL' 	 THEN 2
   WHEN 'KOTA' 	 THEN 3
   WHEN 'AHMEDABAD' THEN 4
   WHEN 'Hyderabad' 	THEN 5
   ELSE 100 END) ASC, ADDRESS DESC;

-- If you want to use multiple columns for sorting, separate them using commas and specify each column followed by either ASC or DESC keywords.
-- To use multiple columns for sorting you can separate them using commas and specify the direction after each column name.



