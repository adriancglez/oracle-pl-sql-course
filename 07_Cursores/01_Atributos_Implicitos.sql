SET SERVEROUTPUT ON

DECLARE
    x NUMBER;
BEGIN
    UPDATE test
    SET
        c2 = 'pppppp'
    WHERE
        c1 = 100;

    dbms_output.put_line(SQL%rowcount);
    IF SQL%found THEN
        dbms_output.put_line('Encontrado');
    END IF;
    IF SQL%notfound THEN
        dbms_output.put_line('No Encontrado');
    END IF;
END;