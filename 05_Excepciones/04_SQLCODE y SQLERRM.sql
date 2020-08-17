SET SERVEROUTPUT ON;

DECLARE
    empl      employees%rowtype;
    code      NUMBER;
    message   VARCHAR2(250);
BEGIN
    SELECT
        *
    INTO empl
    FROM
        employees;

    dbms_output.put_line(empl.salary);
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line(sqlcode);
        dbms_output.put_line(sqlerrm);
        code := sqlcode;
        message := sqlerrm;
        INSERT INTO errors VALUES ( /* Como nota adicional, no podemos integrar directamente código PL/SQL en la sentencia SQL, como las expresiones SQLCODE y SQLERRM dentro de la sentencia value, es por ello que se declaran variables y se asignan dichos valores y se pasan directo a la sentencia value. */
            code,
            message
        );
        COMMIT;
END;