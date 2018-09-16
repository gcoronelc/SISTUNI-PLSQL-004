-- Revisar

CREATE OR REPLACE function scott.nLetras(
p_numero NUMBER
) RETURN VARCHAR2
IS
  v_letra VARCHAR2(30);
  v_valida NUMBER(10,2):=0;
  
BEGIN
    v_valida := p_numero/10;

    IF v_valida < 0 OR v_valida >= 2  THEN
       v_letra:= 'Fuera de rango';
       RETURN v_letra;
    END IF;
    
    IF v_valida <= 1 THEN
       
       v_letra:= CASE p_numero
                    WHEN 0 THEN 'Cero'
                    WHEN 1 THEN 'Uno'
                    WHEN 2 THEN 'Dos'
                    WHEN 3 THEN 'Tres'
                    WHEN 4 THEN 'Cuatro'
                    WHEN 5 THEN 'Cinco'
                    WHEN 6 THEN 'Seis'
                    WHEN 7 THEN 'Siete'
                    WHEN 8 THEN 'Ocho'
                    WHEN 9 THEN 'Nueve'
                    WHEN 10 THEN 'Diez'
                  END;   
       RETURN v_letra;
    END IF;
    
    IF v_valida > 1 then 
    
    v_letra:= CASE MOD(p_numero,10)
                 WHEN 6 THEN 'Diez y Seis'
                 WHEN 7 THEN 'Diez y Siete'
                 WHEN 8 THEN 'Diez y Ocho'
                 WHEN 9 THEN 'Diez y Nueve'
                 ELSE 'fuera de rango'
               END;  
    END IF;
    
    RETURN v_letra;

END;

SELECT nLetras(8) FROM DUAL;












