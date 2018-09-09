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






