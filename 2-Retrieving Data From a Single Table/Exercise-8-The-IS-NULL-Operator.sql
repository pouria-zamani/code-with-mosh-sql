-- Get the orders that are not shipped

USE sql_store;

SELECT *
FROM orders
WHERE shipper_id IS NULL