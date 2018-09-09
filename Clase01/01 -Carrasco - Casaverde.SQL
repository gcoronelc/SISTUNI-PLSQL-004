

--Ejercicio

create or replace function scott.fnPromedio
( 
  p_n1 number, p_n2 number,p_n3 number, p_n4 number,
  e_parcial number, e_final NUMBER
)
return number
is
  promedio number;
begin
  promedio := (p_n1 +p_n2+p_n3+p_n4+e_parcial+e_final)/6;
  return promedio;
end;


select scott.fnPromedio(10,10,10,10,16,14) promedio from DUAL;


--EJERCICIO 2

Create or replace procedure scott.spVenta
(  
  p_cantidad number, p_preciounitario number,
  p_descuento  out  number, p_importe out  NUMBER
)
is begin
IF p_cantidad>=3 THEN 
  p_descuento :=(p_preciounitario*p_cantidad)*0.07;
  p_importe := (p_preciounitario*p_cantidad) - p_descuento; 
ELSE
  p_descuento :=0;
  p_importe := (p_preciounitario*p_cantidad);
END IF;
END;

declare
v_descuento number ;
v_importe number;
begin
scott.spVenta(1,10, v_descuento,v_importe );
dbms_output.put_line('Importe es : '|| v_importe || ' y el Descuento es : '|| v_descuento);
end;
