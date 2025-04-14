-- ALTER TABLE table_name [alter_option ...];

-- To add a new column
-- ALTER TABLE table_name ADD column_name datatype;
ALTER TABLE CUSTOMERS ADD GENDER char(1);

-- To drop a column
ALTER TABLE CUSTOMERS DROP COLUMN column_name ;

-- To rename a column
EXEC sp_rename 'Employees.OldName', 'NewName', 'COLUMN';

-- To change the data type of a column
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type;

-- To add an index
-- ALTER TABLE table_name ADD INDEX index_name [index_type] 
ALTER TABLE CUSTOMERS ADD INDEX name_index (NAME);

--To drop an index
ALTER TABLE CUSTOMERS DROP INDEX name_index;

--To add an primary key
ALTER TABLE table_name 
ADD CONSTRAINT constraint_name
PRIMARY KEY (column1, column2);


-- To drop a primary key
ALTER TABLE table_name DROP PRIMARY_KEY;
ALTER TABLE EMPLOYEES DROP PRIMARY KEY;

-- To add a CONSTRAINT
ALTER TABLE table_name 
ADD CONSTRAINT constraint_name 
UNIQUE(column1, column2);


--To drop a constraint
ALTER TABLE table_name DROP CONSTRAINT constraint_name;

-- --TO VERIFY RUN
SELECT * FROM CUSTOMERS;