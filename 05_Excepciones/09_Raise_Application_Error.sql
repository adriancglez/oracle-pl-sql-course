SET SERVEROUTPUT ON;

DECLARE
    regn   NUMBER;
    regt   VARCHAR2(200);
BEGIN
    regn := 101;
    regt := 'ASIA';
    IF regn > 100 THEN
        raise_application_error(-20000, 'La ID no puede ser mayor de 100.');
    ELSE
        INSERT INTO regions VALUES (
            regn,
            regt
        );

        COMMIT;
    END IF;
END;