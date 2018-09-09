create or replace procedure spValorescuenta
(p_codigo string, p_moneda OUT string, 
p_saldo OUT NUMBER) 
IS
BEGIN
    
  select 
    b.VCH_MONEDESCRIPCION, a.DEC_CUENSALDO  
    into p_moneda, p_saldo
    from eureka.CUENTA a 
    inner join eureka.moneda b 
    ON a.CHR_MONECODIGO = b.CHR_MONECODIGO
    where a.CHR_CUENCODIGO = p_codigo;
END;

DECLARE 
    v_moneda char(20);
    v_saldo NUMBER;
BEGIN
    eureka.spvalorescuenta('00100001',v_moneda, v_saldo);
    dbms_output.PUT_LINE('Moneda:' || v_moneda);
    dbms_output.PUT_LINE('Saldo:'  || v_saldo);
END;