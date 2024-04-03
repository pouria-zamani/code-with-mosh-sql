USE sql_store;

SELECT *
FROM orders
WHERE order_date >= '2019-01-01' AND order_date < '2020-01-01'
-- selects orders that placed in 2019