# Write your MySQL query statement below
SELECT Name AS `Customers`
FROM Customers C
LEFT JOIN
(SELECT CustomerId,
	Count(*) Count
FROM Orders
GROUP BY CustomerId) J
ON C.Id = J.CustomerId
WHERE J.Count IS NULL