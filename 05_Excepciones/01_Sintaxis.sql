SET SERVEROUTPUT ON;

DECLARE
    empl employees%rowtype;
BEGIN
    SELECT
        *
    INTO empl
    FROM
        employees
    WHERE
        employee_id = 100;

    dbms_output.put_line(empl.first_name);
EXCEPTION
    WHEN ex1 THEN
        NULL;
    WHEN ex2 THEN
        NULL;
    WHEN OTHERS THEN
        NULL;
END;