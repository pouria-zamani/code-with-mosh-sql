-- Case operator exercise

USE sql_store;

SELECT 
	Concat(first_name, ' ', last_name) AS customer,
    points,
    CASE 
		WHEN points >= 3000 THEN 'Gold'
        WHEN points >= 2000 THEN 'Silver'
        ELSE 'Bronze'
	END AS badge
FROM customers
ORDER BY points DESC