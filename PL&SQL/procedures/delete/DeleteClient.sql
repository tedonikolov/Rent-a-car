CREATE OR REPLACE PROCEDURE DeleteClient(input_id IN INTEGER) IS
BEGIN
    DELETE FROM CLIENT WHERE id_client = input_id;
END;

exec DeleteClient('&client_id');
