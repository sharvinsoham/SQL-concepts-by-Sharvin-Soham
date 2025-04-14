-- Copying Data from multiple Tables
-- Using the SQL SELECT INTO statement we can also copy data from multiple tables to a new table.
-- This is accomplished using the JOIN clause which combines the data from multiple tables,
-- (based on a common column AKA FOREIGN KEY).
SELECT column1, column2, ..., columnN
INTO new_table_name
FROM this_table
JOIN table2 ON table1.column =table2.column

-- Combining Tables using LEFT Join
-- Create a new table Customer_orders
-- which includes Name from CUSTOMERS table and customer_ID from ORDERS table where
-- the ID of customers from the CUSTOMERS table matches with the ID of customers from the ORDERS table.
SELECT CUSTOMERS.Name, ORDERS.customer_id
INTO CUSTOMER_ORDERS
FROM CUSTOMERS
LEFT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.customer_id;


-- Self Joining a Table on Itself
SELECT e1.employee_id, e1.first_name + ' '+e1.last_name as employee1, e2
.employee_id, e2.first_name + ' '+e2.last_name as employee2
FROM employees e1 join employees e2 on e1.manager_id=e2.employee_id;

SELECT customers.ID, customers.NAME, orders.AMOUNT
FROM customers
INNER JOIN orders ON customers.ID=orders.CUSTOMER_ID;


-- Joining tables
SELECT c.ID, c.NAME, o.ORDER_DATE
FROM CUSTOMERS c JOIN ORDERS o ON c.ID = o.CUSTOMER_ID;
