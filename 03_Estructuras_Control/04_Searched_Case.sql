SET SERVEROUTPUT ON

DECLARE
    bonus number;
BEGIN
    bonus := 110;
    CASE
        WHEN bonus > 500 THEN
            dbms_output.put_line('Excellent');
        WHEN bonus <= 500 THEN
            dbms_output.put_line('Very Good');
        WHEN bonus <= 250 THEN
            dbms_output.put_line('Good');
        ELSE
            dbms_output.put_line('POOR!!!');
    END CASE;
END;