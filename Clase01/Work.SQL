-- Conexion

CONNECT system/oracle

-- Habiliar SCOTT
alter user scott
identified by tiger
account unlock;


-- Vista: dba_users

select username from dba_users order by 1;


-- Para ver valores de los parametros
-- que tienen la cadena name
show parameter name;


-- Consultar el catalogo del esquema
select * from cat;
select * from tab;

-- Bloque Anónimo

begin
  dbms_output.put_line('Hola todos.');
end;

-- Habilitar salidas en consola
set serveroutput on

-- Otro ejemplo
declare
  v_1 number := 40;
  v_2 number := 50;
  v_suma number;
begin
  v_suma := v_1 + v_2;
  dbms_output.put_line('Suma: ' || v_suma);
end;



-- Función

CREATE OR REPLACE FUNCTION scott.fnSuma
( p_n1 NUMBER, p_n2 NUMBER )
RETURN NUMBER
IS
  v_suma NUMBER;
BEGIN
  v_suma := p_n1 + p_n2;
  RETURN v_suma;
END;


SELECT scott.fnSuma( 13, 43 ) suma FROM DUAL;



-- Procedimiento almacenado

CREATE OR REPLACE PROCEDURE scott.spSuma
( p_n1 NUMBER, p_n2 NUMBER, p_suma OUT NUMBER )
IS
BEGIN
  p_suma := p_n1 + p_n2;
END;


DECLARE
  v_suma NUMBER;
BEGIN
  scott.spSuma( 6, 4, v_suma );
  dbms_output.PUT_LINE('Suma: ' || v_suma);
END;









