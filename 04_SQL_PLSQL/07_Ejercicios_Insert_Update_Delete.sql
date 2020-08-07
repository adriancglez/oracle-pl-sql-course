-- PRÁCTICA 1

/* rear un bloque que inserte un nuevo departamento en la tabla DEPARTMENTS. Para saber el DEPARTMENT_ID que debemos asignar al nuevo departamento primero debemos averiguar el valor mayor que hay en la tabla DEPARTMENTS y sumarle uno para la nueva clave.

o Location_id debe ser 1000
o Manager_id debe ser 100
o Department_name debe ser “INFORMATICA”
o NOTA: en PL/SQL debemos usar COMMIT y ROLLBACK de la misma forma que lo hacemos en SQL. Por tanto, para validar definitivamente un cambio debemos usar COMMIT. */

DECLARE
    department_id     departments.department_id%TYPE;
    location_id       departments.location_id%TYPE;
    manager_id        departments.manager_id%TYPE;
    department_name   departments.department_name%TYPE;
BEGIN
    location_id := 1000;
    manager_id := 100;
    department_name := 'INFORMÁTICA';
    SELECT
        MAX(departments.department_id)
    INTO department_id
    FROM
        departments;

    department_id := department_id + 1;
    INSERT INTO departments VALUES (
        department_id,
        department_name,
        manager_id,
        location_id
    );
    COMMIT;
END;

-- PRÁCTICA 2

/* Crear un bloque PL/SQL que modifique la LOCATION_ID del nuevo departamento a 1700. En este caso usemos el COMMIT dentro del bloque PL/SQL. */

DECLARE
    department   departments.department_id%TYPE;
    location     departments.location_id%TYPE;
BEGIN
    location := 1700;
    SELECT
        MAX(departments.department_id)
    INTO department
    FROM
        departments;

    UPDATE departments
    SET
        location_id = location
    WHERE
        department_id = department;
    COMMIT;
END;

-- PRÁCTICA 3

/* Por último hacer otro bloque PL/SQL que elimine ese departamento nuevo. */
DECLARE
    department departments.department_id%TYPE;
BEGIN
    SELECT
        MAX(departments.department_id)
    INTO department
    FROM
        departments;

    DELETE FROM departments
    WHERE
        department_id = department;
    COMMIT;
END;