BEGIN;
DELETE FROM branch WHERE branch_id = 'b005';
SELECT * FROM branch;
ROLLBACK;
SELECT * FROM branch;

--ROLLBACK deshace los cambios en la base de datos realizados en BEGIN;