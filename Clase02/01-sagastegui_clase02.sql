
CREATE OR REPLACE FUNCTION SCOTT.fnLetra(p_num NUMBER) 
RETURN VARCHAR2
IS
  v_letra VARCHAR2(30);
BEGIN
  IF 	  p_num=10 THEN v_letra:='DIEZ';
  ELSIF p_num=11 THEN v_letra:='ONCE';
  ELSIF p_num=12 THEN v_letra:='DOCE';
  ELSIF p_num=13 THEN v_letra:='TRECE';
  ELSIF p_num=14 THEN v_letra:='CATORCE';
  ELSIF p_num=15 THEN v_letra:='QUINCE';
  ELSIF p_num=16 THEN v_letra:='DIESCISEIS';
  ELSIF p_num=17 THEN v_letra:='DIESCISIETE';
  ELSIF p_num=18 THEN v_letra:='DIESCIOCHO';
  ELSIF p_num=19 THEN v_letra:='DIESCINUEVE';
  ELSE 
    v_letra := 'EL VALOR NO SE ENCUENTRA';
  END if;
  RETURN v_letra;
END;



SELECT SCOTT.fnLetra (8) FROM DUAL;

