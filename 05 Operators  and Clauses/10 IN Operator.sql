-- Using a Subquery to filter results
SELECT * FROM Customers WHERE customer_id IN (SELECT customer_id FROM Orders);