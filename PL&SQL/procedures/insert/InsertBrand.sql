CREATE OR REPLACE PROCEDURE InsertBrand(input_brand IN brand.brand%TYPE) IS
BEGIN
    INSERT INTO BRAND(brand) VALUES(input_brand);
END;

exec InsertBrand('&brand'); 
