SET SERVEROUTPUT ON;

DECLARE
    TYPE departamentos IS
        TABLE OF departments%ROWTYPE INDEX BY PLS_INTEGER;
    
    depts departamentos;
BEGIN
    FOR i IN 1..10 LOOP 
        SELECT
            *
        INTO
            depts(i)
        FROM
            departments
        WHERE
            department_id = i * 10;

    END LOOP;

    FOR i IN depts.first..depts.last LOOP 
        dbms_output.put_line(depts(i).department_name);
    END LOOP;
END;