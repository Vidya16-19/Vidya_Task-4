/* ============================================================
   TASK 4: SQL FOR DATA ANALYSIS
   Data Analyst Internship - DataX Labs
   Database: JS_Employees_Data(MySQL)
   Tables : employees
   ============================================================ */
   
   CREATE DATABASE JS_Employees_Data;
   
   USE JS_Employees_Data;
   
   CREATE TABLE employees (
    Employee_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Years_Experience INT,
    Performance_Rating DECIMAL(2,1)
);

INSERT INTO employees
(Employee_ID, Name, Age, Gender, Department, Salary, Years_Experience, Performance_Rating)
VALUES
(1,'John Smith',32,'Male','Marketing',50000,5,4.5),
(25,'Jane Johnson',45,'Female','Finance',75000,15,3.7),
(37,'Michael Williams',28,'Male','Human Resources',45000,3,4.2),
(42,'Emily Brown',39,'Female','Sales',60000,8,4.8),
(63,'David Jones',50,'Male','IT',80000,20,3.5),
(81,'Sarah Miller',31,'Female','Marketing',52000,6,4.1),
(97,'Christopher Davis',27,'Male','Finance',48000,2,3.9),
(103,'Jessica Garcia',36,'Female','Human Resources',55000,10,4.4),
(118,'Matthew Rodriguez',41,'Male','Sales',65000,12,4.6),
(129,'Ashley Wilson',29,'Female','IT',58000,4,4.0);

SELECT *
FROM employees
WHERE Salary > 60000;

SELECT *
FROM employees
ORDER BY Salary DESC;

SELECT Name, Salary
FROM employees
ORDER BY Salary DESC;

SELECT Department, COUNT(*) AS Total_Employees
FROM employees
GROUP BY Department;