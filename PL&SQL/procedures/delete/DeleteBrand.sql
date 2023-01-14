CREATE OR REPLACE PROCEDURE DeleteBrand(input_id IN brand.id_brand%TYPE) IS
BEGIN
    DELETE FROM BRAND WHERE id_brand = input_id;
END;

exec DeleteBrand('&brand_id'); 
