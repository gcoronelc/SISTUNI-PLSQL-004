/*
Ejemplo de %ROWTYPE
*/


CREATE OR REPLACE PROCEDURE SCOTT.PR_SHOW_EMP
( P_EMPNO SCOTT.EMP.EMPNO%TYPE )
IS
  R SCOTT.EMP%ROWTYPE;
BEGIN
  SELECT * INTO R FROM SCOTT.EMP 
  WHERE EMPNO = P_EMPNO;
  DBMS_OUTPUT.PUT_LINE('CODIGO: ' || R.EMPNO);
  DBMS_OUTPUT.PUT_LINE('NOMBRE: ' || R.ENAME);
  DBMS_OUTPUT.PUT_LINE('SALARIO: ' || R.SAL);
END;


SELECT * FROM SCOTT.EMP;

CALL SCOTT.PR_SHOW_EMP(7369);

CALL SCOTT.PR_SHOW_EMP(9999);


/*
Excepciones
*/

CREATE OR REPLACE PROCEDURE SCOTT.PR_SHOW_EMP
( P_EMPNO SCOTT.EMP.EMPNO%TYPE )
IS
  R SCOTT.EMP%ROWTYPE;
BEGIN
  SELECT * INTO R FROM SCOTT.EMP 
  WHERE EMPNO = P_EMPNO;
  DBMS_OUTPUT.PUT_LINE('CODIGO: ' || R.EMPNO);
  DBMS_OUTPUT.PUT_LINE('NOMBRE: ' || R.ENAME);
  DBMS_OUTPUT.PUT_LINE('SALARIO: ' || R.SAL);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Empleado no existe.');
END;

CALL SCOTT.PR_SHOW_EMP(9999);



create or replace procedure scott.UpdateSalEmp
(codigo scott.emp.empno%Type, salario scott.emp.sal%Type)
is
    cont Number;
begin
    
    select count(*) into cont
    from scott.emp where Empno = codigo;
    
    if(cont != 1) then
        raise_application_error(-20000,'Codigo incorrecto.');
    end if;
    
    update scott.Emp set Sal = salario
    where Empno=codigo;
    
    commit;
    
    dbms_output.PUT_LINE('proceso OK');
    
EXCEPTION

  when others then
        dbms_output.put_line('Codigo no existe');
        raise_application_error(-20000,'Error en los datos.');
end;

SELECT * FROM scott.Emp;

call scott.UpdateSalEmp(7369, 890 );





create or replace procedure scott.UpdateSalEmp
(codigo scott.emp.empno%Type, salario scott.emp.sal%Type)
is
    cont Number;
begin
    
    select count(*) into cont
    from scott.emp where Empno = codigo;
    
    if(cont != 1) then
        raise_application_error(-20000,'Codigo incorrecto.');
    end if;
    
    update scott.Emp set Sal = salario
    where Empno=codigo;
    
    commit;
    
    dbms_output.PUT_LINE('proceso OK');
 
EXCEPTION

  when others then
    dbms_output.put_line('Codigo no existe');
    raise_application_error(sqlcode,sqlerrm);
end;

SELECT * FROM scott.Emp;

call scott.UpdateSalEmp(7369, 890 );


SELECT * FROM SCOTT.EMP FOR UPDATE;

ROLLBACK;

