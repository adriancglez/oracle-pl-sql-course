# PRIMEROS PASOS EN PL/SQL

## BLOQUES ANÓNIMOS PL/SQL

Para declarar un bloque se usan las palabras reservadas `BEGIN` y `END`.

~~~
BEGIN

END;
~~~

**Notas:** el `END` debe finalizar con `;` para indicarle a SQL que se ha finalizado el bloque de código.

En cualquier caso, entre el `BEGIN` y el `END` es donde se escribirán todos los comandos.

Es importante mencionar que el bloque no puede quedarse vacío, ya que al ejecutarse, arrojaría un error.

## VISUALIZAR SALIDAS POR PANTALLA

Para poder mostrar datos por pantalla, se debe habilitar la salida (pantalla).

~~~
SET SERVEROUTPUT ON
~~~

Y ejecutar el comando:

~~~
dbms_output.put_line('Hello World!');
~~~

Para concatenar cadenas en ese comando, se utiliza `||`:

~~~
dbms_output.put_line('Hello' || ' ' || 'World');
~~~

**Notas:** Para el uso de cadenas de caracteres se deben usar las comillas simples `''`.

## VARIABLES

Al igual que en otros lenguajes, PL/SQL dispone de variables para almacenar valores durante el desarrollo de los programas.

* Pueden ser de distintos tipos
* Pueden ser utilizadas en comandos SQL
* Para nombrar una variable:
    * Deben comenzar por una letra
    * Podemos incluir números o letras
    * Pueden tener algunos caracteres especiales:
        * Dolar, subrayado, etc...
    * El nombre no puede ser mas largo de 30 caracteres
    * No debemos usar palabras reservadas

### ¿DÓNDE SE DECLARAN LAS VARIABLES?

Las variables se declaran e inicializan en la sección `DECLARE` del bloque PL/SQL, por tanto, si usamos alguna variable del bloque ya es obligatorio poner la zona de declaración.

Podemos pasarlos como argumentos a otros programas PL/SQL.

Podemos almacenar valores devueltos por otros programas PL/SQL

La sintaxis para declarar variables:

~~~
DECLARE
    salary       NUMBER(2);
    name         VARCHAR2(100);
    birth_date   DATE;
~~~

Para inicializar una variable (asignar un valor), se usa el `:=` como se puede ver de la siguiente manera:

~~~
DECLARE
    salary       NUMBER(2) := 1000;
    name         VARCHAR2(100) := 'Jhon Connors';
    birth_date   DATE := '16-jun-1989';
~~~

En la zona `BEGIN` se utiliza como cualquier otro lenguaje de programación:

~~~
DECLARE
    salary       NUMBER(2);
    name         VARCHAR2(100);
    birth_date   DATE;

BEGIN
    salary := salary * 10;
    IF salary > 1000 THEN
        ....
    ....
~~~

### TIPOS DE VARIABLES

Existen distintos tipos de variables:

* Escalares
* Compuestas
* De Referencia
* LOBs. Large Objects
* Bind Variables. Asociadas a los comandos SQL
* ...

Las variables escarales son el tipo básico:

* CHAR
* VARCHAR2
* LONG
* LONG RAW
* NUMBER(PRECISIÓN, ESCALA)
* BINARY_INTEGER
* PLS_INTEGER
* BOOLEAN
* BINARY_FLOAT
* BINARY_DOUBLE
* DATE
* TIMESTAMP
* TIMESTAMP WITH TIME ZONE
* TIMESTAMP WITH LOCAL TIME ZONE
* INTERVAL YEAR TO MONTH
* INTERVAL DAY TO SECOND

## CONSTANTES Y NULL

Las constantes son variables que no pueden modificarse una vez creadas.

Se declaran dentro de la sección `DECLARE` con la cláusula `CONSTANT`.

Se deben inicializar una vez declaradas.

~~~
DECLARE
    name CONSTANT VARCHAR2(100) := 'Jhon';
~~~

Para indicar que una variable no aceptará valores `null` se debe añadir la cláusula `NOT NULL`:

~~~
DECLARE
    value   NUMBER NOT NULL := 20;
~~~

## EJERCICIOS Y PRÁCTICAS DE BLOQUES, VARIABLES, CONSTANTES, NULL Y CONCATENACIONES

1. Visualizar el nombre y apellidos. Primero separados y luego concatenados con el operador `||`

2. Determinar qué bloques PL/SQL son correctos:
    > `La solución es el D, ya que es el único que tiene todos los componentes. Un bloque BEGIN END debe tener al menos un comando*/`

    A)
    ~~~
    BEGIN

    END;
    ~~~

    B)
    ~~~
    DECLARE x INTEGER(10);

    END;
    ~~~

    C)
    ~~~
    DECLARE

    BEGIN

    END;
    ~~~

    D)
    ~~~
    DECLARE
        X INTEGER(10);
    BEGIN
        DBMS_OUTPUT.PUT_LINE(X);
    END;
    ~~~

    3. Crear dos variables de tipo numérico y visualizar su suma

    4. Modificar el ejemplo anterior y ponemos null como valor de una de las variables, ¿Qué resultado arroja? 
        > `No arroja resultado pero tampoco marca error, puesto que cualquier operación con NULL devuelve NULL`

    5. Añadir una constante al ejercicio. Suma las 2 variables y la constante. Intenta modificar la constante. ¿Es posible?
        > `No es posible cambiar el valor de una constante, arroja un error`

    6. Crear un bloque anónimo que tenga una variable de tipo VARCHAR2 con nuestro nombre, otra numérica con la edad y la tercera con la fecha de nacimiento. Visualizar por separado y luego intentar concatenarlas. ¿Es posible?
        > `Si, es posible usando el operador ||`

## VARIABLES BOOLEANAS

Las variables booleanas no existen como parte del lenguaje SQL, pero si dentro de PL/SQL. A diferencia de los lenguajes de programación, en PL/SQL, una variable booleana puede tener 3 valores: `true`, `false` ó `null`.

~~~
DECLARE
    var_boolean BOOLEAN;
BEGIN
    var_boolean := true;
    var_boolean := false;
    var_boolean := NULL;
END;
~~~

## ATRIBUTO %TYPE

El atributo `%TYPE` nos permite crear una variable que sea del mismo tipo que otro, por ejemplo, que una variable sea del mismo tipo de dato que una columna de una tabla de una base de datos.

~~~
DECLARE
    variable        NUMBER;
    variable_type   variable%TYPE;
    employee        employees.salary%TYPE;
BEGIN
    variable_type := 50;
    employee := 100;
END;
~~~

## OPERADORES

Los operadores usados en PL/SQL son similares a los de cualquier lenguaje de programación:
~~~
+   SUMA
-   RESTA
/   DIVISIÓN
*   MULTIPLICACIÓN
**  EXPONENTE
||  CONCATENACIÓN
~~~

## COMENTARIOS

Existen dos posibilidades de realizar comentarios en nuestro código PL/SQL. Para realizar un comentario de una sola línea usamos dos guiones `--`.

    -- Esto es un comentario
    DECLARE
        x   NUMBER; -- Esto es una variable numérica.
        ...

Otra forma de realizar un comentario es con `/*  */`. Este es un comentario de múltiples líneas

    DECLARE
        x   NUMBER;
        /*
            En estas líneas
            todo es comentario
        */
    BEGIN
        x := 10;
    END;

## PRÁCTICA ADICIONAL CON VARIABLES, CONSTANTES Y %TYPE

Quieremos calcular el impuesto de un producto, el impuesto es del `21%`, lo ponemos en una constante, creamos una variable de tipo `number(5,2)` para poner el precio del producto y creamos otra variable para el resultado. Le decimos que es del mismo tipo `(TYPE)` que la anterior. Hacemos el cálculo y visualizamos el resultado.

## BLOQUES ANIDADOS

Los bloques anidados nos permiten agrupar, ordenar lo que son trozos de bloque. Literalmente son bloques dentro de otros bloques.

    -- Primer bloque
    BEGIN
        -- Segundo bloque
        DECLARE
            
        BEGIN
            
        END;
    END;

## AMBITO DE LAS VARIABLES EN BLOQUES ANIDADOS

Dentro de este contexto, existen dos tipos de variables: `globales` y `locales`.

Una variable se considera global cuando es declarada en el bloque mas externo, mientras que una variable es considerada local cuando es declarada en el bloque más interno.

    -- Primer bloque
    DECLARE
        x NUMBER := 20; -- Variable GLOBAL
    BEGIN
        
        -- Segundo bloque
        DECLARE
            x   NUMBER := 10; -- Variable LOCAL
            y   NUMBER := 30; -- Variable LOCAL
        BEGIN
            ...
        END;

        ...
    END;

Cualquier variable del bloque padre puede ser accedida por el bloque hijo, pero no al revés.

## PRÁCTICA ÁMBITO DE VARIABLES Y BLOQUES ANIDADOS

Realizar las siguientes prácticas.

1. Indicar qué valores visualiza `x` en los 3 casos de este ejemplo
> 10, 20, 10

~~~
SET SERVEROUTPUT ON

DECLARE
    x NUMBER := 10;
BEGIN
    dbms_output.put_line(x);
    DECLARE
        x NUMBER := 20;
    BEGIN
        dbms_output.put_line(x);
    END;
    dbms_output.put_line(x);
END;
~~~

2. Es este bloque correcto?, si no es así, ¿por qué falla?
> Primero porque no está declarado el paquete `SET SERVEROUTPUT ON`, y segundo porque la variable `x` está solo en el bloque anidado y por tanto no puede ser vista desde el bloque principal

~~~
BEGIN
    dbms_output.put_line(x);
    DECLARE
        x NUMBER := 20;
    BEGIN
        dbms_output.put_line(x);
    END;
    dbms_output.put_line(x);
END;
~~~

3. ¿Es este bloque correcto?, Si es así, ¿qué valores visualiza `X`?
>Si es correcto, `X` visualiza: 10, 10, 10

~~~
SET SERVEROUTPUT ON

DECLARE
    x NUMBER := 10;
BEGIN
    dbms_output.put_line(x);
    BEGIN
        dbms_output.put_line(x);
    END;
    dbms_output.put_line(x);
END;
~~~

## FUNCIONES

PL/SQL utiliza las mismas funciones que SQL, esto se refiere a que se llaman igual.

Ejemplo de funciones de PL/SQL:

    substr(x, 1, 3) -- La función substr devuelve un trozo de una cadena entre rangos definidos.

    upper(x); -- La función upper convierte a mayúsculas una cadena

    sysdate; -- La función sysdate devuelve la fecha actual del sistema

## PRÁCTICAS CON FUNCIONES

Realiza las siguientes prácticas:

1. Iniciales.
    * Crea un bloque PL/SQL con tres variables `varchar2`: nombre, apellido1 y apellido2.
    * Debes visualizar las iniciales por puntos. Además siempre en mayúscula.

2. Averiguar el nombre del día que naciste.