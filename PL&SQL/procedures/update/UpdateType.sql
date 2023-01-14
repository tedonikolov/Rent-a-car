CREATE OR REPLACE PROCEDURE UpdateType(input_id IN type.id_type%TYPE, input_type IN type.type%TYPE) IS
BEGIN
    UPDATE TYPE SET type = input_type WHERE id_type = input_id;
END;

exec UpdateType('&type_id', '&new_type');
