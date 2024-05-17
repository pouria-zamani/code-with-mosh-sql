-- Write a query to find customers with more than
-- 1000 points

USE sql_store;

Explain 
SELECT customer_id
FROM customers c
WHERE c.points > 1000;

CREATE INDEX idx_points ON customers (points);
