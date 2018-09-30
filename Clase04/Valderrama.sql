CREATE OR REPLACE TRIGGER SCOTT.tr_test_temp
AFTER INSERT OR DELETE OR UPDATE ON SCOTT.EMP
FOR EACH ROW
BEGIN
	IF inserting THEN
		dbms_output.PUT_LINE('nuevo empleado se ha insertado');
	ELSIF updating THEN
		dbms_output.PUT_LINE('nuevo empleado se ha modificado');
	ELSIF deleting THEN
		dbms_output.PUT_LINE('nuevo empleado se ha eliminado');
	END IF;
END tr_test_emp;
/


update scott.emp 
set SAL = SAL * 1.50;

select * from scott.emp;

rollback;


