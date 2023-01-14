CREATE OR REPLACE PROCEDURE DeleteType(input_id IN model.id_model%TYPE) IS
BEGIN
    DELETE FROM TYPE WHERE id_type = input_id;
END;

exec DeleteType('&type_id');
