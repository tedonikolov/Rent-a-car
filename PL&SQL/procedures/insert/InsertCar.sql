CREATE OR REPLACE PROCEDURE InsertCar(input_type IN type.type%TYPE, input_color IN color.color%TYPE, input_model IN model.model%TYPE, input_price IN car.daily_price%TYPE, input_year IN car.year%TYPE, input_traveled IN car.traveled%TYPE) 
IS
    id_type INTEGER;
    id_color INTEGER;
    id_model INTEGER;
BEGIN
    SELECT id_type INTO id_type FROM TYPE WHERE type=input_type;
    SELECT id_color INTO id_color FROM COLOR WHERE color=input_color;
    SELECT id_model INTO id_model FROM MODEL WHERE model=input_model;
    INSERT INTO CAR(TYPE_ID,COLOR_ID,MODEL_ID,DAILY_PRICE,YEAR,TRAVELED) VALUES(id_type,id_color,id_model,input_price,input_year,input_traveled);
END;

exec InsertCar('&type','&color','&model','&daily_price','&year','&traveled');
