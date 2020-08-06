SET SERVEROUT ON;

DECLARE
    salario   NUMBER;
    nombre    employees.first_name%TYPE;    -- La variable 'nombre' se está declarando con el mismo tipo de dato que tenga el campo 'employees.first_name'
BEGIN
    SELECT
        salary,
        first_name
    INTO
        salario,
        nombre
    FROM
        employees
    WHERE
        employee_id = 184;

    dbms_output.put_line(nombre);
    dbms_output.put_line(salario);
END;