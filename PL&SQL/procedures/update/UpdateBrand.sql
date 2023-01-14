CREATE OR REPLACE PROCEDURE UpdateBrand(input_id IN brand.id_brand%TYPE, input_brand IN brand.brand%TYPE) IS
BEGIN
    UPDATE BRAND SET brand = input_brand WHERE id_brand = input_id;
END;

exec UpdateBrand('&brand_id', '&new_brand');
