CREATE OR REPLACE TRIGGER scott.tr_test_emp
AFTER INSERT OR DELETE OR UPDATE ON scott.emp
BEGIN
	IF inserting THEN 
	   dbms_output.put_line('Nuevo mepleado');
	ELSIF updating then
  	   dbms_output.put_line('Modificado mepleado');
	ELSIF deleting THEN 
	   dbms_output.put_line('Borrado mepleado');
	END IF;
END;


