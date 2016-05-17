# WRITE your MySQL query STATEMENT below
SELECT Today.Id AS `Id`
FROM Weather Today
LEFT JOIN Weather Yesterday 
ON Today.Date = DATE_ADD(Yesterday.Date, INTERVAL 1 DAY)
WHERE Today.Temperature > Yesterday.Temperature