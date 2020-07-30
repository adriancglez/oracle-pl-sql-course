SET SERVEROUTPUT ON;

-- Primer bloque
BEGIN
    dbms_output.put_line('Estoy en el primer bloque');
    
    -- Segundo bloque
    DECLARE
        x NUMBER := 10;
    BEGIN
        dbms_output.put_line(x);
    END;
END;