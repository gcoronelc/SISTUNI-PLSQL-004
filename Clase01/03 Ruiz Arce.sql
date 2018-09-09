CREATE OR REPLACE PROCEDURE EUREKA.sp_consualtar_saldo
(cod NUMBER, saldo OUT NUMBER, tipo_moneda OUT NUMBER )
IS
BEGIN

SELECT DEC_CUENSALDO,CHR_MONECODIGO  INTO saldo,tipo_moneda   
FROM cuenta WHERE CHR_CUENCODIGO=cod;
dbms_output.PUT_LINE('Saldo: ' || saldo);
dbms_output.PUT_LINE('TipoMoneda: ' || tipo_moneda);

END;


DECLARE 
saldo NUMBER;
tipo_moneda NUMBER;
BEGIN
EUREKA.sp_consualtar_saldo('00100002',saldo,tipo_moneda);
END;