-- The SQL DROP VIEW statement is used to delete an existing view, along with its definition and other information.
-- Once the view is dropped, all the permissions for it will also be removed.
-- We can also drop indexed views with this statement.

-- When a table is dropped using the DROP TABLE command and if it has a view associated to it,
-- this view must be dropped explicitly using the DROP VIEW command.

-- The basic syntax of this DROP VIEW statement is as follows:
DROP VIEW view_name;

-- If you try to drop a view that does not exist in the database, without using the IF EXISTS clause, An error will be generated.
-- While deleting an existing view, you can use the IF EXISTS clause in the DROP VIEW statement.
DROP VIEW [IF EXISTS] view_name;
DROP VIEW IF EXISTS DEMO_VIEW;


-- To delete specific rows in a view, you can use the DELETE statement instead.
DELETE FROM CUSTOMERS_VIEW3 WHERE AGE = 22;

-- DELETE statement deletes the records while the definition of the view remains unchanged.
-- And note that if a record is deleted from a view, it is also deleted from its corresponding base table.
