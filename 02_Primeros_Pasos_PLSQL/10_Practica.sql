SET SERVEROUTPUT ON;

DECLARE
    impuesto    CONSTANT NUMBER(2) := 21;
    precio      NUMBER(5, 2);
    resultado   precio%TYPE;
BEGIN
    precio := 100.50;
    resultado := precio * impuesto / 100;
    dbms_output.put_line('El resultado del precio del producto es: ' || resultado);
END;