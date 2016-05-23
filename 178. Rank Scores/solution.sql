SELECT S1.Score AS Score,
       S2.Count + 1 AS Rank
FROM Scores AS S1
LEFT JOIN
  (SELECT T1.Score,
          Count(T2.Score) AS COUNT
   FROM
     (SELECT Score
      FROM Scores
      GROUP BY Score) T1
   LEFT JOIN
     (SELECT Score
      FROM Scores
      GROUP BY Score) T2 ON T1.Score < T2.Score
   GROUP BY T1.Score) S2 ON S1.Score = S2.Score
ORDER BY S1.Score DESC;