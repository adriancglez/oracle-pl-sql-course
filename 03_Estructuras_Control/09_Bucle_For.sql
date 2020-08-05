SET SERVEROUTPUT ON;

DECLARE
    x NUMBER := 0;
BEGIN
    FOR i IN 1..10 LOOP
        dbms_output.put_line(i);
    END LOOP;
END;