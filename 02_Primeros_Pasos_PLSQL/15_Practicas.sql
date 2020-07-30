-- PRÁCTICA 1

/* Crea un bloque PL/SQL con tres variables VARCHAR2: nombre, apellido1 y apellido2 */
DECLARE
    nombre      VARCHAR2(20);
    apellido1   VARCHAR2(20);
    apellido2   VARCHAR2(20);
    iniciales   VARCHAR2(6);
BEGIN
    nombre := 'Adriásn';
    apellido1 := 'Cobá';
    apellido2 := 'González';
    iniciales := substr(nombre, 1, 1)
                 || '.'
                 || substr(apellido1, 1, 1)
                 || '.'
                 || substr(apellido2, 1, 1)
                 || '.';

    dbms_output.put_line(upper(iniciales));
END;

-- PRÁCTICA 2

/* Averiguar el nombre del día que naciste */
DECLARE
    fec_nac      DATE;
    dia_semana   VARCHAR2(100);
BEGIN
    fec_nac := to_date('19/07/1990');
    dia_semana := to_char(fec_nac, 'DAY');
    dbms_output.put_line(dia_semana);
END;