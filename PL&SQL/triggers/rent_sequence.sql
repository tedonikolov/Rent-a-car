CREATE SEQUENCE rent_sequence;

CREATE OR REPLACE TRIGGER rent_on_insert
  BEFORE INSERT ON rent
  FOR EACH ROW
BEGIN
  SELECT rent_sequence.nextval
  INTO :new.id_rent
  FROM dual;
END;
