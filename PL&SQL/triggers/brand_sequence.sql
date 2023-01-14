CREATE SEQUENCE brand_sequence;

CREATE OR REPLACE TRIGGER brand_on_insert
  BEFORE INSERT ON brand
  FOR EACH ROW
BEGIN
  SELECT brand_sequence.nextval
  INTO :new.id_brand
  FROM dual;
END;
