CREATE SEQUENCE position_sequence;

CREATE OR REPLACE TRIGGER position_on_insert
  BEFORE INSERT ON position
  FOR EACH ROW
BEGIN
  SELECT position_sequence.nextval
  INTO :new.id_position
  FROM dual;
END;
