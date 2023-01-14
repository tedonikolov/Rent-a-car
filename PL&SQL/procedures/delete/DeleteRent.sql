CREATE OR REPLACE PROCEDURE DeleteRent(input_id IN INTEGER) IS
BEGIN
    DELETE FROM RENT WHERE id_rent = input_id;
END;

exec DeleteRent('&rent_id');
