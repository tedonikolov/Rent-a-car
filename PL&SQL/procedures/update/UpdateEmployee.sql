CREATE OR REPLACE PROCEDURE UpdateEmployee(input_id IN INTEGER, input_telephone IN INTEGER) IS
BEGIN
    UPDATE EMPLOYEES SET telephone = input_telephone WHERE id_employee = input_id;
END;

exec UpdateEmployee('&employee', '&new_telephone');
