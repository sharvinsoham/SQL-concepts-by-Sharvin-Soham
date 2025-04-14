-- A stored procedure is a prepared SQL code that you can save such that the code can be reused over and over again.

-- CASE 1: If you have an SQL query that you've to write over and over again,
-- save it as a stored procedure, and then just call it to execute it.

-- CASE 2: Stored procedures are also useful for encapsulating complex logic or queries within them.
-- When you need to perform multiple operations on data within a single transaction.
-- or if there is any error handling required.

-- That way, you can easily reuse the code instead of typing it out every time.
-- Stored Procedure Syntax
-- CREATE PROCEDURE procedure_name
-- AS
-- sql_statement
-- GO;
-----------------------------------------------------------
-- In this example, we are going to create a simple stored procedure called "get_employees"
-- which will return all employees from the database table "Employees".
CREATE PROCEDURE get_employees()
BEGIN
SELECT * FROM Employees;
END//
DELIMITER ;
-- Now let's see how to use our new stored procedure!
-- To do so, simply type in:
CALL get_employees();
-- And MySQL will run the "get_employees" stored procedure, returning all the rows from the "Employees" table.

-- If you want to pass parameters to your stored procedure,
-- you would need to modify it slightly like this:
CREATE PROCEDURE get_employees(IN empid INT)
BEGIN
SELECT * FROM Employees WHERE EmployeeID = empid;
END//
DELIMITER ;
-- To use this stored procedure:
-- You need to specify the "empid" parameter when calling the procedure.
CALL get_employee(empid);
-- This will return all the rows from the "employees" table where the "department_id" column matches 10.</s>

-- A common use for stored procedures is to encapsulate database operations so that
-- they can be easily managed as a single unit, rather than being scattered throughout.
-- Example: Adding two numbers together using a stored procedure
CREATE PROCEDURE AddNumbers num1 INT, num2 INT, result BIGINT OUTPUT
AS
BEGIN
SET @result = num1 + num2;
RETURN @result
END;

DELIMITER $$

CREATE PROCEDURE ads
    num1 float,
    @b float,
    @result float OUTPUT
AS
BEGIN
    SET @result = num1 + @b
    RETURN @result
END

DECLARE @result float
EXECUTE add_numbers 5, 10, @result
SELECT @result

-- Calling the stored procedure
CALL AddTwoNumbers(3, 5, @sum);
SELECT @sum;
$$
DELIMITER ;
-- In this example, we created a stored procedure named "AddTwoNumbers" which takes in two input parameters (num1 and num2), both
-- The "IN" keyword specifies an input parameter. This means that the value of this variable will not change after the execution of the store procedure.

-- Another common usage scenario for stored procedures is when you need to update/insert/delete large amounts of records at once.

-- You can also use OUT or INOUT parameters for more complex procedures.
-- However, keep in mind that using them may require some additional work on the MySQL side.
-- For more information, refer to the documentation at http://dev.mysql.com/doc/refman/5.0/en/call