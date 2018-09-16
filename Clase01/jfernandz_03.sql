create or replace procedure EUREKA.spcuenta (p_codigo string, p_cuenta out string)
is

begin
   SELECT c.chr_cuencodigo||' - '||M.VCH_MONEDESCRIPCION 
   into p_cuenta
   FROM EUREKA.CUENTA C INNER JOIN EUREKA.MONEDA M ON C.CHR_MONECODIGO = m.chr_monecodigo
   where c.chr_cuencodigo = p_codigo;
   
end;

set serveroutput on
declare 
v_cuenta varchar(50);
begin
 EUREKA.spcuenta('00100001', v_cuenta);
 dbms_output.put_line(v_cuenta);
end;

