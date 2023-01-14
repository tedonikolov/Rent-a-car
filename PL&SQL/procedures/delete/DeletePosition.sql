CREATE OR REPLACE PROCEDURE DeletePosition(input_id IN INTEGER) IS
BEGIN
    DELETE FROM POSITION WHERE id_position = input_id;
END;

exec DeletePosition('&position_id');
