CREATE OR REPLACE PROCEDURE NameCount (p_name VARCHAR2) AS
	v_count NUMBER(4);
BEGIN
  SELECT COUNT(Employee_Id) INTO v_count
  FROM HR.Employees WHERE Last_Name = p_name;
  IF v_count = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Nobody named '||p_name||' here');
  ELSE
    DBMS_OUTPUT.PUT_LINE('There are '||v_count||' person(s) named ' 	||p_name);
   END IF;
EXCEPTION
   WHEN OTHERS
      THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;


EXEC NameCount('Smith');

DROP PROCEDURE NameCount;