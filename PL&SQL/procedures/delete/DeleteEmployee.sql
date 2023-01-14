CREATE OR REPLACE PROCEDURE DeleteEmployee(input_id IN INTEGER) IS
BEGIN
    DELETE FROM EMPLOYEES WHERE id_employee = input_id;
END;

exec DeleteEmployee('&employee_id');
