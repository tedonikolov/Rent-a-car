CREATE OR REPLACE PROCEDURE UpdateRent(input_id IN INTEGER, input_days IN INTEGER) IS
BEGIN
    UPDATE RENT SET days = input_days WHERE id_rent = input_id;
END;

exec UpdateRent('&rent_id', '&new_days');
