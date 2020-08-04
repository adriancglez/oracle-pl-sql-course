SET SERVEROUTPUT ON

DECLARE
    v1 CHAR(1);
BEGIN
    v1 := 'B';
    CASE v1
        WHEN 'A' THEN
            dbms_output.put_line('Excellent');
        WHEN 'B' THEN
            dbms_output.put_line('Very Good');
        WHEN 'C' THEN
            dbms_output.put_line('Good');
        WHEN 'D' THEN
            dbms_output.put_line('Fair');
        WHEN 'E' THEN
            dbms_output.put_line('Poor');
        ELSE
            dbms_output.put_line('no such value');
    END CASE;
END;