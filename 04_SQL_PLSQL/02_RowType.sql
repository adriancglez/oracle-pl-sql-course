SET SERVEROUT ON;

DECLARE
    empleado employees%rowtype;
BEGIN
    SELECT
        *
    INTO empleado
    FROM
        employees
    WHERE
        employee_id = 178;

    dbms_output.put_line(empleado.salary);
    dbms_output.put_line(empleado.first_name);
END;