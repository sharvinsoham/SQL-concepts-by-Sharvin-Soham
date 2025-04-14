-- 1. Simple Cloning in MySQL copies all data & records into newly created table without 
-- inheriting the indices and AUTO_INCREMENT definitions. 
CREATE TABLE new_table SELECT * FROM original_table;


-- 2. Shallow cloning operation creates a new replica table from the existing table
-- with the column attributes using only the indices and AUTO_INCREMENT definitions
-- syntax to perform shallow cloning in MySQL RDBMS −
CREATE TABLE new_table LIKE original_table;
CREATE TABLE shallow_CUSTOMERS LIKE CUSTOMERS;


-- 3. Following is an example to create a deep clone copy of the existing table.
CREATE TABLE new_table LIKE original_table;
INSERT INTO new_table SELECT * FROM old_table;
-- example
-- First step is to create a shallow clone of the existing table.
CREATE TABLE DEEP_CUSTOMERS LIKE CUSTOMERS;
-- second step is to copy all the records from the CUSTOMERS table to DEEP_CUSTOMERS.
INSERT INTO DEEP_CUSTOMERS SELECT * FROM CUSTOMERS;

-- Table Cloning in SQL Server
-- In SQL server, you can use following query to clone or duplicate any table:
SELECT * INTO new_table FROM existing_table;
-- The above statement will create a new table named "new_table" which has exactly same structure as the "original_table".
--  However, this command only copies the data and not the definition of it, thus, omitting constraints, indexes etc, if any.
-- These constraints or other definitions need to be added separately if one wishes to have the exact same structure of the original table in their new table.