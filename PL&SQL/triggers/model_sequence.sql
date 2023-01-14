CREATE SEQUENCE model_sequence;

CREATE OR REPLACE TRIGGER model_on_insert
  BEFORE INSERT ON model
  FOR EACH ROW
BEGIN
  SELECT model_sequence.nextval
  INTO :new.id_model
  FROM dual;
END;
