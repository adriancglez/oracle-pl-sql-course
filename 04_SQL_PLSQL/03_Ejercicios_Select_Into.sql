-- PRÁCTICA 1

/* Crear un bloque PL/SQL que devuelva al salario máximo del departamento 100 y lo deje  en una variable denominada salario_maximo y la visualice */
SET SERVEROUT ON;

DECLARE
    salario employees.salary%TYPE;
BEGIN
    SELECT
        MAX(salary)
    INTO salario
    FROM
        employees
    WHERE
        department_id = 100;

    dbms_output.put_line('El salario máximo de ese departamento es:' || salario);
END;

-- PRÁCTICA 2

/* Visualizar el tipo de trabajo del empleado número 100 */
SET SERVEROUT ON;

DECLARE
    trabajo employees.job_id%TYPE;
BEGIN
    SELECT
        job_id
    INTO trabajo
    FROM
        employees
    WHERE
        employee_id = 100;

    dbms_output.put_line('El tipo de trabajo del empleado ' || trabajo);
END;

-- PRÁCTICA 3

/* Crear una variable de tipo DEPARTMENT_ID y ponerla algún valor, por ejemplo 10.

Visualizar el nombre de ese departamento y el número de empleados que tiene, poniendo. Crear dos variables para albergar los valores. */
SET SERVEROUT ON;

DECLARE
    departamento_id       departments.department_id%TYPE;
    departamento_nombre   departments.department_name%TYPE;
    empleados             NUMBER;
BEGIN
    departamento_id := 80;
    SELECT
        department_name
    INTO departamento_nombre
    FROM
        departments
    WHERE
        department_id = departamento_id;

    SELECT
        COUNT(*)
    INTO empleados
    FROM
        employees
    WHERE
        department_id = departamento_id;

    dbms_output.put_line('El departamento '
                         || departamento_nombre
                         || ' tiene '
                         || empleados
                         || ' empleados');

END;

-- PRÁCTICA 4

/* Mediante dos consultas recuperar el salario máximo y el salario mínimo de la empresa e indicar su diferencia */
SET SERVEROUT ON;

DECLARE
    salario_max   jobs.max_salary%TYPE;
    salario_min   jobs.min_salary%TYPE;
    diff          NUMBER;
BEGIN
    SELECT
        MAX(salary),
        MIN(salary)
    INTO
        salario_max,
        salario_min
    FROM
        employees;

    diff := salario_max - salario_min;
    
    dbms_output.put_line('El salario máximo es: ' || salario_max);
    dbms_output.put_line('El salario mínimo es: ' || salario_min);
    dbms_output.put_line('La diferencia es: ' || diff);
END;