CREATE OR REPLACE PROCEDURE UpdateClient(input_id IN INTEGER, input_telephone IN INTEGER) IS
BEGIN
    UPDATE CLIENT SET telephone = input_telephone WHERE id_client = input_id;
END;

exec UpdateClient('&client_id', '&new_telephone');
