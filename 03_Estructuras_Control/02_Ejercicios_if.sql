-- PRÁCTICA 1

/* Debemos hacer un bloque `PL/SQL` anónimo, donde declaramos una variable `NUMBER` y la ponemos algún valor.

Debe indicar si el número es PAR o IMPAR. Es decir debemos usar `if`..... `else` para hacer el ejercicio

Como pista, recuerda que hay una función en `SQL` denominada `MOD`, que permite averiguar el resto de una división. */

SET SERVEROUTPUT ON

DECLARE
    valor NUMBER := 10;
BEGIN
    IF MOD(valor, 2) = 0 THEN
        dbms_output.put_line('El número '
                             || valor
                             || ' es par');
    ELSE
        dbms_output.put_line('El número '
                             || valor
                             || ' es impar');
    END IF;
END;

-- PRÁCTICA 2

/* Crear una variable `CHAR(1)` denominada `tipo_producto`.

Poner un valor entre "A" Y "E"

Visualizar el siguiente resultado según el tipo de producto

  'A'  --> Electronica

  'B'  -->  Informática

  'C'  --> Ropa

   'D' --> Música

   'E' --> Libros

Cualquier otro valor debe visualizar "El código es incorrecto" */

SET SERVEROUTPUT ON

DECLARE
    tipo_producto CHAR(1) := 'A';
BEGIN
    IF tipo_producto = 'A' THEN
        dbms_output.put_line('El tipo de producto es Electrónica');
    ELSIF tipo_producto = 'B' THEN
        dbms_output.put_line('El tipo de producto es Informática');
    ELSIF tipo_producto = 'C' THEN
        dbms_output.put_line('El tipo de producto es Ropa');
    ELSIF tipo_producto = 'D' THEN
        dbms_output.put_line('El tipo de producto es Música');
    ELSIF tipo_producto = 'E' THEN
        dbms_output.put_line('El tipo de producto es Libros');
    ELSE
        dbms_output.put_line('El código es incorrecto');
    END IF;
END;