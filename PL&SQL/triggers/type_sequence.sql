CREATE SEQUENCE type_sequence;

CREATE OR REPLACE TRIGGER type_on_insert
  BEFORE INSERT ON type
  FOR EACH ROW
BEGIN
  SELECT type_sequence.nextval
  INTO :new.id_type
  FROM dual;
END;
