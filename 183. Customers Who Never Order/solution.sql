# WRITE your MySQL query STATEMENT below
SELECT Name AS `Customers`
FROM Customers C
LEFT JOIN
  (SELECT CustomerId,
          Count(*) COUNT
   FROM Orders
   GROUP BY CustomerId) J ON C.Id = J.CustomerId
WHERE J.COUNT IS NULL