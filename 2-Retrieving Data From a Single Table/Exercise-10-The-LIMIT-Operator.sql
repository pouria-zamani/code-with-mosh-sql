-- Get the top 3 loyal customers

USE sql_store;

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3