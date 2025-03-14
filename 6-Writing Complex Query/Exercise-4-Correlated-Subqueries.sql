-- Get invoices that are larger than the
-- clients's average invoice amount

USE sql_invoicing;

SELECT *
FROM invoices i
WHERE invoice_total > (
	SELECT AVG(invoice_total)
    FROM invoices 
    WHERE client_id = i.client_id
)