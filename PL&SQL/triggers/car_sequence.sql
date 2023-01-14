REATE SEQUENCE car_sequence;

CREATE OR REPLACE TRIGGER car_on_insert
  BEFORE INSERT ON car
  FOR EACH ROW
BEGIN
  SELECT car_sequence.nextval
  INTO :new.id_car
  FROM dual;
END;
