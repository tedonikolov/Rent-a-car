CREATE OR REPLACE PROCEDURE UpdateModel(input_id IN model.id_model%TYPE, input_model IN model.model%TYPE) IS
BEGIN
    UPDATE MODEL SET model = input_model WHERE id_model = input_id;
END;

exec UpdateModel('&model_id', '&new_model');
