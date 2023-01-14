CREATE OR REPLACE PROCEDURE UpdateColor(input_id IN INTEGER, input_color IN VARCHAR2) IS
BEGIN
    UPDATE COLOR SET color = input_color WHERE id_color = input_id;
END;

exec UpdateColor('&color_id', '&new_color');
