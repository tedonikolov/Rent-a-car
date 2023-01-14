CREATE OR REPLACE PROCEDURE InsertPosition(input_position IN position.position%TYPE) IS
BEGIN
    INSERT INTO POSITION(position) VALUES(input_position);
END;

exec InsertPosition('&position');
