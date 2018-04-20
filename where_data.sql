SELECT * FROM staff WHERE salary > 10000;

SELECT * FROM branch WHERE city = 'london' OR city = 'glasgow';

SELECT fname,lname,position FROM staff WHERE salary > 20000 AND salary < 30000;

SELECT fname,lname,position FROM staff WHERE position IN ('manager','supervisor');

SELECT fname,lname,address FROM privateowner WHERE address LIKE '%glasgow%';

SELECT client_id,viewdate FROM viewing WHERE comment IS NULL;

