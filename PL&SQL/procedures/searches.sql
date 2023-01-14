//Procedure for searching for a car by type:
CREATE OR REPLACE PROCEDURE SearchCarByType(input_type IN VARCHAR2) IS
BEGIN
    FOR v_record IN (  SELECT type, brand, model, daily_price 
                            FROM CAR C
                            JOIN TYPE ON TYPE.id_type=C.TYPE_ID
                            JOIN MODEL M ON M.id_model=C.MODEL_ID
                            JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
                            WHERE type LIKE input_type
                            ORDER BY daily_price)
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_record.type || ' ' ||v_record.brand || ' ' || v_record.model || '-цена за ден:' || v_record.daily_price);
    END LOOP;
END;
exec SearchCarByType('&type_id');
   


//Procedure for searching for a car by brand:
CREATE OR REPLACE PROCEDURE SearchCarByBrand(input_brand IN VARCHAR2) IS
BEGIN
    FOR v_record IN (   SELECT type, brand, model, daily_price 
                        FROM CAR C
                        JOIN TYPE ON TYPE.id_type=C.TYPE_ID
                        JOIN MODEL M ON M.id_model=C.MODEL_ID
                        JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
                        WHERE brand LIKE input_brand
                        ORDER BY daily_price)
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_record.type || ' ' ||v_record.brand || ' ' || v_record.model || '-цена за ден:' || v_record.daily_price);
    END LOOP;
END;

exec SearchCarByBrand('&brand');



//Procedure for searching for a car by model:
CREATE OR REPLACE PROCEDURE SearchCarByModel(input_model IN INTEGER) IS
BEGIN
    FOR v_record IN (   SELECT type, brand, model, daily_price 
                        FROM CAR C
                        JOIN TYPE ON TYPE.id_type=C.TYPE_ID
                        JOIN MODEL M ON M.id_model=C.MODEL_ID
                        JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
                        WHERE model LIKE input_model
                        ORDER BY daily_price)
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_record.type || ' ' ||v_record.brand || ' ' || v_record.model || '-цена за ден:' || v_record.daily_price);
    END LOOP;
END;

exec SearchCarByModel('&model');



//Procedure for searching for a car by daily price:
CREATE OR REPLACE PROCEDURE SearchCarByDailyPrice(input_daily_price IN INTEGER) IS
BEGIN
    FOR v_record IN (   SELECT type, brand, model, daily_price 
                        FROM CAR C
                        JOIN TYPE ON TYPE.id_type=C.TYPE_ID
                        JOIN MODEL M ON M.id_model=C.MODEL_ID
                        JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
                        WHERE daily_price LIKE input_daily_price
                        ORDER BY daily_price)
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_record.type || ' ' ||v_record.brand || ' ' || v_record.model || '-цена за ден:' || v_record.daily_price);
    END LOOP;
END;

exec SearchCarByDailyPrice('&daily_price');
