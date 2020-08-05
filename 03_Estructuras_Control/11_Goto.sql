SET SERVEROUTPUT ON;

DECLARE
    p   VARCHAR2(30);
    n   PLS_INTEGER := 4;
BEGIN
    FOR j IN 2..round(sqrt(n)) LOOP 
        IF n MOD j = 0 THEN
            p := 'no es un número primo';
            GOTO print_now;
        END IF;
    END LOOP;

    p := 'Es un número primo';
    << print_now >> dbms_output.put_line(to_char(n)
                                         || ' '
                                         || p);

END;