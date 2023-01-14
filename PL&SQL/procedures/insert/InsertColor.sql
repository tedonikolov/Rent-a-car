CREATE OR REPLACE PROCEDURE InsertColor(input_color IN color.color%TYPE) IS
BEGIN
    INSERT INTO COLOR(color) VALUES(input_color);
END;

exec InsertColor('&color');
