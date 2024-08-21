SELECT DATENAME(MONTH,GETDATE()),DAY(GETDATE()),YEAR(GETDATE());
SELECT CONVERT(VARCHAR,GETDATE(),106);
SELECT CONVERT(VARCHAR,GETDATE(),7);
SELECT CONVERT(VARCHAR,GETDATE(),100);

------------------------------Math functions -------------------------------

--Part – A: 


--1. Display the result of 5 multiply by 30. 
	SELECT 5*30 AS ANSWER;
--2. Find out the absolute value of -25, 25, -50 and 50. 
	SELECT ABS(-25),ABS(25),ABS(-50),ABS(50);
--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
	SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2);
--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
	SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2);
--5. Find out remainder of 5 divided 2 and 5 divided by 3. 
	SELECT 5%2,5%3;
--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power. 
	SELECT POWER(3,2),POWER(4,3);
--7. Find out the square root of 25, 30 and 50.
	SELECT SQRT(25),SQRT(30),SQRT(50);
--8. Find out the square of 5, 15, and 25. 
	SELECT SQUARE(5),SQUARE(15),SQUARE(25);
--9. Find out the value of PI. 
	SELECT PI();
--10. Find out round value of 157.732 for 2, 0 and -2 decimal points. 
	SELECT ROUND(157.732,2), ROUND(157.732,0), ROUND(157.732,-2);
--11. Find out exponential value of 2 and 3. 
	SELECT EXP(2),EXP(3);
--12. Find out logarithm having base e of 10 and 2. 
	SELECT LOG(10),LOG(2);
--13. Find out logarithm having base b having value 10 of 5 and 100. 
	SELECT LOG10(5),LOG10(100);
--14. Find sine, cosine and tangent of 3.1415. 
	SELECT SIN(3.1415),COS(3.1415),TAN(3.1415);
--15. Find sign of -25, 0 and 25. 
	SELECT SIGN(-25),SIGN(0),SIGN(25);
--16. Generate random number using function. 
	SELECT RAND();


--Part – B: 

CREATE TABLE EMP_MASTER(
	EMP_NO INT,
	EMP_NAME VARCHAR(20),
	JOINING_DATE DATETIME,
	SALARY DECIMAL(7,2),
	COMMISSION INT,
	CITY VARCHAR(20)
);

INSERT INTO EMP_MASTER VALUES
(101,'KEYUR','2002-02-01',12000,4500,'RAJKOT'),
(102,'HARDIK','2004-02-15',14000,2500,'AHMEDABAD'),
(103,'KAJAL','2006-03-14',15000,3000,'BARODA'),
(104,'BHOOMI','2005-06-23',12500,1000,'AHMEDABAD'),
(105,'HARMIT','2002-02-15',14000,2000,'RAJKOT');

SELECT * FROM EMP_MASTER;

--1. Display the result of Salary plus Commission. 
	SELECT SALARY+COMMISSION FROM EMP_MASTER;
--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2. 
	SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2);
--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2. 
	SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2);
--4. Find out remainder of 55 divided 2 and 55 divided by 3.
	SELECT 55%2,55%3;
--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power. 
	SELECT POWER(23,2),POWER(14,3);

--Part – C: 

--1. Find out the square root of 36, 49 and 81.
	SELECT SQRT(36),SQRT(49),SQRT(81);
--2. Find out the square of 3, 9, and 12. 
	SELECT SQUARE(3),SQUARE(9),SQUARE(12);
--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
	SELECT ROUND(280.8952,2),ROUND(280.8952,0),ROUND(280.8952,-2);
--4. Find sine, cosine and tangent of 4.2014. 
	SELECT SIN(4.2014),COS(4.2014),TAN(4.2014);
--5. Find sign of -55, 0 and 95. 
	SELECT SIGN(-55),SIGN(0),SIGN(95);


-------------------------------String functions-----------------------------------

--Part – A: 

--1. Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
	SELECT LEN(NULL),LEN('   HELLO    '),LEN('');
--2. Display your name in lower & upper case. 
	SELECT LOWER('MANALI'),UPPER('manali');
--3. Display first three characters of your name. 
	SELECT SUBSTRING('MANALI',1,3);
--4. Display 3rd to 10th character of your name. 
	SELECT SUBSTRING('SHATRUNJAY PRATAP SINH',3,10);
--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
	SELECT REPLACE('abc123efg','123','XYZ'), REPLACE('abcabcabc','C','5');
--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 
	SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9');
--7. Write a query to display character based on number 97, 65,122,90,48,57. 
	SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57);
--8. Write a query to remove spaces from left of a given string ‘ hello world  ‘.
	SELECT LTRIM(' HELLO WORLD          ');
	--SELECT TRIM('S','SSSSSHELLO WORLD');
--9. Write a query to remove spaces from right of a given string ‘ hello world  ‘.
	SELECT RTRIM('          HELLO WORLD  ');
--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’. 
	SELECT LEFT('SQL Server',4),RIGHT('SQL Server',5);
--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
	SELECT CAST('1234.56' AS DECIMAL(6,2)), CONVERT(DECIMAL(6,2),'1234.56');
--12. Write a query to convert a float 10.58 to integer (Use cast and convert function). 
	SELECT CAST(10.58 AS int), CONVERT(int,10.58);
--13. Put 10 space before your name using function. 
	SELECT SPACE(10)+'MANALI';
--14. Combine two strings using + sign as well as CONCAT ().
	SELECT 'MANALI'+' AKBARI' AS USING_PLUS, CONCAT('MANALI',' AKBARI');
--15. Find reverse of “Darshan”. 
	SELECT REVERSE('DARSHAN');
--16. Repeat your name 3 times. 
	SELECT REPLICATE('MANALI ',3);



--Part – B: Perform following queries on Student table of practical no 5. 

SELECT * FROM STUDENT;

--1. Find the length of FirstName and LastName columns. 
	SELECT LEN(FIRST_NAME) AS FN, LEN(LAST_NAME) AS LN FROM STUDENT;
--2. Display FirstName and LastName columns in lower & upper case.
	SELECT UPPER(FIRST_NAME),LOWER(FIRST_NAME),UPPER(LAST_NAME),LOWER(LAST_NAME) FROM STUDENT;
--3. Display first three characters of FirstName column. 
	SELECT SUBSTRING(FIRST_NAME,1,3) FROM STUDENT;
--4. Display 3rd to 10th character of Website column. 
	SELECT SUBSTRING(WEBSITE,3,10) FROM STUDENT;
--5. Write a query to display first 4 & Last 5 characters of Website column.
	SELECT LEFT(WEBSITE,4),RIGHT(WEBSITE,5) FROM STUDENT;



--Part – C: Perform following queries on Student table of practical no 5. 

SELECT * FROM STUDENT;

--1. Put 10 space before FirstName using function. 
	SELECT SPACE(10)+FIRST_NAME FROM STUDENT;
--2. Combine FirstName and LastName columns using + sign as well as CONCAT (). 
	SELECT CONCAT(FIRST_NAME,LAST_NAME) AS CONCAT, FIRST_NAME+LAST_NAME AS USING_PLUS FROM STUDENT;
--3. Combine all columns using + sign as well as CONCAT (). 
	SELECT CONCAT(CONVERT(VARCHAR(20),STU_ID),FIRST_NAME,LAST_NAME,WEBSITE,CITY,ADDRESS) AS CONCAT, CONVERT(VARCHAR(20),STU_ID)+FIRST_NAME+LAST_NAME+WEBSITE+CITY+ADDRESS AS USING_PLUS FROM STUDENT;
--4. Find reverse of FirstName column. 
	SELECT REVERSE(FIRST_NAME) FROM STUDENT;
--5. Repeat FirstName column 3 times 
	SELECT REPLICATE(FIRST_NAME,3) FROM STUDENT;
--6. Give the Names which contains 5 characters.
	SELECT FIRST_NAME FROM STUDENT WHERE LEN(FIRST_NAME)=5;
--7. Combine the result as <FirstName> Lives in <City>. 
	SELECT FIRST_NAME+' LIVES IN '+CITY FROM STUDENT;
--8. Combine the result as Student_ID of < FirstName > is <StuID> .
	SELECT 'STU_ID'+' OF '+FIRST_NAME+' IS '+CONVERT(VARCHAR(20),STU_ID) FROM STUDENT;



	-------------------------------Date functions-----------------------------------




--Part – A: 

--1. Write a query to display the current date & time. Label the column Today_Date. 
	SELECT GETDATE();
--2. Write a query to find new date after 365 day with reference to today. 
	SELECT DATEADD(D,365,GETDATE());
--3. Display the current date in a format that appears as may 5 1994 12:00AM.
	SELECT CONVERT(VARCHAR(20),GETDATE(),100);
--4. Display the current date in a format that appears as 03 Jan 1995. 
	SELECT FORMAT(GETDATE(),'dd MMM yyyy');
--5. Display the current date in a format that appears as Jan 04, 96. 
	SELECT CONVERT(VARCHAR(20),GETDATE(),7);
--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09. 
	SELECT DATEDIFF(MONTH,'31-DEC-08','31-MAR-09');
--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10. 
		SELECT DATEDIFF(YEAR,'14-SEP-10','25-JAN-12');
--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
		SELECT DATEDIFF(HOUR,'25-JAN-12 7:00','26-JAN-12 10:30');
--9. Write a query to extract Day, Month, Year from given date 12-May-16.
	SELECT DATEPART(DAY,'12-MAY-16') AS DAY, DATEPART(MONTH,'12-MAY-16') AS MONTH, DATEPART(YEAR,'12-MAY-16') AS YEAR;
--10. Write a query that adds 5 years to current date. 
	SELECT DATEADD(YEAR,5,GETDATE());
--11. Write a query to subtract 2 months from current date.
	SELECT DATEADD(MONTH,-2,GETDATE());
--12. Extract month from current date using datename () and datepart () function. 
	SELECT DATENAME(MONTH,GETDATE()) AS DATENAME, DATEPART(MONTH,GETDATE()) AS DATEPART;
--13. Write a query to find out last date of current month.
	SELECT EOMONTH(GETDATE());
--14. Calculate your age in years and months. 
	SELECT DATEDIFF(YEAR,'14-JUN-05', GETDATE()) AS YEAR, DATEDIFF(MONTH,'14-JUN-05', GETDATE()) AS MONTH;


--Part – B:

CREATE TABLE EMP_DETAIL(
	EMP_NO INT,
	EMP_NAME VARCHAR(20),
	JOINING_DATE DATE,
	SALARY DECIMAL(8,2),
	CITY VARCHAR(25)
);

INSERT INTO EMP_DETAIL VALUES
	(101,'KEYUR','2002-01-15',12000,'RAJKOT'),
	(102,'HARDIK','2004-02-15',14000,'AHMEDABAD'),
	(103,'KAJAL','2006-03-14',15000,'BARODA'),
	(104,'BHOOMI','2005-06-23',12500,'AHMEDABAD'),
	(105,'HARMIT','2004-02-15',14000,'RAJKOT'),
	(106,'JAY','2007-03-12',12000,'SURAT');


SELECT * FROM EMP_DETAIL;

--1. Write a query to find new date after 365 day with reference to JoiningDate.
--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM. 
--3. Display the JoiningDate in a format that appears as 03 Jan 1995. 
--4. Display the JoiningDate in a format that appears as Jan 04, 96. 
--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.


--Part – C:  

--1. Write a query to extract Day, Month, Year from JoiningDate. 
--2. Write a query that adds 5 years to JoiningDate. 
--3. Write a query to subtract 2 months from JoiningDate. 
--4. Extract month from JoiningDate using datename () and datepart () function. 
--5. Calculate your age in years and months 