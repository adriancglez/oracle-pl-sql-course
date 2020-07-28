/* Permitir la ejecución de comandos SQL */
alter session set "_ORACLE_SCRIPT"=true;

/* Creando usuario nuevo para las prácticas
    user: HR
    password: hr
 */
create user HR identified by hr;

/* Asignando permido para que el usuario creado pueda iniciar sesión */
grant create session to HR;