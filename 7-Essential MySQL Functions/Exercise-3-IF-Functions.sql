-- IF function exercise

USE sql_store;

SELECT 
	product_id,
    name,
    COUNT(*) AS orders,
	IF(COUNT(*) = 1, 'Once', 'Many times') AS frequency
FROM products
JOIN order_items USING (product_id)
GROUP BY product_id, name;

SELECT 
	product_id,
    name,
    (SELECT Count(order_id)
		FROM order_items oi
		WHERE product_id = p.product_id) AS orders,
	IF((SELECT orders) = 1, 'Once', 'Many times') AS frequency
FROM products p