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
    WHEN no_data_found THEN
        DBMS_OUTPUT.PUT_LINE('Error empleado no existe');
    when too_many_rows then
        DBMS_OUTPUT.PUT_LINE('Muchos resultados');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Se produjo un error');
END;