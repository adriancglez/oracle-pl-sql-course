SET SERVEROUTPUT ON;

DECLARE
    x NUMBER := 1;
BEGIN
    LOOP
        dbms_output.put_line(x);
        x := x + 1;
        /* IF x = 11 THEN
            EXIT;
        END IF; */

        EXIT WHEN x = 11;
    END LOOP;
END;