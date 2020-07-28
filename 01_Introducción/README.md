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

Iniciar sesión desde la consola SQL*PLUS como administrador:

> sqlplus / AS SYSDBA

ó

> CONN / AS SYSDBA

Para permitir la ejecución de comandos SQL:

> alter session set "_ORACLE_SCRIPT"=true;

Crear un nuevo usuario llamado 'HR' con su contraseña 'hr', que nos permitirá realizar las prácticas:

>  create user HR identified by hr;

Al usuario 'HR' le asignamos el privilegio de iniciar sesión:

> grant create session to THE_USER;