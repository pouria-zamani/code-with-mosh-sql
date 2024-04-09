-- Date functions exercise

USE sql_store;

SELECT *
FROM orders
WHERE YEAR(order_date) = YEAR(NOW())