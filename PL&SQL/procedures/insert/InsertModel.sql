CREATE OR REPLACE PROCEDURE InsertModel(input_model IN model.model%TYPE, input_brand IN brand.brand%TYPE) 
IS
    id INTEGER;
BEGIN
    SELECT id_brand INTO id FROM BRAND WHERE brand=input_brand;
    INSERT INTO MODEL(model,brand_id) VALUES(input_model,id);
END;

exec InsertModel('&model','&brand');
