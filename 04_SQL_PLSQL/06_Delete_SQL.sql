DECLARE
    t test.c1%TYPE;
BEGIN
    t := 47;
    DELETE FROM test
    WHERE
        test.c1 = t;
END;