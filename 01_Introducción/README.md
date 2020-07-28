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

Para empezar a trabajar con Oracle, es necesario realizar algunas configuraciones.

Iniciar sessión en SQL Developer con la configuración:

~~~
nombre: SYSTEM
user: system
password: password
nombre del servicio: xepdb1
~~~

Debemos habilitar un usuario que Oracle XE nos proporciona para realizar nuestras pruebas, este usuario se llama `HR`, para ello, en el editor de código `sql`, ejecutar los siguientes comandos:

> ALTER USER HR ACCOUNT UNLOCK;

> ALTER USER HR IDENTIFIED BY hr;

Iniciar una nueva sesión en SQL Developer con el usuario habilitado: `HR`.