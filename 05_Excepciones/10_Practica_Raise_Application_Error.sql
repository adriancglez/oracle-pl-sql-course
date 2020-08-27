SET SERVEROUTPUT ON;

DECLARE
    reg_max EXCEPTION;
    regn   NUMBER;
    regt   VARCHAR2(200);
BEGIN
    regn := 101;
    regt := 'ASIA';
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
    END;

EXCEPTION
    WHEN reg_max THEN
        raise_application_error(-20000, 'La región no puede ser mayor de 100.');
        
    WHEN OTHERS THEN
        dbms_output.put_line(sqlcode);
        dbms_output.put_line(sqlerrm);
END;