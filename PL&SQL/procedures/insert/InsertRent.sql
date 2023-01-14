CREATE OR REPLACE PROCEDURE InsertRent(input_client IN client.name%TYPE, input_car_id IN rent.car_id%TYPE, input_employee IN employees.name%TYPE, input_date IN rent.rent_date%TYPE, input_days IN rent.days%TYPE) 
IS
    id_client INTEGER;
    id_employee INTEGER;
    date_old DATE;
    days INTEGER;
    max_rows INTEGER;
    flag BOOLEAN;
BEGIN
    SELECT COUNT(input_car_id) INTO max_rows FROM RENT WHERE car_id=input_car_id;
    SELECT id_client INTO id_client FROM CLIENT WHERE name=input_client;
    SELECT id_employee INTO id_employee FROM EMPLOYEES WHERE name=input_employee;
    flag:=true;
    FOR counter IN 1..max_rows loop
        SELECT rent_date INTO date_old FROM(SELECT rownum rn, rent_date FROM RENT WHERE car_id=input_car_id ORDER BY id_rent) WHERE rn=counter;
        SELECT days INTO days FROM(SELECT rownum rn, days FROM RENT WHERE car_id=input_car_id ORDER BY id_rent) WHERE rn=counter;
        IF date_old + days > input_date
        THEN flag:=false;
        END IF;
    END LOOP;
    IF flag
    THEN INSERT INTO RENT(CLIENT_ID,CAR_ID,EMPLOYEES_ID,RENT_DATE,DAYS) VALUES(id_client,input_car_id,id_employee, input_date,input_days);
    END IF;
END;

exec InsertRent('&client','&car_id','&employee','&rent_date','&days');
