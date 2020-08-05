SET SERVEROUTPUT ON;

DECLARE
    x NUMBER := 0;
BEGIN
    LOOP
        dbms_output.put_line('Loop: x := ' || to_char(x));
        x := x + 1;
        /* IF x < 3 THEN
            CONTINUE;
        END IF; */
        CONTINUE WHEN x < 3;
        dbms_output.put_line('Después de continue: x := ' || to_char(x));
        EXIT WHEN x = 5;
    END LOOP;

    dbms_output.put_line('Después del Loop: x := ' || to_char(x));
END;