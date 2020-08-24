SET SERVEROUTPUT ON;

DECLARE
    reg           regions%rowtype;
    reg_control   regions.region_id%TYPE;
BEGIN
    reg.region_id := 100;
    reg.region_name := 'Africa';
    SELECT
        region_id
    INTO reg_control
    FROM
        regions
    WHERE
        region_id = reg.region_id;

    dbms_output.put_line('La región ya existe');
EXCEPTION
    WHEN no_data_found THEN
        INSERT INTO regions VALUES (
            reg.region_id,
            reg.region_name
        );

        COMMIT;
END;