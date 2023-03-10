CREATE TABLE rent (
    id_rent      INTEGER NOT NULL,
    client_id    INTEGER NOT NULL,
    car_id       INTEGER NOT NULL,
    employees_id INTEGER NOT NULL,
    rent_date    DATE,
    days         INTEGER,
    PRIMARY KEY ( id_rent ),
    CONSTRAINT rent_car_fk FOREIGN KEY ( car_id ) REFERENCES car ( id_car ),
    CONSTRAINT rent_client_fk FOREIGN KEY ( client_id ) REFERENCES client ( id_client ),
    CONSTRAINT rent_employees_fk FOREIGN KEY ( employees_id ) REFERENCES employees ( id_employee )
);

INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (1,5,3,8,DATE '2021-02-05',7);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (2,3,4,4,DATE '2021-03-11',10);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (3,2,5,3,DATE '2021-03-15',8);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (4,4,10,7,DATE '2021-05-03',15);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (5,10,11,3,DATE '2021-05-18',7);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (6,14,6,7,DATE '2021-05-25',5);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (7,8,12,9,DATE '2021-06-14',20);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (8,15,7,4,DATE '2021-07-08',31);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (9,17,6,8,DATE '2021-07-13',12);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (10,9,3,3,DATE '2021-11-21',5);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (11,1,1,9,DATE '2021-12-24',1);
INSERT INTO RENT(ID_RENT,CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES (12,4,4,3,DATE '2021-12-30',5);

UPDATE RENT
SET CAR_ID=2
WHERE ID_RENT=10;

DELETE FROM RENT WHERE ID_RENT=6;