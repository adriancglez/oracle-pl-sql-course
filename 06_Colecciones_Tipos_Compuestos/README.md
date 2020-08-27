# COLECCIONES Y TIPOS COMPUESTOS

Son variables complejas o componentes que pueden albergar múltiples valores, a diferencia de los escalares que pueden tener 1.

Son de dos posibles tipos:

* Records
* Colecciones o Collections
    * Arrays asociativos (index by)
    * Nested tables
    * Varrays

## PL/SQL RECORDS

Son similares a los registros de una tabla. Pueden albergar una "fila" de datos de distintos tipos. Un ejemplo es al usar `%ROWTYPE`. Podemos definirlos de una forma personalizada con la cláusula `RECORD`.

* Debemos declarar o crear el tipo.
* Su formato es el siguiente:
    > TYPE nombre IS RECORD(campo1, campo2, ...);
* Una vez delcarado el tipo, podemos crear variables de ese tipo
    > VARIABLE TIPO
* Los campos pueden ser de cualquier tipo, incluido otros records o collections.
    * Pueden llevar cláusula `null` y cláusula `default`

~~~
    TYPE empleado IS RECORD
    (nombre varchar2(100),
    salario number,
    fecha_employees.hirre_date%TYPE,
    datos_completos employees%ROWTYPE);

    emple1 empleado;
~~~

## COLECCIONES Y TIPOS COMPUESTOS

Las colecciones se diferencian del record en que solo almacenan una fila con valores de distintos tipos, en cambio, las colecciones almacenan objetos del mismo tipo. Las colecciones son similares a los arrays en cualquier lenguaje de programación tipado.

### ASSOCIATIVE ARRAYS (INDEX BY tables)

Son colecciones `PL/SQL` con dos columnas.
* Clave primaria de tipo entero o cadena.
* Valores: un tipo que puede ser escalar, o record.

|cod|Value|
|---|-----|
|0  |Juan |
|1  |Pepe |
|2  |Rosa |
|...|...  |

* Sintaxis

~~~
    TYPE nombre IS TABLE OF
    TIPO COLUMNA
    INDEX BY PLS_INTEGER | BINARY_INTEGER | VARCHAR2(X);

    variable TIPO;
~~~

* Acceso al array
    * Para acceder al array: array(in)
* Si es de un tipo completo, por ejemplo employees, usamos: array(n).campo

* Métodos de los arrays
    * Exists(N): Detectar si existe un determinado elemento
    * Count: Número de elementos
    * First: Devuelve el índice mas pequeño
    * Last: Devuelve el índice mas alto
    * Prior(N): Devuelve el índice anterior a N
    * Next(N): Devuelve el índice posterior a N
    * Delete: Borra todo
    * Delete(N): Borra el índice N
    * Delete(M,N): Borra de los índices M a N


## PRÁCTICAS DE COLECCIONES Y RECORDS

Creamos un TYPE RECORD que tenga las siguientes columnas

    NAME VARCHAR2(100),
    SAL EMPLOYEES.SALARY%TYPE,
    COD_DEPT EMPLOYEES.DEPARTMENT_ID%TYPE);

Creamos un TYPE TABLE basado en el RECORD anterior

Mediante un bucle cargamos en la colección los empleados. El campo NAME debe contener FIRST_NAME y LAST_NAME concatenado.

Para cargar las filas y siguiendo un ejemplo parecido que hemos visto en el vídeo usamos el EMPLOYEE_ID que va de 100 a 206

A partir de este momento y ya con la colección cargada, hacemos las siguientes operaciones, usando métodos de la colección.

* Visualizamos toda la colección
* Visualizamos el primer empleado
* Visualizamos el último empleado
* Visualizamos el número de empleados
* Borramos los empleados que ganan menos de 7000 y visualizamos de nuevo la
colección
* Volvemos a visualizar el número de empleados para ver cuantos se han borrado