-- Inner Join Exercise

USE sql_store;

SELECT order_id, p.product_id, p.name AS product_name, quantity, oi.unit_price
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id