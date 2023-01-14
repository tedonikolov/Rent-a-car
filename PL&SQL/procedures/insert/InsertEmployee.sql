CREATE OR REPLACE PROCEDURE InsertEmployee(input_name IN employees.name%TYPE, input_position IN position.position%TYPE, input_telephone IN employees.telephone%TYPE) 
IS
    id INTEGER;
BEGIN
    SELECT id_position INTO id FROM POSITION WHERE position=input_position;
    INSERT INTO EMPLOYEES(name,position_id,telephone) VALUES(input_name,id,input_telephone);
END;

exec InsertEmployee('&name','&position','&telephone');
