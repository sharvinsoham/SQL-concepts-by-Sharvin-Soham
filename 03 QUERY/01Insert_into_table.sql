-- If you want to insert data from one database to another then use following syntax
-- INSERT INTO db1.tbl1 SELECT * FROM db2.tbl2;

-- The SQL INSERT INTO Statement is used to add new rows/records of data into a table in the database.
-- There are two types of syntax for inserting values into the "CUSTOMERS" table:

-- Syntax 1: Using column names (also called as named columns)
-- where column1, column2,...columnN are the names of the columns into which you want to insert

-- INSERT INTO Table_Name  (ColumnName1, ColumnName2.....ColumnNameN)
-- VALUES (value1, value2...valueN);
-- In this method, we have explicitly mentioned each column name with its corresponding value.
-- This makes it easy to understand which column receives what value.
-- example
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES(1,'Ruchita',25,'Rosera',4000000.00),
(2,'Komal',26,'Rosera', 1000100.00),
(3,'Soumya',22, 'Hyderabad', 4500.00 );


-- Syntax 2: Without using column names (also called positional or indexed columns).
-- Syntax 2: Using positional notation (also called as positional or numbered columns)
-- Here, the order of values should be same as the order of columns in the table definition.

-- INSERT INTO Table_Name VALUES(Value1, Value2....Valuen);
-- In this method, we don't mention any column name and just list the values in the order they appear in the table definition.
-- where N represents the ordinal position of the column in the table
-- example
INSERT INTO CUSTOMERS VALUES
(9, 'Francisco',45,'Madrid',50000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(58, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 ),
(7, 'Muffy', 24, 'Indore', 10000.00 );

INSERT INTO ORDERS VALUES
(102, '2009-10-08 00:00:00', 3, 3000.00),
(100, '2009-10-08 00:00:00', 3, 1500.00),
(101, '2009-11-20 00:00:00', 2, 1560.00),
(103, '2008-05-20 00:00:00', 4, 2060.00);

-- Inserting Data into a Table Using Another Table
-- Syntax 1: The INSERT INTO... SELECT Statement
-- INSERT INTO new_table (column1, column2)
-- SELECT column1, column2, ...columnN
-- FROM second_table
-- [WHERE condition];

-- Limitations and Restrictions on the INSERT INTO statement
-- You cannot use the INSERT INTO statement to retrieve data from another database.
-- If you need to perform such operations, consider using federated tables instead.
-- A single INSERT INTO statement can contain multiple rows separated by commas. However, if any row violates constraints, no rows will be inserted.
-- To create a federated table, see CREATE TABLE.
-- You can also refer to MySQL documentation for more information about limitations and restrictions on the INSERT INTO statement.</s>
INSERT INTO BUYERS SELECT * FROM CUSTOMERS;

-- Insert Data Only in Specified Columns in MySQL
INSERT INTO BUYERS (ID, NAME, AGE) 
SELECT ID, NAME, AGE
FROM CUSTOMERS;

-- Inserting Specific Records
INSERT INTO NAMESTARTSWITH_K
SELECT * FROM CUSTOMERS
WHERE NAME LIKE 'k%';

-- Copying Data From Specific Columns in MS SQL SERVER
SELECT column1, column2, ....., columnN
INTO new_table_name
FROM existing_table_name;
-- A new table is created with only columns name provided from the existing table.

-- To Copy Specific Records into a new_table, add a where clause to SELECT INTO statement:
SELECT *
INTO NameStartsWith_K
FROM CUSTOMERS
WHERE NAME LIKE 'k%';
--Withoout where clause it's same as table cloning; Refer Table cloning

-- Syntax 2: The INSERT INTO... TABLE Statement
-- If you have two tables structure exactly same,
-- then instead of selecting specific columns you can insert
-- the contents of one table into another using the INSERT...TABLE statement.

INSERT INTO first_table TABLE second_table;
INSERT INTO BUYERS TABLE CUSTOMERS;

