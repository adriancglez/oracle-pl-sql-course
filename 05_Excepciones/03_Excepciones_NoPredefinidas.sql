SET SERVEROUTPUT ON;

DECLARE
    mi_excep EXCEPTION;
    PRAGMA exception_init ( mi_excep, -937 );
    v1   NUMBER;
    v2   NUMBER;
BEGIN
    SELECT
        employee_id,
        SUM(salary)
    INTO
        v1,
        v2
    FROM
        employees;

    dbms_output.put_line(v1);
EXCEPTION
    WHEN mi_excep THEN
        dbms_output.put_line('Función de grupo incorrecta');
    WHEN OTHERS THEN
        dbms_output.put_line('Se produjo un error');
END;