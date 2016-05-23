CREATE TABLE Employee
    (`Id` int, `Name` varchar(5), `Salary` int, `DepartmentId` int)
;
    
INSERT INTO Employee
    (`Id`, `Name`, `Salary`, `DepartmentId`)
VALUES
    (1, 'Joe', 70000, 1),
    (2, 'Henry', 80000, 2),
    (3, 'Sam', 60000, 2),
    (4, 'Max', 90000, 1),
    (5, 'Janet', 69000, 1),
    (6, 'Randy', 85000, 1)
;


CREATE TABLE Department
    (`Id` int, `Name` varchar(5))
;
    
INSERT INTO Department
    (`Id`, `Name`)
VALUES
    (1, 'IT'),
    (2, 'Sales')
;
