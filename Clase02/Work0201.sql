
CREATE OR REPLACE PROCEDURE scott.prDemo01(
  p_codigo scott.emp.EMPNO%TYPE,
  p_nombre scott.emp.ENAME%TYPE 
)
IS
BEGIN
  INSERT INTO scott.EMP(EMPNO,ENAME)
  VALUES(p_codigo, p_nombre);
  COMMIT;
END;              

call scott.prDEMO01(6666,'GUSTAVO');

SELECT * FROM EMP;


/*
Ejemplo 01
Crear una funcion para averiguar si 
un número es par o impar.
*/

CREATE OR REPLACE FUNCTION 
fnPar( p_num NUMBER ) RETURN BOOLEAN
IS
  v_par BOOLEAN := FALSE;
BEGIN
  IF ( MOD(p_num,2) = 0 ) THEN
    v_par := TRUE;
  END IF;
  RETURN v_par;
END;

BEGIN
  IF( SCOTT.fnPar(5) ) THEN
    DBMS_OUTPUT.PUT_LINE('ES PAR');
  ELSE
    DBMS_OUTPUT.PUT_LINE('NO ES PAR');
  END IF;
END;


CREATE OR REPLACE FUNCTION 
fnPar( p_num NUMBER ) RETURN BOOLEAN
IS
  v_par BOOLEAN;
BEGIN
  v_par := ( MOD(p_num,2) = 0 );
  RETURN v_par;
END;


BEGIN
  IF( SCOTT.fnPar(8) ) THEN
    DBMS_OUTPUT.PUT_LINE('ES PAR');
  ELSE
    DBMS_OUTPUT.PUT_LINE('NO ES PAR');
  END IF;
END;


/*
Ejercicio 01
Desarrollar las siguientes funciones:
- fnMCD: Calcula el MCD de dos números
- fnMCM: Calcula el MCM de dos números
*/











