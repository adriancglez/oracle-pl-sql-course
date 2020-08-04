-- PRÁCTICA 1

/* Vamos a crear una variable denominada "usuario", de tipo VARCHAR2(40)

Vamos a poner dentro el nombre del usuario que somos, usando la función USER de Oracle que devuelve el nombre del usuario con el que estamos conectados (Recuerda que en Oracle no hace falta poner paréntesis si una función no tiene argumentos)

               usuario:=user

Luego hacermos un CASE para que nos pinte un mensaje del estilo:

    Si el usuario es SYS ponemos el mensaje "Eres superadministrador"
    Si el usuario es SYSTEM ponemos el mensaje "Eres un administrador normal"
    Si el usuario es HR ponemos el mensaje "Eres de Recursos humanos"
   Cualquier otro usuario ponemos "usuario no autorizado */

SET SERVEROUTPUT ON

DECLARE
    usuario VARCHAR2(40);
BEGIN
    usuario := user;
    CASE usuario
        WHEN 'SYS' THEN
            dbms_output.put_line('Eres superadministrador');
        WHEN 'SYSTEM' THEN
            dbms_output.put_line('Eres un administrador normal');
        WHEN 'HR' THEN
            dbms_output.put_line('Eres de Recursos Humanos');
        ELSE
            dbms_output.put_line('Usuario no autorizado');
    END CASE;
END;