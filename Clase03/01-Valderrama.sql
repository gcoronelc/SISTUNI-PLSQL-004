create or replace procedure prgrabar(p_empno number, p_nombre varchar2, p_sal number)
is
    v_empno number;
    v_name  varchar2(100);
    v_sal   number;
begin
    insert into scott.emp(empno, ename,sal) 
    values(p_empno, p_nombre, p_sal)
    returning empno, ename, sal into v_empno, v_name, v_sal;
    commit;
    dbms_output.put_line('codigo:' || v_empno);
    dbms_output.put_line('empleado:' || v_name);
    dbms_output.put_line('salario:' || v_sal);
end;
SELECT * FROM scott.emp;
call scott.prgrabar(3791,'mauricio',3455);