-- Write a stored procedure to return invoices
-- for a given client
-- get_invoices_by_client

USE sql_invoicing;

DELIMITER $$
CREATE PROCEDURE get_invoices_by_client
(
	client_id INT
)
BEGIN
	SELECT *
	FROM invoices i
	WHERE i.client_id = client_id;
END$$

DELIMITER ;