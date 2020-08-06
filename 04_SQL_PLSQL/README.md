# SQL EN PL/SQL

## SENTENCIA `SELECT`

En esta sección veremos como mezclar código `SQL` en código `PL/SQL`.

Existen mecanismos para obtener un valor de un campo de una fila de una tabla de la Base de Datos y almacenarlas en una variable, una de ellas es usando la expresión `into` después del nombre de la columna.

    SELECT
        my_field INTO my_var
    FROM
        ...

`my_field` es el nombre del campo de la tabla y `my_var` es el nombre de la variable donde se almacenará el dato.

Cabe mencionar que, para que esta forma funcione, la sentencia `SELECT` nos debe devolver únicamente una fila de la tabla, ya que, de lo contrario, si nos regresa cero `0` ó más de una fila, nos arrojará un error.

De forma completa podría quedar así

    DECLARE
        my_var    my_table.my_field%TYPE;  -- La variable 'my_var' se está declarando con el mismo tipo de dato que tenga el campo 'mytable.my_field'
    BEGIN
        SELECT
            my_field
        INTO
            my_var
        FROM
            my_table
        WHERE
            other_field = value;
    END;

Si deseamos asignar mas valores a otras variables, se declaran los campos dentro de la sentencia `SELECT` y las variables dentro de la sentencia `INTO`, en el orden en el que se desean asignar

    DECLARE
        my_var_1    my_table.my_field_1%TYPE;
        my_var_2    my_table.my_field_2%TYPE;
        ...
    BEGIN
        SELECT
            my_field_1,
            my_field_2,
            ...
        INTO
            my_var_1,
            my_var_2,
            ...
        FROM
            my_table
        WHERE
            other_field = value;
    END;

## ATRIBUTO `%ROWTYPE`

EL atributo `%ROWTYPE` nos permite crear tantas variables cuyos campos tenga una tabla, es decir, si una tabla tiene `n` cantidad de campos, sería tedioso y de mucho código declarar manualmente las `n` variables para almacenar los valores de los `n` campos.

Para usar el atributo `%ROWTYPE`

    my_var my_table.my_field%rowtype;

De forma completa

    DECLARE
        my_var    my_table%ROWTYPE;
    BEGIN
        SELECT
            *
        INTO
            my_var
        FROM
            my_table
        WHERE
            other_field = value;
    END;

## PRÁCTICAS CON `SELECT INTO`

Realiza los siguientes ejercicios. Usa %ROWTYPE y %TYPE

### PRÁCTICA 1

Crear un bloque PL/SQL que devuelva al salario máximo del departamento 100 y lo deje  en una variable denominada salario_maximo y la visualice

### PRÁCTICA2

Visualizar el tipo de trabajo del empleado número 100

### PRÁCTICA 3

Crear una variable de tipo DEPARTMENT_ID y ponerla algún valor, por ejemplo 10. Visualizar el nombre de ese departamento y el número de empleados que tiene, poniendo. Crear dos variables para albergar los valores.

### PRÁCTICA 4

Mediante dos consultas recuperar el salario máximo y el salario mínimo de la empresa e indicar su diferencia