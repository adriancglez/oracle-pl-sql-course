/* Habilitar la salida por pantalla */
SET SERVEROUTPUT ON

BEGIN

/* Ejecutar el comando que imprime en pantalla */
DBMS_OUTPUT.PUT_LINE('Hello World!');

/* Para concatenar se usa || */
DBMS_OUTPUT.PUT_LINE('Hello' || ' ' || 'World');

END;