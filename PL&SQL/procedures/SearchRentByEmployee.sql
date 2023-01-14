CREATE OR REPLACE PROCEDURE SearchRentByEmployee(input_employee_name IN VARCHAR2)
IS
selected_employee VARCHAR2(255);
BEGIN
selected_employee:= '%'||input_employee_name||'%';
    FOR v_record IN (   SELECT EMPLOYEES.NAME AS emplyoee,TYPE,BRAND,MODEL,COLOR,TRAVELED,CLIENT.NAME AS client,RENT_DATE 
                        FROM CAR C
                        JOIN RENT ON RENT.CAR_ID=C.ID_CAR
                        JOIN TYPE ON TYPE.ID_TYPE=C.TYPE_ID
                        JOIN COLOR ON COLOR.ID_COLOR=C.COLOR_ID
                        JOIN MODEL M ON M.id_model=C.MODEL_ID
                        JOIN BRAND ON BRAND.id_brand=M.BRAND_ID
                        JOIN CLIENT ON CLIENT.ID_CLIENT=RENT.CLIENT_ID
                        JOIN EMPLOYEES ON EMPLOYEES.ID_EMPLOYEE=RENT.EMPLOYEES_ID
                        WHERE EMPLOYEES.NAME LIKE selected_employee
                        ORDER BY C.TYPE_ID,RENT_date)
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_record.emplyoee || ': ' || v_record.TYPE || '-' || v_record.BRAND || '-' || v_record.MODEL || '-' || v_record.COLOR || ', изминати киометри:' || v_record.TRAVELED || ', отдадена на: ' || v_record.client || ' дата:' || v_record.RENT_DATE);
    END LOOP;
END;

exec SearchRentByEmployee ('&employee');
