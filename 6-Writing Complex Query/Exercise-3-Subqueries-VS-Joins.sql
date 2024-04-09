-- Find customers who have ordered lettuce (id = 3)
--      Select customer_id, first_name, last_name

USE sql_store;

SELECT 
	DISTINCT c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3;

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
WHERE customer_id IN (
	SELECT customer_id
	FROM orders o
	JOIN order_items oi USING (order_id)
	WHERE product_id = 3
)