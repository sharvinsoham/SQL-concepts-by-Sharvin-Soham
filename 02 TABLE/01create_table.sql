-- Following is the Basic CREATE TABLE statement

-- CREATE TABLE table_name(
--    column1 datatype,
--    column2 datatype,
--    column3 datatype WITH DEFAULT constant,
--    column4 datatype NOT NULL
--    .....
--    columnN datatype,
--    PRIMARY KEY( one or more columns )
-- );

CREATE TABLE CUSTOMERS(
   ID          INT NOT NULL,
   NAME        VARCHAR (20) NOT NULL,
   AGE         INT NOT NULL,
   ADDRESS     CHAR (25),
   SALARY      DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
CREATE TABLE BUYERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
CREATE TABLE ORDERS(
   ORDER_ID    INT NOT NULL,
   DATE VARCHAR (20) NOT NULL,
   CUSTOMER_ID INT NOT NULL,
   AMOUNT DECIMAL(18,2),
);

-- To verify the table
DESC CUSTOMERS;

-- Creating a Table from an Existing Table
-- CREATE TABLE NEW_TABLE_NAME AS
-- SELECT [column1, column2...columnN]
-- FROM EXISTING_TABLE_NAME
-- WHERE Condition;

CREATE TABLE BUYERS AS
SELECT ID, NAME, AGE
FROM CUSTOMERS;