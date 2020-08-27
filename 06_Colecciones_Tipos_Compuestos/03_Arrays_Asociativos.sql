SET SERVEROUTPUT ON;

DECLARE
    TYPE departamentos IS
        TABLE OF departments.department_name%TYPE INDEX BY PLS_INTEGER;
    TYPE empleados IS
        TABLE OF employees%ROWTYPE INDEX BY PLS_INTEGER;
    depts    departamentos;
    emples   empleados;
BEGIN
    depts(1) := 'Informática';
    depts(2) := 'RRHH';
    depts(55) := 'Prueba';

    dbms_output.put_line(depts(1));
    dbms_output.put_line(depts(2));
    dbms_output.put_line(depts.last);
    dbms_output.put_line(depts.first);
    
    IF depts.EXISTS(3) THEN
        dbms_output.put_line(depts(3));
    ELSE
        dbms_output.put_line('Ese valor no existe');
    END IF;

    SELECT
        *
    INTO
        emples(1)
    FROM
        employees
    WHERE
        employee_id = 100;

    SELECT
        *
    INTO
        emples(2)
    FROM
        employees
    WHERE
        employee_id = 110;

    dbms_output.put_line(emples(1).first_name);
    dbms_output.put_line(emples(2).first_name);
END;