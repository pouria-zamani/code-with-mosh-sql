-- Get the customers whose
-- addresses contain TRAIL or AVENUE	(first)
-- phone numbers end with 9				(second)


-- first
USE sql_store;

SELECT *
FROM customers
WHERE 	address LIKE'%TRAIL%' OR 
		address LIKE '%AVENUE%';

-- second

SELECT *
FROM customers
WHERE phone LIKE '%9'