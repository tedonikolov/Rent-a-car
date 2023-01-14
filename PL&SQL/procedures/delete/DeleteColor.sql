CREATE OR REPLACE PROCEDURE DeleteColor(input_id IN INTEGER) IS
BEGIN
    DELETE FROM COLOR WHERE id_color = input_id;
END;

exec DeleteColor('&color_id');s
