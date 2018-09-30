create or replace View scott.v_empleados as
select e.empno, e.ename, d.deptno, d.dname
from scott.emp e 
inner join scott.dept d on e.deptno = d.deptno;




CREATE OR REPLACE TRIGGER scott.tr_vista
INSTEAD OF INSERT OR DELETE ON scott.v_empleados
FOR EACH ROW
DECLARE 
  cuenta NUMBER;
BEGIN
	IF inserting THEN
		SELECT count(*) INTO cuenta FROM scott.DEPT WHERE DEPTNO = :NEW.deptno;
		IF cuenta = 0 THEN
			INSERT INTO scott.DEPT(deptno, dname) VALUES(:NEW.deptno, :NEW.dname);
		END IF;
		
		SELECT count(*) INTO cuenta FROM scott.EMP WHERE EMPNO = :new.empno;
		IF cuenta = 0 THEN
			INSERT INTO scott.EMP(empno, ename, deptno) VALUES(:NEW.empno, :new.ename, :NEW.deptno);
		END IF;
	ELSIF deleting THEN
		DELETE FROM scott.EMP WHERE EMPNO = :old.empno;
	END IF;
END tr_vista;


SELECT * FROM scott.v_empleados;

INSERT INTO scott.v_empleados 
VALUES(8899,'JAIMITO',10,'CUALQUIERA');

COMMIT;




