
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
Desarrollar una función que permita obtener
un numero de 0 al 9 en letras.
*/

/*
Ejercicio 02
Desarrollar una función que permita obtener
un numero de 10 al 19 en letras.
*/


CREATE OR REPLACE PROCEDURE scott.prDemoWhile( p_num NUMBER )
IS
  v_cont NUMBER := 1;
BEGIN
  WHILE (v_cont <= p_num) LOOP
    dbms_output.PUT_LINE('PERU Campeon');
    v_cont := v_cont + 1;
  END LOOP;
END;

CALL scott.prDemoWhile(15);


CREATE OR REPLACE PROCEDURE prDemofor( p_tope NUMBER )
IS
BEGIN
  FOR v_cont IN REVERSE 1 .. p_tope LOOP
    dbms_output.PUT_LINE( v_cont || '.- PERU Campeon');
  END LOOP;
END;


call prDemofor(5);

/*
5.- PERU Campeon
4.- PERU Campeon
3.- PERU Campeon
2.- PERU Campeon
1.- PERU Campeon
*/


/*
Ejercicio 03
Desarrollar las siguientes funciones:
- fnMCD: Calcula el MCD de dos números
- fnMCM: Calcula el MCM de dos números
*/











