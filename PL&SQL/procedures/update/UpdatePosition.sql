CREATE OR REPLACE PROCEDURE UpdatePosition(input_id IN INTEGER, input_position IN VARCHAR2) IS
BEGIN
    UPDATE POSITION SET position = input_position WHERE id_position = input_id;
END;

exec UpdatePosition('&position_id', '&new_position');
