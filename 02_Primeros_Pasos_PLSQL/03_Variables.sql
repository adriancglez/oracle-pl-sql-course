SET SERVEROUTPUT ON

/* La sección DECLARE se utiliza para declarar las variables que se 
utilizarán a lo largo del ciclo de vida del programa */
DECLARE
    name       VARCHAR2(100);
    lastname   VARCHAR2(100);
BEGIN

    -- Para asignar un valor a una variable se usa el operador ':='
    name := 'Jhon';
    lastname := 'Connors';
    
    -- Imprimir las variables en pantalla
    dbms_output.put_line(name);
    dbms_output.put_line(lastname);

    -- Imprimir en pantalla la concatenación de dos variables
    dbms_output.put_line(name
                         || ' '
                         || lastname);
END;