# ESTRUCTURAS DE CONTROL

## OPERADORES LÓGICOS Y RELACIONALES

Operadores relacionales o de comparación

    =   (igual a)
    <>  (distintos de)
    <   (menor que)
    >   (mayor que)
    >=  (mayor o igual a)
    <=  (menor o igual a)

Operadores lógicos

    AND (y lógico)
    NOT (negación)
    OR  (o lógico)

## CONDICIONALES

### IF

La sentencia `if` es similar a cualquier lenguaje de programación, con unas pequeñas diferencias a tener en cuenta: el formato, por ejemplo, no se usan paréntesis `()` para declarar la condicional.

    IF condición THEN
        ...
    ELSE
        ...
    END IF;

La setencia `else` puede ser opcional:

    IF condición THEN
        ...
    END IF;

Para definir condicionales anidadas, o varios `if`, podemos usar la sentencia `elsif`

    IF condition THEN
      
    ELSIF condition THEN
      
    END IF;

### PRÁCTICA COMANDO `if`

#### PRÁCTICA 1

Debemos hacer un bloque `PL/SQL` anónimo, donde declaramos una variable `NUMBER` y la ponemos algún valor.

Debe indicar si el número es PAR o IMPAR. Es decir debemos usar `if`..... `else` para hacer el ejercicio

Como pista, recuerda que hay una función en `SQL` denominada `MOD`, que permite averiguar el resto de una división.

#### PRÁCTICA 2

Crear una variable `CHAR(1)` denominada `tipo_producto`.

Poner un valor entre "A" Y "E"

Visualizar el siguiente resultado según el tipo de producto

  'A'  --> Electronica

  'B'  -->  Informática

  'C'  --> Ropa

   'D' --> Música

   'E' --> Libros

Cualquier otro valor debe visualizar "El código es incorrecto"

### CASE

#### SIMPLE CASE

El `case` es una forma mas simple de construir condiciones múltiples haciendo la comparación con una variable.

    CASE expresión
        WHEN condición1 THEN
            ...;
        WHEN condición2 THEN
            ...;
        ELSE
            ...;
    END CASE;

#### SEARCHED CASE

Nos permite realizar operaciones mas complejas al momento de efectuar las comparaciones, no solo con igualdad, sino con otro tipo de operadores.

    CASE
        WHEN condición1 THEN
            ...;
        WHEN condición2 THEN
            ...;
        ELSE
            ...;
    END CASE;

#### PRÁCTICA CON `case`

##### PRÁCTICA 1

Vamos a crear una variable denominada "usuario", de tipo VARCHAR2(40)

Vamos a poner dentro el nombre del usuario que somos, usando la función USER de Oracle que devuelve el nombre del usuario con el que estamos conectados (Recuerda que en Oracle no hace falta poner paréntesis si una función no tiene argumentos)

> usuario:=user

Luego hacermos un CASE para que nos pinte un mensaje del estilo:

* Si el usuario es SYS ponemos el mensaje "Eres superadministrador"
* Si el usuario es SYSTEM ponemos el mensaje "Eres un administrador normal"
* Si el usuario es HR ponemos el mensaje "Eres de Recursos humanos"
* Cualquier otro usuario ponemos "usuario no autorizado

## BUCLES

En `PL/SQL`, existen diferentes bucles o ciclos, empecemos con el mas básico.

### BUCLE `loop`

Es el bucle más sencillo, que no necesita evaluar directamente una expresión para finalizar, sino que dentro del cuerpo se puede definir la condicional que definirá cuándo se desea finalizar el ciclo usando la expresión `EXIT`:

    LOOP
        ...
        IF condición THEN
            EXIT;
        END IF;
    END LOOP;

Otra forma de salir de un bucle `loop`, es recomendable usar la expresión `EXIT WHEN condición`

    LOOP
        ...
        EXIT WHEN condición;
    END LOOP;

#### BUCLE `loop` ANIDADO

Para estructurar bucles anidados (bucles dentro de otro bucles) en `PL/SQL` se deben etiquetar con `<< >>` los `loop` con nombres que puedan identificarse fácilmente y, al momento de definir la salida de un bucle, se especifique con el nombre de su etiqueta.

    << myFirstLoop >> LOOP
        ...
        << mySecondLoop >> LOOP
            ...
            EXIT myFirstLoop WHEN ( i > 3 );
            ...
            EXIT mySecondLoop WHEN ( j > 105 );
        END LOOP mySecondLoop;

    END LOOP myFirstLoop;

#### CONTINUE

La sentencia `continue` dentro de un bucle lo que hace es saltar de nuevo a la primera línea del bucle, es decir, no continúa con las siguientes líneas de código.

La forma que recomienda Oracle para el uso de `continue`.

    LOOP
        ...
        CONTINUE WHEN x < 3;
        ...
    END LOOP;

### BUCLE `for`

El `for` de `PL/SQL` es similar al de otros lenguajes de programación, con algunas diferencias.

    SET SERVEROUTPUT ON;

    DECLARE
        x NUMBER := 0;
    BEGIN
        FOR i IN range LOOP
            ...
        END LOOP;
    END;

donde `range` es un rango de números, separados por dos puntos `..`

### BUCLE `while`

Es similar al de cualquier lenguaje de programación, solo con algunas diferencias.

    WHILE condición LOOP
        ...
    END LOOP;

### SENTENCIA `goto`

Esta sentencia nos permite ir a otro punto del código o a otra parte del bloque.

Para usar el `goto` se acompaña de una etiqueta, dicha etiqueta puede estar declarada en cualquier parte del código y se encierra en `<<  >>`.

    GOTO tag;

### PRÁCTICAS CON BUCLES

Realiza la siguientes prácticas.

#### PRÁCTICA 1

Vamos a crear la tabla de multiplicar del 1 al 10, con los tres tipos de bucles: LOOP, WHILE y FOR.

#### PRÁCTICA 2

Crear una variable llamada TEXTO de tipo VARCHAR2(100).

Poner alguna frase

Mediante un bucle, escribir la frase al revés, Usamos el bucle WHILE

#### PRÁCTICA 3

Usando la práctica anterior, si en el texto aparece el carácter "x" debe salir del bucle. Es igual en mayúsculas o minúsculas.

Debemos usar la cláusula EXIT.

#### PRÁCTICA 4

Debemos crear una variable llamada NOMBRE

Debemos pintar tantos asteriscos como letras tenga el nombre. Usamos un bucle FOR

Por ejemplo  Alberto --> *******

#### PRÁCTICA 5

Creamos dos variables numéricas, "inicio y fin"

Las inicializamos con algún valor:

Debemos sacar los números que sean múltiplos de 4 de ese rango