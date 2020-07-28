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
DBMS_OUTPUT.PUT_LINE('Hello World!');
~~~

Para concatenar cadenas en ese comando, se utiliza `||`:

~~~
DBMS_OUTPUT.PUT_LINE('Hello' || ' ' || 'World');
~~~

**Notas:** Para el uso de cadenas de caracteres se deben usar las comillas simples `''`.