-- Return all the products
--	name
--	unit price
--	new price ( unit price * 1.1)

USE sql_store;

SELECT 
	name,
    unit_price AS old_price,
    unit_price * 1.1 AS new_price
FROM products
