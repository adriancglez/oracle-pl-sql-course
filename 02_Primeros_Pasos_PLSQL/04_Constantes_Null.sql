SET SERVEROUTPUT ON

DECLARE
    /* Para declarar una constante se usa la cláusula CONSTANT, y al mismo
    tiempo se debe inicializar */
    name    CONSTANT VARCHAR2(100) := 'Jhon';
    value   NUMBER NOT NULL := 20;
BEGIN
    -- Imprimir la constante en pantalla
    dbms_output.put_line(name);
    
    -- Cambiamos el valor de la variable 'value'
    value := 30;
    
    -- Imprimimos en pantalla la variable 'value'
    dbms_output.put_line(value);
END;