-- PAQUETE DEMO

CREATE OR REPLACE PACKAGE SCOTT.PKG_MATE IS

FUNCTION FN_SUMAR( P_N1 NUMBER, P_N2 NUMBER ) RETURN NUMBER;

FUNCTION FN_SUMAR( P_N1 NUMBER, P_N2 NUMBER, P_N3 NUMBER) RETURN NUMBER;

END PKG_MATE;
/


CREATE OR REPLACE PACKAGE BODY SCOTT.PKG_MATE IS

FUNCTION FN_SUMAR( P_N1 NUMBER, P_N2 NUMBER ) RETURN NUMBER
IS
  V_SUMA NUMBER;
BEGIN
  V_SUMA := P_N1 + P_N2;
  RETURN V_SUMA;
END;

FUNCTION FN_SUMAR( P_N1 NUMBER, P_N2 NUMBER, P_N3 NUMBER) RETURN NUMBER
IS
  V_SUMA NUMBER;
BEGIN
  V_SUMA := P_N1 + P_N2 + P_N3;
  RETURN V_SUMA;
END;

END PKG_MATE;
/


SELECT SCOTT.PKG_MATE.FN_SUMAR( 45, 34 ) SUMA
FROM DUAL;

SELECT SCOTT.PKG_MATE.FN_SUMAR( 45, 34, 65 ) SUMA
FROM DUAL;

















