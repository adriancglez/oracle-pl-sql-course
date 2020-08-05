SET SERVEROUTPUT ON;

DECLARE
    done   BOOLEAN := false;
    x      NUMBER := 0;
BEGIN
    WHILE x < 10 LOOP
        dbms_output.put_line(x);
        x := x + 1;
        EXIT WHEN x = 5;
    END LOOP;

    WHILE done LOOP
        dbms_output.put_line('No imprimas esto');
        done := true;
    END LOOP;
    
    WHILE NOT done LOOP
        dbms_output.put_line('He pasado por aquí');
        done := true;
    END LOOP;
END;