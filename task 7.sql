CREATE DATABASE EmployeeDB;

USE EmployeeDB;

CREATE TABLE Department(
         Dept_Id INT PRIMARY KEY,
		 Dept_Name VARCHAR(100)
);

CREATE TABLE Employees(
        Id INT PRIMARY KEY,
		Employee_Name VARCHAR(100),
		Salary DECIMAL(8,2),
		Position VARCHAR(100),
		Dept_Id INT,
		FOREIGN KEY(Dept_Id) REFERENCES Department(Dept_Id)
);

INSERT INTO Department 
            VALUES
			(101,'HR'),
			(102,'CSE'),
			(103,'IT')

INSERT INTO Employees 
             VALUES
			 (1,'Alice',30000,'Staff',101),
			 (2,'Bob',50000,'Tech',102),
			 (3,'Charlie',25000,'Clerk',103),
			 (4,'David',60000,'Manager',101),
			 (5,'Esther',70000,'CEO',102)

--Use CREATE VIEW with complex SELECT			
CREATE VIEW DepartmentSalarySummary AS
SELECT 
    d.dept_name AS Department,
    e.Position,
    COUNT(e.id) AS TotalEmployees,
    AVG(e.salary) AS AverageSalary,
    MAX(e.salary) AS HighestSalary
FROM 
    Employees e
JOIN 
    Department d ON e.dept_id = d.dept_id
WHERE 
    e.salary > 25000
GROUP BY 
    d.dept_name, e.Position
HAVING 
    COUNT(e.id) > 0;

SELECT * FROM DepartmentSalarySummary;

--Use VIEWs for Abstration
CREATE VIEW ActiveHighEarners AS
SELECT 
    Employee_Name,
    Salary,
    Position
FROM Employees
WHERE Salary > 50000;

-- Use VIEWs for Security
CREATE VIEW PublicEmployeeInfo AS
SELECT 
    Employee_Name,
    Position
FROM Employees;

GRANT SELECT ON PublicEmployeeInfo TO trainee_user;



