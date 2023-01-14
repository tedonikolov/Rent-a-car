CREATE OR REPLACE PROCEDURE LastTen IS
BEGIN
    FOR v_record IN (   SELECT * FROM 
                        (SELECT CLIENT.NAME AS client,EMPLOYEES.NAME AS employee,POSITION,BRAND,MODEL,RENT_DATE,DAYS,DAILY_PRICE*DAYS AS total FROM RENT R
                        JOIN CLIENT ON CLIENT.ID_CLIENT=R.CLIENT_ID
                        JOIN CAR ON CAR.ID_CAR=R.CAR_ID
                        JOIN MODEL M ON M.id_model=CAR.MODEL_ID
                        JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
                        JOIN EMPLOYEES ON EMPLOYEES.ID_EMPLOYEE=R.EMPLOYEES_ID
                        JOIN POSITION ON POSITION.ID_POSITION=EMPLOYEES.POSITION_ID
                        ORDER BY DAYS DESC)
                        WHERE ROWNUM<=10)
    LOOP
        DBMS_OUTPUT.PUT_LINE('клиент: ' || v_record.client || ' служител: ' || v_record.employee || '-' || v_record.POSITION || ' кола: ' || v_record.BRAND || '-' || v_record.MODEL || ' дата на наемане: ' || v_record.RENT_DATE || ' дни: ' || v_record.DAYS || ' цена общо: ' || v_record.total || 'лв.');
    END LOOP;
END;

exec LastTen();
