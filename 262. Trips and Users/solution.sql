SELECT DAY,
       ROUND((Total - Completed) / Total, 2) AS `Cancellation Rate`
FROM
  (SELECT T.Request_at AS DAY,
          COUNT(T.Id) AS Total,
          SUM(CASE WHEN T.Status = 'completed' THEN 1 ELSE 0 END) AS Completed
   FROM Trips T
   INNER JOIN Users U ON T.Client_Id = U.Users_Id
   AND U.Role = 'client'
   AND U.Banned = 'No'
   WHERE T.Request_at >= '2013-10-01'
     AND T.Request_at <= '2013-10-03'
   GROUP BY T.Request_at) V