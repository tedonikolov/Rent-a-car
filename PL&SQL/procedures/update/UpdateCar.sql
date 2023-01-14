CREATE OR REPLACE PROCEDURE UpdateCar(input_id IN INTEGER, input_traveled IN INTEGER) IS
BEGIN
    UPDATE CAR SET traveled = input_traveled WHERE id_car = input_id;
END;

exec UpdateCar('&car_id', '&new_traveled');
