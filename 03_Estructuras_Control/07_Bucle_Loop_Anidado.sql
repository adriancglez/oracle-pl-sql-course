SET SERVEROUTPUT ON;

DECLARE
    s   PLS_INTEGER := 0;
    i   PLS_INTEGER := 0;
    j   PLS_INTEGER;
BEGIN
    << myFirstLoop >> LOOP
        --   Print <<myFirstLoop>>
        i := i + 1;
        j := 100;
        dbms_output.put_line('myFirstLoop: ' || i);
        
        << mySecondLoop >> LOOP
        --   Print <<mySecondLoop>>
            EXIT myFirstLoop WHEN ( i > 3 );
            dbms_output.put_line('mySecondLoop: ' || j);
            j := j + 1;
            EXIT mySecondLoop WHEN ( j > 105 );
        END LOOP mySecondLoop;

    END LOOP myFirstLoop;

    dbms_output.put_line('FINISH!!!');
END;