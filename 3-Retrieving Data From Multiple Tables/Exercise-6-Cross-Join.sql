-- Cross join exercise
-- Do a cross join between shipers and products
-- using the implicit syntax
-- and then using the explicit syntax

-- implicit
USE sql_store;

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh, products p;

-- explicit
USE sql_store;

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh
CROSS JOIN products p

