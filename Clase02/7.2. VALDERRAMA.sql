create or replace procedure scott.UpdateSalEmp
(codigo scott.emp.empno%Type, salario scott.emp.sal%Type)
is
    cont Number;
begin
    
    select count(*) into cont
    from scott.emp where Empno = codigo;
    
    if(cont=0) then
        Raise No_Data_Found;
    end if;
    
    update scott.Emp set Sal = salario
    where Empno=codigo;
    
    commit;
    
    dbms_output.PUT_LINE('proceso OK');
    
EXCEPTION

    when No_Data_Found then
        dbms_output.put_line('Codigo no existe');
        
end;

SELECT * FROM scott.Emp;

call scott.UpdateSalEmp(739969, 880 );
