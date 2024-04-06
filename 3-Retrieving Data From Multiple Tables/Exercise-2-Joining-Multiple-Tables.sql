-- Multiple tables join

USE sql_invoicing;

SELECT 
	p.payment_id,
    p.invoice_id,
	c.client_id,
    c.name AS client_name,
	pm.payment_method_id,
	pm.name AS payment_method_name,
    p.date,
    p.amount
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN clients c
	ON p.client_id = c.client_id
