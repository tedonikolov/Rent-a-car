CREATE SEQUENCE employees_sequence;

CREATE OR REPLACE TRIGGER employees_on_insert
  BEFORE INSERT ON employees
  FOR EACH ROW
BEGIN
  SELECT employees_sequence.nextval
  INTO :new.id_employee
  FROM dual;
END;
