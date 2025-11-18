PL SQL   := ------------------------

SQL: Used to query and manipulate data (e.g., SELECT, INSERT, UPDATE).

PL/SQL: Adds programming features like variables, loops, and conditions to SQL.

Two Block In PL SQL

 1- Anonymous Block -- Anonymous will not have any names it will be not be stored in  database
 2- Named block   -- Named block will have name and it will be stroed as an object database it will compail one time excute multiple time 
 -- stored as an object in DB -
      Procedure
	  Function
	  package
	  trigger
PL SQL STRUCTURE:-

SQL
---------------------------------------------------------------
DECLARE
   -- (Optional) Declare variables, constants, cursors, etc.
BEGIN
   -- Write your SQL and PL/SQL statements here
EXCEPTION
   -- (Optional) Handle errors
END;
/

--------------------------------------------------------------

DECLARE → defines a variable.

BEGIN → executes SQL statements.

EXCEPTION → handles errors if no data found.

DBMS_OUTPUT.PUT_LINE → prints output on screen.

----------------------------------------------------------------
 Types of PL/SQL Programs
 
Type	            Description
Anonymous Block  	Temporary PL/SQL code (not stored in DB).
Procedure	        A named block that performs an action.
Function	        A named block that returns a value.
Trigger	            Code that runs automatically when an event occurs (e.g., after insert).
Package         	A collection of related procedures/functions.

-----------------------------------------------------------------

SET SERVEROUTPUT ON;
begin
dbms_output.put_line( 'Welcome to pl sql session ');
end;
/
==============================================================
--ADD two numbers-plsql code


declare
number1 number(10);
number2 number(10);

begin

dbms_output.put_line('The addition of two numbers are'||(number1+number2));

end;
/
=================================================
declare
number1 number(10);
number2 number(10);

begin
number1:=10;
number2:=5;
dbms_output.put_line('The addition of two numbers are'||(number1+number2));

end;
/ 
==================================================
declare
number1 number(10);
number2 number(10);

begin
number1:=10;
number2:=5;
dbms_output.put_line('The addition of'||number1||'and'||number2||' two numbers are'||(number1+number2));

end;
/
===============================================

declare
number1 number(10):=10;
number2 number(10):=5;

begin
dbms_output.put_line('the addition of'||number1|| 'and '||number2||'  two numbers are  '||(number1+number2));

end;
/ 
=====================================================
declare
number1 number(10):=10;
number2 number(10):=5;
begin
dbms_output.put_line('the addition of'||'number1'|| 'and '||'number2'||'  are;  '||(number1+number2));
end;
/
=====================================================
declare
number1 number(10):=10.5;
number2 number(10):=15.5;
begin
dbms_output.put_line('the addition of'||'number1'|| 'and '||'number2'||'  are;  '||(number1+number2));
end;
/
======================================================

set serveroutput on;

declare
number1 number(10) :=10.5;
number2 number(10) :=20.5;

begin
dbms_output.put_line (' the addition of '|| ' number1 ' ||' and '||' number2 '|| 'are:'||(number1+number2));
end;
/
=========================================================

SET SERVEROUTPUT ON;

DECLARE
    number1 NUMBER(10,2) := 20;
    number2 NUMBER(10,2) := 50;
    result  NUMBER(10,2);
BEGIN
    result := number1 + number2;
    DBMS_OUTPUT.PUT_LINE('The addition of ' || number1 || ' and ' || number2 || ' is: ' || result);
END;
/
===========================================================
SET SERVEROUTPUT ON;
 
DECLARE 
 number1 number(10,2) :=&number1;   ----=-----SELECT NUMBERS WE CAN USE AND SYMBOL
 number2 number(10,2) :=&number2;
 result number(10,2);
BEGIN
 result :=(number1+number2);
 dbms_output.put_line('The addition of '||number1||' and '||number2||' is' ||result);
END;
/
======================================
DECLARE
    number1 NUMBER(10,2) := 20;
    number2 NUMBER(10,2) := 50;
    result  NUMBER(10,2);
BEGIN
    NUMBER1 :=100;  --- WE CAN DECLARE BEGAIN VALUE IS OVER RIDEING RETRIVE THE BEGIN VALUES U DONT HAVE DECLARE VALUES;
    NUMBER2 :=150;
    result := number1 + number2;
    DBMS_OUTPUT.PUT_LINE('The addition of ' || number1 || ' and ' || number2 || ' is: ' || result);
END;
/
=======================================
SELECT 'WELCOME TO '||'PL SQL SESSION' FROM DUAL; --- DONT USE PL SQL COMMand run ctrl enter
================================

----add 3 numbers  add 4 numbers add 5 numbers we can practise


==========================================================



---- What is constant in PL SQL Variable
SET SERVEROUT ON;
DECLARE
    number1 constant NUMBER(10,2) :=0;  ---WE CAN USE CONSTANT WHOSE VALUE CANNOT BE CHANGED AFTER IT IS ASSISINED
    number2 NUMBER(10,2) := 0;
    result  NUMBER(10,2);
BEGIN
    NUMBER1 :=100;  --- WE CAN DECLARE BEGAIN VALUE IS OVER RIDEING RETRIVE THE BEGIN VALUES U DONT HAVE DECLARE VALUES;
    NUMBER2 :=150;
    result := number1 + number2;
    DBMS_OUTPUT.PUT_LINE('The addition of ' || number1 || ' and ' || number2 || ' is: ' || result);
END;
/

---- What is NOT NULL in PL SQL Variable

SET SERVEROUTPUT ON;

DECLARE
    number1 constant NUMBER(10,2) :=0;  ---WE CAN USE CONSTANT WHOSE VALUE CANNOT BE CHANGED AFTER IT IS ASSISINED
    number2 NUMBER(10,2) := 0;
    result  NUMBER(10,2);
BEGIN
    --NUMBER1 :=100;  --- WE CAN DECLARE BEGAIN VALUE IS OVER RIDEING RETRIVE THE BEGIN VALUES U DONT HAVE DECLARE VALUES;
    NUMBER2 :=NULL;
    result := number1 + number2;
    DBMS_OUTPUT.PUT_LINE('The addition of ' || number1 || ' and ' || number2 || ' is: ' || result);
END;
/
=======================================

DECLARE
    number1 constant NUMBER(10,2) :=0;  ---WE CAN USE CONSTANT WHOSE VALUE CANNOT BE CHANGED AFTER IT IS ASSISINED
    number2 NUMBER(10,2) NOT NULL := 0;  --expression is of wrong type
    result  NUMBER(10,2);
BEGIN
    --NUMBER1 :=100;  --- WE CAN DECLARE BEGAIN VALUE IS OVER RIDEING RETRIVE THE BEGIN VALUES U DONT HAVE DECLARE VALUES;
    NUMBER2 :=NULL;
    result := number1 + number2;
    DBMS_OUTPUT.PUT_LINE('The addition of ' || number1 || ' and ' || number2 || ' is: ' || result);
END;
/

============================================
---SELECT STATEMENT IN PL SQL BLOCK

in pl sql cannot directley run select command  === WE can use select returns the single value;

SET SERVEROUTPUT ON;
DECLARE
  V_NAME    VARCHAR2(100);
  V_SALARY  VARCHAR2(100);
BEGIN
  SELECT EMP_NAME, SALARY
  INTO V_NAME, V_SALARY
  FROM Venkat_Employees
  WHERE EMP_ID = 104;

  DBMS_OUTPUT.PUT_LINE('The employee name is ' || V_NAME || ' AND Salary is ' || V_SALARY);
END;
/


======================================================

 ---DML OPERATION IN PL SQL BLOCK;
 
SET SERVEROUTPUT ON;

BEGIN
INSERT INTO Venkat_Employees1 (EMP_ID,EMP_NAME,GENDER,HIRE_DATE,DEPT_ID,MANAGER_ID,SALARY)
VALUES (106 ,'Indu' , 'F' ,'18-DEC-23',50,102,75000);
COMMIT;
END;
/

SELECT * FROM Venkat_Employees1;

-- ONE table to trnsfer to data another table

BEGIN 
INSERT INTO Venkat_Employees1 
SELECT EMP_ID, EMP_NAME,GENDER,HIRE_DATE,DEPT_ID,MANAGER_ID,SALARY
FROM Venkat_Employees
WHERE EMP_ID NOT IN (106);
COMMIT;
END;
/SET SERVEROUTPUT ON;

BEGIN
INSERT INTO Venkat_Employees1 (EMP_ID,EMP_NAME,GENDER,HIRE_DATE,DEPT_ID,MANAGER_ID,SALARY)
VALUES (106 ,'Indu' , 'F' ,'18-DEC-23',50,102,75000);
COMMIT;
END;
/

SELECT * FROM Venkat_Employees1;

== dml inserted values

SET SERVEROUTPUT ON;

DECLARE
EMP_ID  NUMBER;
EMP_NAME VARCHAR2(100);
GENDER VARCHAR2(100);
HIRE_DATE DATE;
DEPT_ID NUMBER;
MANAGER_ID NUMBER;
SALARY NUMBER;
BEGIN
INSERT INTO Venkat_Employees1 VALUES (107 ,'Vani' , 'F' ,'19-DEC-23',60,105,85000);
COMMIT;
Dbms_output.put_line('Values inserted');
END;
/


== dml UPDATE

BEGIN
UPDATE Venkat_Employees1 SET EMP_NAME = 'Jyothi' 
WHERE EMP_ID = 102;
Dbms_output.put_line(' values updated');
END;
/

== DML DELETE

BEGIN
DELETE FROM Venkat_Employees1 
WHERE EMP_ID = 103
Dbms_OUTPUT.PUT_LINE ('Values deleted');
END;
/

===========================================================================

--% Type &  % Row type PLSQL Block    




create  table Venkat_customer 
(cust_id number(8),
cust_name varchar2(40),
dob date,
mobile_no number(10),
city varchar2(40),
);

insert into venkat_customer values (1000 , 'venkat' , to_date('12/09/1991' , 'dd/mm/yyyy'),9908700652,'vizag');
insert into venkat_customer values (1001 , 'srinu' , to_date('06/05/1992' , 'dd/mm/yyyy'),9908700567,'hyderabad');
insert into venkat_customer values (1003 , 'koti' , to_date('10/06/1993' , 'dd/mm/yyyy'),9908700789,'kakinada');
insert into venkat_customer values (1004 , 'sri ram' , to_date('18/05/1992' , 'dd/mm/yyyy'),8508700652,'vijyawada');


-- i want use where condation in pl sql block
SET SERVEROUTPUT ON;

declare
V_MOB_NO NUMBER(10);
begin
 SELECT MOBILE_NO INTO V_MOB_NO 
 FROM venkat_customer 
 where CUST_ID = 1003;
 
 dbms_output.put_line (' mobile no is ' ||V_MOB_NO );
end;
/

--i want change the data type i want add column in mobile no +91- added modify 

alter table venkat_customer modify MOBILE_NO VARCHAR2(40);
--SQL Error: ORA-01439: column to be modified must be empty to change datatype
--01439. 00000 -  "column to be modified must be empty to change datatype"

--That time we can rename to another table move the data we can use the rename

RENAME  venkat_customer to Venkat_customer_bkp;

select * from venkat_customer_bkp;

select  * from venkat_customer;
rollback;

truncate table venkat_customer;
ROLLBACK;

insert into  venkat_customer (select CUST_ID,CUST_NAME,DOB,'+91-'||MOBILE_NO , CITY FROM venkat_customer_bkp);

====== %percentage type ,%percentage rowtype

-- Difference Between %TYPE and %ROWTYPE
🔹 1. %TYPE

--%TYPE is used to declare a variable with the same data type as a single column in a table.

--It copies only the data type of that specific column.

--It is useful when you want your variable’s data type to always match the column type.


DECLARE
  v_salary Venkat_employees.salary%TYPE;
BEGIN
  SELECT salary INTO v_salary FROM Venkat_employees WHERE emp_id = 101;
  DBMS_OUTPUT.PUT_LINE('Salary = ' || v_salary);
END;
/


🔹 2. %ROWTYPE

--%ROWTYPE is used to declare a record variable that can store an entire row from a table.

--It contains one field for every column in the table.

--Very useful when you fetch multiple columns at once.
Declare
v_cus

declare
  vcust Venkat_customers%ROWTYPE;
 begin
  select * into vcust from venkat_customers where cust_id =106;
  dbms_output.put_line ('Custmer name : ' || vcust.Customer_name);
  dbms_output.put_line ('Mobile number : ' || vcust.Mobile_no);
  dbms_output.put_line ('City : ' || vcust.City);
  dbms_output.put_line ('Customer Id : ' || vcust.Cust_Id);
  
end;
/ 

 
 ---
--Conditional (control) statements inPLSQL block    1) IF Statment
                                                    2) Case Statment


-- 1. IF – THEN

set serveroutput on
DECLARE
    v_salary NUMBER := 5000;
BEGIN
    IF v_salary < 10000 THEN
        DBMS_OUTPUT.put_line('Salary is below average.');
    END IF;
END;
/

--2. IF – THEN – ELSE
--Used when you want to execute one block if the condition is true, and another block if it’s false.

set serveroutput on;
DECLARE
    v_marks NUMBER := 65;
BEGIN
    IF v_marks >= 40 THEN
        DBMS_OUTPUT.put_line('Pass');
    ELSE
        DBMS_OUTPUT.put_line('Fail');
    END IF;
END;
/


-- 3. IF – THEN – ELSIF – ELSE
--Used when you have multiple conditions.

set serveroutput on
DECLARE
    v_marks NUMBER := 95;
BEGIN
    IF v_marks >= 90 THEN
        DBMS_OUTPUT.put_line('Grade: A');
    ELSIF v_marks >= 75 THEN
        DBMS_OUTPUT.put_line('Grade: B');
    ELSIF v_marks >= 60 THEN
        DBMS_OUTPUT.put_line('Grade: C');
    ELSE
        DBMS_OUTPUT.put_line('Grade: F');
    END IF;
END;
/


-- 4. CASE Statement
--Used when you have many conditions — cleaner than long IF chains.


set serveroutput on;
declare
vsalary number(10);
vlocal number(10):=&vemp_id;
begin
select salary into vsalary from venkat_employees where emp_id=vlocal;
case
when vsalary>40000 then
dbms_output.put_line('fair salary')
when vslary >45000 and vsalary <55000 then
dbms_output.line('average salary');
else
dbms_output.put_line(vsalary ||'low salary');
end case;
end;
/


set serveroutput on;
DECLARE
    v_dept VARCHAR2(20) := 'HR';
BEGIN
    CASE v_dept
        WHEN 'HR' THEN DBMS_OUTPUT.put_line('Human Resources Department');
        WHEN 'IT' THEN DBMS_OUTPUT.put_line('Information Technology Department');
        ELSE DBMS_OUTPUT.put_line('Other Department');
    END CASE;
END;
/



SELECT emp_id, emp_name, gender, hire_date, dept_id, manager_id,   ==== doubt doesnot excute
           salary, country, mobile_no,
           CASE
             WHEN country = 'India'    THEN '+91-' || mobile_no
             WHEN country = 'Singpoor' THEN '65-'  || mobile_no
             WHEN country = 'Usa'      THEN '01-'  || mobile_no
             ELSE mobile_no
           END AS new_phone_no
    FROM venkat_employees;
	
	
	=========================================================================== LOOPING STATMENTS===================================================
	
--PL SQL LOOPING THREEE TYPES OF loops
--1) SIMPLE LOOP  (LOOP ...END LOOP  )
--2) WHILE LOOP   ( WHILE (CONDITION) LOOP ....END LOOP;)
--3)FOR LOOP      ( FOR....LOOP...END LOOP;)

SET SERVEROUTPUT ON;

DECLARE
  C NUMBER := 0;
BEGIN
  LOOP
    DBMS_OUTPUT.PUT_LINE('WELCOME TO PL SQL ' || C);
    C := C + 1;

    EXIT WHEN C > 5;   -- Stop when C becomes 5
  END LOOP;
END;
/


-- THE PRINT OF NUMBERS 0 TO 10

SET SERVEROUTPUT ON;

DECLARE
  C NUMBER := 0;
BEGIN
  LOOP
    C := C + 2;
    DBMS_OUTPUT.PUT_LINE(C);

    EXIT WHEN C >= 10;   -- stop when C is 10 or more
  END LOOP;
END;
/


-- SHOW THE PAGES 
SET SERVEROUTPUT ON;

DECLARE
  C NUMBER := 1;
BEGIN
  LOOP
    DBMS_OUTPUT.PUT_LINE('PAGE ' || C || ' OF 50');
    
    C := C + 1;

    EXIT WHEN C > 50;   -- Show 50 pages
  END LOOP;
END;
/



=============================================WHILE LOOP======================================================

while (condiation)
LOOP
executable STATMENTS;
end loop;



SET SERVEROUTPUT ON;

DECLARE
  c NUMBER := 0;   -- start from 0
BEGIN
  WHILE (c <= 5)   -- end at 5
  LOOP
    DBMS_OUTPUT.PUT_LINE('Hello ' || c);
    c := c + 1;   -- increment c
  END LOOP;
END;
/


=======================================for loop===========================================================
--A FOR loop is used when you know exactly how many times you want the loop to run.

--👉 The counter (like i, j, k) increases automatically.
--👉 You don’t need to initialize or increment it manually.

FOR variable in [reverse] low value .. high value
loop
executable statements;
end loop;

set serveroutput on
Declare
c1 number;
begin
for c1 in 1..5
loop
dbms_output.put_line('Venkay');
end loop;
end;
/


--
set serveroutput on
Declare
c1 number;
begin
for c1 in 1..5
loop
dbms_output.put_line('Venkay' || c1);
end loop;
end;
/

---set serveroutput on;
DECLARE
  i NUMBER;        -- you can declare variables
  total NUMBER := 0;
BEGIN
  FOR i IN 1..5 
  LOOP
    total := total + i;
    DBMS_OUTPUT.PUT_LINE('Value: ' || i);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('Total = ' || total);
END;
/

============================================cur