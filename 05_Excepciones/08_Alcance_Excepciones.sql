SET SERVEROUTPUT ON;

DECLARE
    reg_max EXCEPTION;
    regn   NUMBER;
    regt   VARCHAR2(200);
BEGIN
    regn := 101;
    regt := 'ASIA';
    DECLARE
        reg_max_otro EXCEPTION;
    BEGIN
        IF regn > 100 THEN
            RAISE reg_max;
        ELSE
            INSERT INTO regions VALUES (
                regn,
                regt
            );

            COMMIT;
        END IF;
    EXCEPTION
        WHEN reg_max_otro THEN
            dbms_output.put_line('La región no puede ser mayor de 100. Exception de bloque hijo');
    END;

EXCEPTION
    WHEN reg_max THEN
        dbms_output.put_line('La región no puede ser mayor de 100. Exception de bloque padre');
    WHEN OTHERS THEN
        dbms_output.put_line('Error inesperado');
END;