CREATE OR REPLACE PROCEDURE DeleteCar(input_id IN INTEGER) IS
BEGIN
    DELETE FROM CAR WHERE id_car = input_id;
END;

exec DeleteCar('&car_id');
