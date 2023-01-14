CREATE OR REPLACE PROCEDURE InsertClient(input_name IN client.name%TYPE, input_address IN client.address%TYPE, input_telephone IN client.telephone%TYPE) IS
BEGIN
    INSERT INTO CLIENT(name,address,telephone) VALUES(input_name,input_address,input_telephone);
END;

exec InsertClient('&name','&address','&telephone');
