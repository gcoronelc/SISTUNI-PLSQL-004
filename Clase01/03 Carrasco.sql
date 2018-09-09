Create or replace procedure eureka.spConsultaCuenta
(p_cuenta string, p_moneda out string, p_saldo out number )
is 

begin

select DEC_CUENSALDO into p_saldo
from EUREKA.CUENTA where CHR_CUENCODIGO=p_cuenta;

select m.vch_monedescripcion into p_moneda
from EUREKA.CUENTA c 
join EUREKA.MONEDA m on (c.CHR_MONECODIGO=m.CHR_MONECODIGO)
where CHR_CUENCODIGO=p_cuenta;

END;

declare
p_moneda string(8) ;
p_saldo number;
begin
eureka.spConsultaCuenta('00100001', p_moneda,p_saldo );
dbms_output.put_line('El saldo de la cuenta es  : '|| p_saldo || ' '|| p_moneda);
end;



