SET SERVEROUTPUT ON

DECLARE
    x       VARCHAR2(50);
    mayus   VARCHAR2(100);
    fecha   DATE;
    z       NUMBER := 109.80;
BEGIN
    x := 'Ejemplo';
    mayus := upper(x); -- La función upper convierte a mayúsculas una cadena
    fecha := sysdate; -- La función sysdate devuelve la fecha actual del sistema
    
    dbms_output.put_line(substr(x, 1, 3)); -- La función substr devuelve un trozo de una cadena entre rangos definidos
    dbms_output.put_line(mayus);
    dbms_output.put_line(fecha);
    dbms_output.put_line(floor(z));
END;