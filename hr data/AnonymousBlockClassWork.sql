SET SERVEROUTPUT ON


DECLARE
    v_count NUMBER(4);
    v_name VARCHAR2(25) := 'Smith';
BEGIN
   SELECT COUNT(Employee_Id) INTO v_count
   FROM HR.Employees WHERE Last_Name = v_name;

   IF v_count = 0 THEN
      DBMS_OUTPUT.PUT_LINE('Nobody with that '||v_name||' name');
   ELSE
      DBMS_OUTPUT.PUT_LINE('There are '||v_count||' person(s) named '||v_name);
   END IF;
EXCEPTION
   WHEN OTHERS
      THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;