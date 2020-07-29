/* Habilitar la salida por pantalla */
SET SERVEROUTPUT ON

BEGIN

/* Ejecutar el comando que imprime en pantalla */
    dbms_output.put_line('Hello World!');

/* Para concatenar se usa || */
    dbms_output.put_line('Hello'
                         || ' '
                         || 'World');
END;