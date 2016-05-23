SELECT T.Department,
       C.Name AS Employee,
       T.Salary
FROM Employee C
INNER JOIN
  (SELECT D.Name AS Department,
          max(E.Salary) AS Salary,
          D.Id AS DepartmentId
   FROM Department D
   LEFT JOIN Employee E ON E.DepartmentId = D.Id
   GROUP BY E.DepartmentId) T ON C.Salary = T.Salary
AND C.DepartmentId = T.DepartmentId