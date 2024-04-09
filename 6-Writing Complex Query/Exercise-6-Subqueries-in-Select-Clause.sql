-- Subqueries in the select clause exercise

USE sql_invoicing;

SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total) 
		FROM invoices i
		WHERE client_id = c.client_id) AS total_sales,
	(SELECT AVG(invoice_total) 
		FROM invoices) AS invoice_average,
	(SELECT total_sales - invoice_average) AS difference 
FROM clients c