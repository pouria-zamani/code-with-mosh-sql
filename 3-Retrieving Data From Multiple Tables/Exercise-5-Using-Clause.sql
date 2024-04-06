-- Outer joins between multiple tables exercise

USE sql_invoicing;

SELECT 
	p.date AS payment_date,
    c.name AS cline_name,
    p.amount,
    pm.name AS payment_method_name
FROM payments p
JOIN clients c USING(client_id)
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id