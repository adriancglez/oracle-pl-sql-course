-- EJERCICIO 1

/* VISUALIZAR EL NOMBRE Y APELLIDOS. PRIMERO SEPARADOS Y LUEGO CONCATENADOS
CON EL OPERADOR || */

SET SERVEROUTPUT ON

DECLARE
    name       VARCHAR2(100);
    lastname   VARCHAR2(100);
BEGIN

    name := 'Adrián';
    lastname := 'González';
    
    dbms_output.put_line(name);
    dbms_output.put_line(lastname);

    dbms_output.put_line(name
                         || ' '
                         || lastname);
END;

-- EJERCICIO 3

/* CREAR DOS VARIABLES DE TIPO NUMÉRICO Y VISUALIZAR SU SUMA */

SET SERVEROUTPUT ON

DECLARE
    number1   NUMBER(9) := 8;
    number2   NUMBER(9) := 27;
BEGIN
    dbms_output.put_line(number1 + number2);
END;

-- EJERCICIO 4

/* MODIFICAR EL EJEMPLO ANTERIOR Y PONER NULL COMO VALOR DE UNA DE LAS VARIABLES */

SET SERVEROUTPUT ON

DECLARE
    number1   NUMBER(9) := NULL;
    number2   NUMBER(9) := 27;
BEGIN
    dbms_output.put_line(number1 + number2);
END;

-- EJERCICIO 5

/* AÑADIR UNA CONSTANTE, SUMAR LAS 2 VARIABLES Y LA CONSTANTE. INTENTAR MODIFICAR
EL VALOR DE LA CONSTANTE */

SET SERVEROUTPUT ON

DECLARE
    number1   NUMBER(9) := 6;
    number2   NUMBER(9) := 27;
    number3   CONSTANT NUMBER(9) := 18;
BEGIN
    dbms_output.put_line(number1 + number2 + number3);
    
    number3 := 21; /* En esta línea arroja un error */
END;

-- EJERCICIO 6

/* CREAR UN BLOQUE ANÓNIMO QUE TENGA UNA VARIABLE DE TIPO VARCHAR2 CON
NUESTRO NOMBRE, OTRA NUMÉRICA CON LA EDAD Y LA TERCERA CON LA FECHA DE 
NACIMIENTO. VISUALIZAR POR SEPARADO Y LUEGO CONCATENARLAS */

SET SERVEROUTPUT ON

DECLARE
    nombre             VARCHAR2(50) := 'Adrián';
    edad               NUMBER(3) := 30;
    fecha_nacimiento   DATE := '19-jul-1990';
BEGIN
    dbms_output.put_line('nombre: '
                         || nombre
                         || ', edad: '
                         || edad
                         || ', fecha de nacimiento: '
                         || fecha_nacimiento);
END;