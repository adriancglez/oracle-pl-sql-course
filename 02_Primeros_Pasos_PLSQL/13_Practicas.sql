-- PRÁCTICA 1

/* Indicar qué valores visualiza X en los 3 casos de este ejemplo */
SET SERVEROUTPUT ON

DECLARE
    x NUMBER := 10;
BEGIN
    dbms_output.put_line(x);
    DECLARE
        x NUMBER := 20;
    BEGIN
        dbms_output.put_line(x);
    END;
    dbms_output.put_line(x);
END;

-- PRÁCTICA 2

/* ¿Es este bloque correcto?, si no es así, ¿por qué falla? */
BEGIN
    dbms_output.put_line(x);
    DECLARE
        x NUMBER := 20;
    BEGIN
        dbms_output.put_line(x);
    END;
    dbms_output.put_line(x);
END;

-- PRÁCTICA 3

/* ¿Es este bloque correcto?, Si es así, ¿qué valores visualiza `X`? */
SET SERVEROUTPUT ON

DECLARE
    x NUMBER := 10;
BEGIN
    dbms_output.put_line(x);
    BEGIN
        dbms_output.put_line(x);
    END;
    dbms_output.put_line(x);
END;