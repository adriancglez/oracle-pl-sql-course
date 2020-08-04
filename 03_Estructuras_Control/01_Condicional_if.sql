SET SERVEROUTPUT ON

DECLARE
    x NUMBER := 20;
BEGIN
    -- Inicio if/else
    IF x = 10 THEN
        dbms_output.put_line('X := 10');
    ELSE
        dbms_output.put_line('X := Other Value');
    END IF;

    -- Inicio if
    IF x = 20 THEN
        dbms_output.put_line('X := 20');
    END IF;

    -- Inicio if/elsif/else
    IF x > 100 THEN
        dbms_output.put_line('X > 100');
    ELSIF x > 50 THEN
        dbms_output.put_line('X > 50');
    ELSE
        dbms_output.put_line('X < 50');
    END IF;
END;