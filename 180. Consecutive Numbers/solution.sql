SELECT L1.Num AS `ConsecutiveNums`
FROM Logs L1
LEFT JOIN Logs L2 ON L2.Id = (L1.Id + 1)
LEFT JOIN Logs L3 ON L3.Id = (L1.Id + 2)
WHERE L1.Num = L2.Num
  AND L2.Num = L3.Num
GROUP BY L1.Num