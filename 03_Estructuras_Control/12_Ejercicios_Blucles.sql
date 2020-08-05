-- PRÁCTICA 1

/* Vamos a crear la tabla de multiplicar del 1 al 10, con los tres tipos de bucles: LOOP, WHILE y FOR*/

-- LOOP
SET SERVEROUTPUT ON;

DECLARE
    multiplicando   NUMBER := 1;
    multiplicador   NUMBER;
    producto        NUMBER;
BEGIN
    << loop_multiplicando >> 
    LOOP
    multiplicador := 1;
        
        << loop_multiplicador >> 
        LOOP
            producto := multiplicando * multiplicador;
            dbms_output.put(producto || '  ');
            multiplicador := multiplicador + 1;
            EXIT loop_multiplicador WHEN multiplicador > 10;
        END LOOP;

        dbms_output.put_line('');
        multiplicando := multiplicando + 1;
        EXIT loop_multiplicando WHEN multiplicando > 10;
    END LOOP;
END;

-- WHILE
SET SERVEROUTPUT ON;

DECLARE
    multiplicando   NUMBER := 1;
    multiplicador   NUMBER;
    producto        NUMBER;
BEGIN
    WHILE multiplicando <= 10 LOOP
        multiplicador := 1;
        WHILE multiplicador <= 10 LOOP
            producto := multiplicando * multiplicador;
            dbms_output.put(producto || '  ');
            multiplicador := multiplicador + 1;
        END LOOP;

        dbms_output.put_line('');
        multiplicando := multiplicando + 1;
    END LOOP;
END;

--- FOR
SET SERVEROUTPUT ON;

DECLARE
    producto NUMBER;
BEGIN
    FOR multiplicando IN 1..10 LOOP
        FOR multiplicador IN 1..10 LOOP
            producto := multiplicando * multiplicador;
            dbms_output.put(producto || '  ');
        END LOOP;

        dbms_output.put_line('');
    END LOOP;
END;

-- PRÁCTICA 2

/* Crear una variable llamada TEXTO de tipo VARCHAR2(100).

Poner alguna frase

Mediante un bucle, escribir la frase al revés, Usamos el bucle WHILE */
SET SERVEROUTPUT ON;

DECLARE
    texto      VARCHAR2(100);
    pos        NUMBER(9);
    caracter   VARCHAR2(2);
BEGIN
    texto := 'Hola Adrián, ¿Cómo estás?';
    pos := length(texto);
    WHILE pos > 0 LOOP
        caracter := substr(texto, pos, 1);
        dbms_output.put(caracter);
        pos := pos - 1;
    END LOOP;

    dbms_output.put_line('');
END;

-- PRÁCTICA 3

/* Usando la práctica anterior, si en el texto aparece el carácter "x" debe salir del bucle. Es igual en mayúsculas o minúsculas.

Debemos usar la cláusula EXIT. */
SET SERVEROUTPUT ON;

DECLARE
    texto      VARCHAR2(100);
    pos        NUMBER(9);
    caracter   VARCHAR2(2);
BEGIN
    texto := 'Hola Adrián, ¿Cómo estás?';
    pos := length(texto);
    WHILE pos > 0 LOOP
        caracter := substr(texto, pos, 1);
        dbms_output.put(caracter);
        exit when caracter = 'o'; 
        pos := pos - 1;
    END LOOP;

    dbms_output.put_line('');
END;

-- PRÁCTICA 4

/* Debemos crear una variable llamada NOMBRE

Debemos pintar tantos asteriscos como letras tenga el nombre. Usamos un bucle FOR

Por ejemplo  Alberto --> ******* */
SET SERVEROUTPUT ON;

DECLARE
    nombre     VARCHAR2(30);
    longitud   NUMBER;
BEGIN
    nombre := 'Guadalupe';
    longitud := length(nombre);
    dbms_output.put(nombre || ' --> ');
    
    FOR i IN 1..longitud LOOP 
        dbms_output.put('*');
    END LOOP;
    dbms_output.put_line('');
END;

-- PRÁCTICA 5

/* Creamos dos variables numéricas, "inicio y fin"

Las inicializamos con algún valor:

Debemos sacar los números que sean múltiplos de 4 de ese rango */
SET SERVEROUTPUT ON;

DECLARE
    inicio      NUMBER;
    fin         NUMBER;
    resultado   NUMBER;
BEGIN
    inicio := 3;
    fin := 12;
    FOR i IN inicio..fin LOOP
        resultado := i MOD 4;
        CONTINUE WHEN resultado <> 0;
        dbms_output.put(i || ', ');
    END LOOP;

    dbms_output.put_line('');
END;