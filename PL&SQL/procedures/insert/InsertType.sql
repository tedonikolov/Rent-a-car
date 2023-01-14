CREATE OR REPLACE PROCEDURE InsertType(input_type IN type.type%TYPE) IS
BEGIN
    INSERT INTO TYPE(type) VALUES(input_type);
END;

exec InsertType('&type'); 
