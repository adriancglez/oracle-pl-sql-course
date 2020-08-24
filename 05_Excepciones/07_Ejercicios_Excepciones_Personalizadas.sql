-- PRÁCTICA 1

/* Crear una excepción personalizada denominada `CONTROL_REGIONES`
* Debe dispararse cuando al insertar o modificar una región queramos poner una clave superior a 200. Por ejemplo, usando una variable con ese valor.
* En ese caso debe generar un texto indicando algo así como "Código no permitido. Debe ser inferior a 200".
* Recordemos que las excepciones personalizadas deben dispararse de forma manual con el `RAISE` */
SET SERVEROUTPUT ON;

DECLARE
    control_regiones EXCEPTION;
    codigo_region   NUMBER;
    nombre_region   VARCHAR2(200);
BEGIN
    codigo_region := 199;
    nombre_region := 'ANTARTIDA';
    IF codigo_region > 200 THEN
        RAISE control_regiones;
    ELSE
        INSERT INTO regions VALUES (
            codigo_region,
            nombre_region
        );

        COMMIT;
    END IF;

EXCEPTION
    WHEN control_regiones THEN
        dbms_output.put_line('Código no permitido. Debe ser inferior a 200');
    WHEN OTHERS THEN
        dbms_output.put_line('Error indefinido');
END;