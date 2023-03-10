CREATE TABLE employees (
    id_employee INTEGER NOT NULL,
    name        VARCHAR2(45),
    position_id  INTEGER NOT NULL,
    telephone   INTEGER,
    PRIMARY KEY ( id_employee ),
    CONSTRAINT employees_position_fk FOREIGN KEY ( position_id ) REFERENCES position ( id_position )
);

INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (1,'?????? ?????',2,'0885713647');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (2,'?????? ????????',2,'0884873641');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (3,'????? ???????',5,'0889510051');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (4,'?????? ????????',5,'0889320032');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (5,'?????? ???????',3,'0894325471');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (6,'??????? ?????????',4,'0895364734');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (7,'????? ????????',1,'0887418874');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (8,'??????? ??????',1,'0894624135');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (9,'????? ??????',1,'0884564128');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (10,'???? ?????',6,'0884136547');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (11,'??? ???????',7,'0884725364');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (12,'????? ??????',7,'0885812387');
INSERT INTO EMPLOYEES(ID_EMPLOYEE,NAME,POSITION_ID,TELEPHONE) VALUES (13,'????? ??????',7,'0894567142');

UPDATE EMPLOYEES
SET TELEPHONE='0897641243'
WHERE ID_EMPLOYEE=11;

DELETE FROM EMPLOYEES WHERE ID_EMPLOYEE=13;