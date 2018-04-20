SELECT COUNT (*) FROM property4rent WHERE rent > 350;

SELECT  COUNT (DISTINCT property_id) FROM viewing WHERE viewdate BETWEEN '1-apr-04' AND '31-may-04';

SELECT COUNT (position), SUM(salary) FROM staff WHERE position = 'manager';

SELECT MIN(salary),MAX(salary),AVG(salary) FROM staff;