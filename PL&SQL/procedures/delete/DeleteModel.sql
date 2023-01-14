CREATE OR REPLACE PROCEDURE DeleteModel(input_id IN model.id_model%TYPE) IS
BEGIN
    DELETE FROM MODEL WHERE id_model = input_id;
END;

exec DeleteModel('&model_id');
