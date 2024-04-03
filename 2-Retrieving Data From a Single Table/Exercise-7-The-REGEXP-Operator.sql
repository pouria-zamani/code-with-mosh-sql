-- Get the customers whose
--	first names are ELKA or AMBUR				(first)
--	last names end with EY or ON				(second)
--	last names start with MY or contains SE		(third)
--	last names contain B followed by R or U		(fourth)

USE sql_store;

-- (first)

SELECT * 
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';

-- (second)

SELECT * 
FROM customers
WHERE last_name REGEXP 'EY$|ON$';

-- (third)

SELECT * 
FROM customers
WHERE last_name REGEXP '^MY|SE';

-- (fourth)

SELECT * 
FROM customers
WHERE last_name REGEXP 'B[RU]';