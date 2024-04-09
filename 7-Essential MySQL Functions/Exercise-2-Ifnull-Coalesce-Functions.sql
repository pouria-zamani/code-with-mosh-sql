-- IFNULL and COALESCE functions exercise

USE sql_store;

SELECT 
	Concat(first_name, ' ', last_name) AS customer,
    COALESCE(phone, 'Unknown') AS phone
FROM customers