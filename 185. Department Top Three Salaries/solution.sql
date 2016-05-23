# Write your MySQL query statement below
# Reference http://www.xaprb.com/blog/2006/12/07/how-to-select-the-firstleastmax-row-per-group-in-sql/

select Department, Employee, Salary
from ( SELECT d.Name AS `Department`,
              e.Name AS `Employee`,
             Salary
       FROM Employee e
       INNER JOIN Department d 
       ON e.DepartmentId = d.Id) AS s
where (
   select count(*) from  ( SELECT d.Name AS `Department`,
             Salary
       FROM Employee e
       INNER JOIN Department d 
       ON e.DepartmentId = d.Id GROUP BY Department, Salary) as f
   where f.Department = s.Department and f.Salary >= s.Salary
) <= 3
ORDER BY Salary DESC;