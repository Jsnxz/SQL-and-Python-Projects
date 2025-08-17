-- employee_management.sql

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES
(1, 'Anil', 'HR', 40000),
(2, 'Ravi', 'IT', 55000),
(3, 'Sneha', 'Finance', 60000);

-- 1. Show all IT employees
SELECT * FROM Employees WHERE Department = 'IT';

-- 2. Find average salary department-wise
SELECT Department, AVG(Salary) as AvgSalary FROM Employees GROUP BY Department;
