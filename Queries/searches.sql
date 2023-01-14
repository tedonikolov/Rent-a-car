//Search for a car by type:
SELECT type, brand, model, daily_price 
FROM CAR C
JOIN TYPE ON TYPE.id_type=C.TYPE_ID
JOIN MODEL M ON M.id_model=C.MODEL_ID
JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
WHERE TYPE_ID LIKE '&type_id'
ORDER BY daily_price;

//Search for a car by brand:
SELECT type, brand, model, daily_price 
FROM CAR C
JOIN TYPE ON TYPE.id_type=C.TYPE_ID
JOIN MODEL M ON M.id_model=C.MODEL_ID
JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
WHERE BRAND_ID LIKE '&brand_id'
ORDER BY daily_price;

//Search for a car by model:
SELECT type, brand, model, daily_price 
FROM CAR C
JOIN TYPE ON TYPE.id_type=C.TYPE_ID
JOIN MODEL M ON M.id_model=C.MODEL_ID
JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
WHERE MODEL_ID LIKE '&model_id'
ORDER BY daily_price;


//Search for a car by daily price:
SELECT type, brand, model, daily_price 
FROM CAR C
JOIN TYPE ON TYPE.id_type=C.TYPE_ID
JOIN MODEL M ON M.id_model=C.MODEL_ID
JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
WHERE daily_price LIKE '&price'
ORDER BY daily_price;
