CREATE OR REPLACE function fnPromedio
(p_n1 number,p_n2 number,p_n3 number,p_n4 number,
p_pa number,p_fi number)
RETURN NUMBER
IS
  v_prom number;
BEGIN
    v_prom := ((p_n1 + p_n2 + p_n3 + p_n4) + (p_pa + p_fi)) / 6;
    RETURN v_prom;
END;

SELECT fnpromedio(17,15,11,12,19,20) as Nota_final from DUAL;

create or replace procedure spVentatotal
(p_venta NUMBER, p_pormayor NUMBER, 
 p_descuento out NUMBER, p_final out number)
IS
BEGIN
  p_descuento :=0;
  if(p_pormayor=1) then
    p_descuento:= p_venta * 0.07;
  end if;
  p_final := p_venta - p_descuento;
END;

declare 
    p_dsc NUMBER;
    p_venta NUMBER;
begin
    scott.SPVENTATOTAL(100,1,p_dsc, p_venta);
    dbms_output.PUT_LINE('DESCUENTO:' || p_dsc);
    dbms_output.PUT_LINE('TOTAL:' || p_venta);
end;