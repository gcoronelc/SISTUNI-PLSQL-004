create or replace function scott.fnLetras1(p_num number)
return char
is
    v_result char(20):='';
BEGIN
    case p_num
    when 0 then v_result:='cero';
    when 1 then v_result:='uno';
    when 2 then v_result:='dos';
    when 3 then v_result:='tres';
    when 4 then v_result:='cuatro';
    when 5 then v_result:='cinco';
    when 6 then v_result:='seis';
    when 7 then v_result:='siete';
    when 8 then v_result:='ocho';
    when 9 then v_result:='nueve';
    else v_result:='';         
    end case;
    return v_result;
END;

select scott.fnletras1(4) from dual;


create or replace function scott.fnLetras2(p_num number)
return char
is
    v_result char(20):='';
BEGIN
    case p_num
    when 10 then v_result:='diez';
    when 11 then v_result:='once';
    when 12 then v_result:='doce';
    when 13 then v_result:='trece';
    when 14 then v_result:='catorece';
    when 15 then v_result:='quince';
    when 16 then v_result:='dieciseis';
    when 17 then v_result:='diecisiete';
    when 18 then v_result:='dieciocho';
    when 19 then v_result:='diecinueve';
    else v_result:='';         
    end case;
    return v_result;
END;

select scott.fnletras2(19) from dual;

create or replace function fnMCD(
    p_n1 number, 
    p_n2 number) 
return char
is
    v_n1 number := p_n1;
    v_n2 number := p_n2;
    v_a number := 0;
BEGIN
    while (v_n1 mod v_n2 <>0) 
    loop  
        v_a := v_n1;
        v_n1:= v_n2;
        v_n2:= v_a MOD v_n2;
    end loop;
    return 'el MCD ES :' || v_n2;
END;

select fnMCD(15,20) from dual;