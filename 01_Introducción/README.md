# INTRODUCCIÓN

## CONCEPTOS

### ¿QUÉ ES PL/SQL?

PL/SQL se denomina `Procedural Language SQL`, es decir, Lenguaje Procedural de SQL, que en realidad es una extensión para el lenguaje SQL de Oracle.

Un lenguaje procedural es aquel que sigue las normas básicas de la programación estructurada y procedimental, es decir, tiene variables, bucles, condicionales, etc. SQL en su forma pura no cuenta con esas características.

### BLOQUES PL/SQL

El objeto básico de PL/SQL es un bloque.

Los bloques están divididos en las siguientes secciones:

* DECLARE
* BEGIN
* EXEPTION
* END

PL/SQL es un bloque donde se construirán y mezclarán los comandos PL/SQL.

### TIPOS DE COMPONENTES PL/SQL

* Bloques anónimos
* Procedimientos, funciones y paquetes
* Triggers

## CONSIDERACIONES

Al finalizar la instalación, tanto la base de datos CDB como la PDB se encuentran abiertas y disponibles para ser utilizadas. Pero al reiniciar el servidor y volver a iniciarse el servicio, solo la base de datos contenedor (CDB) se iniciará en forma automática.

Para configurar las bases de datos PDB (como ser la base XEPDB1 creada durante la instalación) para que inicien de forma automática se debe realizar lo siguiente:

Iniciar SQL*Plus desde el CMD o terminal:

    sqlplus / as sysdba

Ejecutar los siguientes comandos:

    SQL> ALTER PLUGGABLE DATABASE ALL OPEN;
    SQL> ALTER PLUGGABLE DATABASE ALL SAVE STATE;


Iniciar sessión en SQL Developer con la configuración:

~~~
nombre: SYSTEM
user: system
password: password
nombre del servicio: xepdb1
~~~

Debemos habilitar un usuario que Oracle XE nos proporciona para realizar nuestras pruebas, este usuario se llama `HR`, para ello, en el editor de código `sql`, ejecutar los siguientes comandos:

>   ALTER SESSION SET CONTAINER=XEPDB1;

>   ALTER USER HR IDENTIFIED BY hr ACCOUNT UNLOCK;

Iniciar una nueva sesión en SQL Developer con el usuario habilitado.

~~~
nombre: HR
user: hr
password: hr
nombre del servicio: xepdb1
~~~