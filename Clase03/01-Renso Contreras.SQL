create or replace procedure SCOTT.prInsert
(empleado number, nombre varchar2, salario number)
is
    v_empl NUMBER(4,0);
    v_nom VARCHAR2(10 BYTE);
    v_salario NUMBER(7,2);
    v_deptno NUMBER;
begin
    insert into SCOTT.EMP(empno,ename,sal) values(empleado,nombre,salario)
    returning empno,ename,sal,deptno into v_empl, v_nom,v_salario,v_deptno;
    commit;
    dbms_output.put_line('Empleado: ' || v_empl);
    dbms_output.put_line('Nombre: ' || v_nom);
    dbms_output.put_line('Salario: ' || v_salario);
    dbms_output.put_line('Deptno: ' || v_deptno);
end;    

exec SCOTT.prInsert(5463,'Juan','2000');