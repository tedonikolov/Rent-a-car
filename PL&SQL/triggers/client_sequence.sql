CREATE SEQUENCE client_sequence;

CREATE OR REPLACE TRIGGER client_on_insert
  BEFORE INSERT ON client
  FOR EACH ROW
BEGIN
  SELECT client_sequence.nextval
  INTO :new.id_client
  FROM dual;
END;
