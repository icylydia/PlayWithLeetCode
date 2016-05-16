# Write your MySQL query statement below
SELECT e.Name
FROM Employee e
LEFT JOIN Employee m
ON e.ManagerId = m.Id
WHERE e.Salary > m.Salary