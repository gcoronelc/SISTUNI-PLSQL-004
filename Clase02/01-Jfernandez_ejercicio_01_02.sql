
CREATE OR REPLACE function scott.fnMCD(
p_pnumero NUMBER,
p_snumero NUMBER
) RETURN NUMBER

IS
 v_dividendo NUMBER(5,2);
 v_divisor   NUMBER(5,2);
 fin BOOLEAN := TRUE;
 v_mcm NUMBER(10,2);
 
BEGIN
    v_dividendo := greatest(p_pnumero, p_snumero);
    v_divisor   := least(p_pnumero, p_snumero);
    
    IF mod(v_dividendo,MOD(v_dividendo,v_divisor)) = 0 THEN
       v_mcm := MOD(v_dividendo,v_divisor);
    
    END IF;
    
    RETURN v_mcm;

END;

SELECT fnMCD(48,60) FROM dual

CREATE OR REPLACE function scott.fnMCMi(
p_pnumero NUMBER,
p_snumero NUMBER
) RETURN NUMBER

IS
 v_mcm NUMBER(10,2);
 
BEGIN
    v_mcm := (p_pnumero*p_snumero)/fnMCD(p_pnumero,p_snumero);   
    RETURN v_mcm; 

END;

SELECT fnMCmi(48,60) FROM dual