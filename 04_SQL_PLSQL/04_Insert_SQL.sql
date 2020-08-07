DECLARE
    col1   test.c1%TYPE;
    col2   test.c2%TYPE;
BEGIN
    col1 := 10;
    INSERT INTO test (
        c1,
        c2
    ) VALUES (
        col1,
        'AAAAAAA'
    );
    commit;
END;