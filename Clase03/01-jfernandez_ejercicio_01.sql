
CREATE OR REPLACE PROCEDURE scott.InserEmp(p_empno number, p_ename VARCHAR2,p_sal NUMBER)
IS 
v_id NUMBER;

BEGIN
    
   
    INSERT INTO scott.emp(empno, ename, sal) VALUES (p_empno, p_ename, p_sal)
    returning empno INTO v_id;
    dbms_output.PUT_LINE(v_id);

END;

call scott.InserEmp(5,'juan',10);

SELECT * FROM EMP;