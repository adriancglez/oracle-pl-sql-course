DECLARE
    variable        NUMBER;
    
    -- El operador %TYPE asigna el tipo de dato de variable a variable_type
    variable_type   variable%TYPE;

    /* El operador %TYPE asigna el tipo de dato de la columna salary de la 
    tabla employees a employee */
    employee        employees.salary%TYPE;
BEGIN

    -- Podemos asignar valores a las variables declaradas con %TYPE según su tipo.
    variable_type := 50;
    employee := 100;
END;