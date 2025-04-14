-- Different RDBMS allows us to define different constraints.

CREATE TABLE CUSTOMERS (
   ID INT NOT NULL UNIQUE,          		--NOT NULL & UNIQUE Key Constraint
   NAME VARCHAR(20) NOT NULL DEFAULT 'RAMKUMAR', 	--Default Constraint
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2)
   PRIMARY KEY (ID)                 --PRIMARY Key Constraint
);

--To create a FOREIGN KEY constraint you need to have the referenced table and column created first.
CREATE TABLE ORDERS (
   OrderID INT NOT NULL,
   DATE DATETIME,
   CUSTOMER_ID INT FOREIGN KEY REFERENCES CUSTOMERS(ID), --FOREIGN Key Constraint is referencing Customers Table's ID Column
   AMOUNT DECIMAL,
   PRIMARY KEY (OrderID)
);


--Check Constraints are used to enforce certain conditions on data in a column or group of columns within rows.
--Check Constraints are used to ensure that values stored in certain columns meet specific conditions.
--You can also use multiple CHECK constraints in one table.
CREATE TABLE PRODUCTS (
    ProductID int not null,
    Price decimal (8,2),
    StockNumber char (10),
    Check (Price > 0),           --CHECK Constraint
    Check (StockNumber like '_%')
    );


-- The INDEX constraints are created to speed up the data retrieval from the database.
-- A table can have a single PRIMARY Key but can have multiple INDEXES.
-- An Index can be Unique or Non Unique based on requirements.
-- You can also specify that the index should be unique by using the UNIQUE keyword with CREATE INDEX statement. 
CREATE [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name [index_type]

-- create an Index on Age Column of the CUSTOMERS table.
CREATE INDEX idx_age ON CUSTOMERS ( AGE );
    

-- Add the new default constraint after 
ALTER TABLE your_table_name
ADD CONSTRAINT your_default_constraint_name DEFAULT your_new_default_value FOR your_column_name;
-- example
ALTER TABLE CUSTOMERS
ADD CONSTRAINT default_name Default 'RAMKumar' For NAME;

-- Any SQL CONSTRAINTS can be dropped using the ALTER TABLE command with the DROP CONSTRAINT option.
ALTER TABLE CUSTOMERS DROP CONSTRAINT PRIMARY KEY;