# WRITE your MySQL query STATEMENT below
SELECT P.FirstName AS `FirstName`,
       P.LastName AS `LastName`,
       A.City AS `City`,
       A.State AS `State`
FROM Person P
LEFT JOIN Address A ON P.PersonId = A.PersonId