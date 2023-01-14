CREATE SEQUENCE color_sequence;

CREATE OR REPLACE TRIGGER color_on_insert
  BEFORE INSERT ON color
  FOR EACH ROW
BEGIN
  SELECT color_sequence.nextval
  INTO :new.id_color
  FROM dual;
END;
