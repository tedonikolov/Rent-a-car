CREATE OR REPLACE PROCEDURE SearchRentBetweenDates(input_from_date IN DATE, input_to_date IN DATE)IS
BEGIN
    FOR v_record IN (   SELECT CLIENT.NAME AS client,BRAND,MODEL,EMPLOYEES.NAME AS employee,RENT_DATE,DAILY_PRICE*DAYS AS total FROM RENT R
                        JOIN CLIENT ON CLIENT.ID_CLIENT=R.CLIENT_ID
                        JOIN CAR ON CAR.ID_CAR=R.CAR_ID
                        JOIN MODEL M ON M.id_model=CAR.MODEL_ID
                        JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
                        JOIN EMPLOYEES ON EMPLOYEES.ID_EMPLOYEE=R.EMPLOYEES_ID
                        WHERE RENT_DATE BETWEEN input_from_date and input_to_date
                        ORDER BY CLIENT_ID)
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_record.client || ': ' || v_record.BRAND || '-' || v_record.MODEL || ', служител: ' || v_record.employee || ', дата:' || v_record.RENT_DATE || ', цена общо: ' || v_record.total || 'лв.');
    END LOOP;
END;

exec SearchRentBetweenDates ('&from_date','&to_date');
