
USE CSE_A4_160;

CREATE TABLE STUDENT_INFO(
	RNO INT,
	NAME VARCHAR(25),
	BRANCH VARCHAR(20),
	SPI DECIMAL(4,2),
	BKLOG INT
);

INSERT INTO STUDENT_INFO VALUES
(101,'RAJU','CE',8.80,0),
(102,'AMIT','CE',2.20,3),
(103,'SANJAY','ME',1.50,6),
(104,'NEHA','EC',7.65,1),
(105,'MEERA','EE',5.52,2),
(106,'MAHESH','EC',4.5,3);

SELECT * FROM STUDENT_INFO;


--Part � A: 


--1. Create a view Personal with all columns. 
	CREATE VIEW PERSONAL 
	AS
	SELECT * FROM STUDENT_INFO;

	SELECT * FROM PERSONAL;
--2. Create a view Student_Details having columns Name, Branch & SPI.
	CREATE VIEW STUDENT_DETAILS 
	AS
	SELECT NAME,BRANCH,SPI 
	FROM STUDENT_INFO;

	SELECT * FROM STUDENT_DETAILS;
--3. Create a view AcademicData having columns RNo, Name, Branch. 
	CREATE VIEW ACADEMIC_DATA 
	AS
	SELECT RNO,NAME,BRANCH 
	FROM STUDENT_INFO;

	SELECT * FROM ACADEMIC_DATA;
--4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
	CREATE VIEW STUDENT_BKLOG 
	AS
	SELECT * 
	FROM STUDENT_INFO
	WHERE BKLOG>2;

	SELECT * FROM STUDENT_BKLOG;
--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four 
--letters. 
	CREATE VIEW STUDENT_PATTERN 
	AS
	SELECT RNO,NAME,BRANCH 
	FROM STUDENT_INFO
	WHERE NAME LIKE '____';

	SELECT * FROM STUDENT_PATTERN;
--6. Insert a new record to AcademicData view. (107, Meet, ME) 
	INSERT INTO ACADEMIC_DATA VALUES
	(107,'MEET','ME');

	SELECT * FROM ACADEMIC_DATA;
--7. Update the branch of Amit from CE to ME in Student_Details view.
	UPDATE STUDENT_DETAILS SET BRANCH='ME' WHERE NAME='AMIT';

	SELECT * FROM STUDENT_DETAILS;
--8. Delete a student whose roll number is 104 from AcademicData view. 
	DELETE FROM ACADEMIC_DATA WHERE RNO=104;

	SELECT * FROM ACADEMIC_DATA;



--Part � B: 


--1. Create a view that displays information of all students whose SPI is above 8.5 
	CREATE VIEW STUDENT_RESULT 
	AS
	SELECT * 
	FROM STUDENT_INFO
	WHERE SPI>8.5;

	SELECT * FROM STUDENT_RESULT;
--2. Create a view that displays 0 backlog students. 
	CREATE VIEW STUDENT_NO_BKLOG 
	AS
	SELECT * 
	FROM STUDENT_INFO
	WHERE BKLOG=0;

	SELECT * FROM STUDENT_NO_BKLOG;

--3. Create a view Computerview that displays CE branch data only. 
	CREATE VIEW COMPUTER_VIEW 
	AS
	SELECT * 
	FROM STUDENT_INFO
	WHERE BRANCH='CE';

	SELECT * FROM COMPUTER_VIEW;

--Part � C: 


--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC. 
	CREATE VIEW RESULT_EC 
	AS 
	SELECT NAME,SPI
	FROM STUDENT_INFO 
	WHERE SPI<5 AND BRANCH='EC';

	SELECT * FROM RESULT_EC;
--2. Update the result of student MAHESH to 4.90 in Result_EC view. 
	UPDATE RESULT_EC SET SPI=4.9 WHERE NAME='MAHESH';

	SELECT * FROM RESULT_EC;
--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with �M� and having 
--bklogs more than 5. 
	CREATE VIEW STU_BKLOG
	AS
	SELECT RNO,NAME,BKLOG 
	FROM STUDENT_INFO 
	WHERE NAME LIKE 'M%' AND BKLOG>5;

	SELECT * FROM STU_BKLOG;
--4. Drop Computerview form the database. 
	DROP VIEW COMPUTER_VIEW;

	SELECT * FROM COMPUTER_VIEW;

-----------------EXTRA QUERIES------------------

SELECT * FROM EMP;

--1.Calculate the average salary of employees hired after 1st January, 1991. Label the column as Average_Salary_After_1991.
    SELECT AVG(SALARY) AS AVERAGE_SALARY_AFTER_1991 
	FROM EMP
	WHERE JOINING_DATE>'1991-01-01';
--2.Find the total number of employees in each department.
	SELECT DEPARTMENT,COUNT(EID) AS NUMBER_OF_EMPLOYEES
	FROM EMP 
	GROUP BY DEPARTMENT;
--3.Display the total salary of employees in each city in descending order.
	SELECT CITY,SUM(SALARY) AS TOTAL_SALARY 
	FROM EMP
	GROUP BY CITY
	ORDER BY CITY DESC;
--4.Find the total number of employees in each city.
	SELECT CITY,COUNT(EID) AS NUMBER_OF_EMPLOYEES
	FROM EMP
	GROUP BY CITY;
--5.Find the highest salary among all employees.
	SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMP;
--6.Retrieve the maximum salary from the IT department.
	SELECT DEPARTMENT,MAX(SALARY) 
	FROM EMP
	GROUP BY DEPARTMENT
	HAVING DEPARTMENT='IT';
--7.Count the total number of distinct cities where employees reside.
	SELECT COUNT(DISTINCT CITY) AS CITY FROM EMP;

--8.Calculate the total salary of each department.
	SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY
	FROM EMP
	GROUP BY DEPARTMENT;
--9.Find the minimum salary of an employee residing in Ahmedabad.
	SELECT MIN(SALARY) AS MIN_SALARY 
	FROM EMP
	WHERE CITY='AHMEDABAD';
--10.List the departments with total salaries exceeding 50000 and located in Rajkot.
	SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY
	FROM EMP
	WHERE CITY='RAJKOT'
	GROUP BY DEPARTMENT
	HAVING SUM(SALARY)>50000;
--11.List the departments with total salaries exceeding 35000 and sort the list by total salary.
    SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY
	FROM EMP
	GROUP BY DEPARTMENT
	HAVING SUM(SALARY)>35000
	ORDER BY SUM(SALARY);
--12.List departments with more than two employees.
	SELECT DEPARTMENT
	FROM EMP
	GROUP BY DEPARTMENT 
	HAVING COUNT(EID)>2;
--13.Show departments where the average salary is above 25000.
    SELECT DEPARTMENT
	FROM EMP
	GROUP BY DEPARTMENT 
	HAVING AVG(SALARY)>25000;
--14.Retrieve cities with employees hired before 1st January 1991.
	SELECT CITY
	FROM EMP
	WHERE JOINING_DATE<'1991-01-01';
--15.Find departments with a total salary between 50000 and 100000.
	SELECT DEPARTMENT 
	FROM EMP
	GROUP BY DEPARTMENT
	HAVING SUM(SALARY)>50000 AND SUM(SALARY)<100000;