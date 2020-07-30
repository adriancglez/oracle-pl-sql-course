SET SERVEROUTPUT ON;

-- Primer bloque
DECLARE
    x   NUMBER := 20; -- Variable GLOBAL
    z   NUMBER := 50; -- Variable GLOBAL
BEGIN
    dbms_output.put_line('x := ' || x);
    
    -- Segundo bloque
    DECLARE
        x   NUMBER := 10; -- Variable LOCAL
        y   NUMBER := 30; -- Variable LOCAL
    BEGIN
        dbms_output.put_line('x :=' || x);
        dbms_output.put_line('y :=' || y);
        dbms_output.put_line('z :=' || z);
    END;

    dbms_output.put_line('x :=' || x);
END;