# WRITE your MySQL query STATEMENT below
DELETE P
FROM Person P
LEFT JOIN
  (SELECT MIN(Id) AS `Id`,
          Email
   FROM Person
   GROUP BY Email) M ON M.Email = P.Email
WHERE P.Id > M.Id