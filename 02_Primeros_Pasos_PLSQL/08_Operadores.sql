SET SERVEROUTPUT ON

DECLARE
    X NUMBER := 5;
    Z NUMBER := 10;
    A VARCHAR2(100) := 'EXAMPLE';
    D DATE := '10-01-1990';
BEGIN
    dbms_output.put_line(A || ' Hello');    -- Concatena el valor de A con ' Hello'
    dbms_output.put_line(A || x);           -- Concatena el valor de A con el valor de X
    dbms_output.put_line(sysdate);          -- Muestra la fecha actual del sistema
    dbms_output.put_line(sysdate - d);      -- Realiza la resta de la fecha actual del sistema con la fecha de D
    dbms_output.put_line(d + 1);            -- Realiza la suma de la fecha D + 1
    --dbms_output.put_line(A + x);          -- Arroja un error, puesto que una cadena no se puede sumar, solo se puede concatenar
END;