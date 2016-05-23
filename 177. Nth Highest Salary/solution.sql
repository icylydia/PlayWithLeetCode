CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
            SELECT Salary
			FROM
				(SELECT S1.Id, S1.Salary, Count(S2.Id) AS Rank
				FROM
					(SELECT *
					FROM Employee E
					GROUP BY E.Salary) S1
				LEFT JOIN
					(SELECT *
					FROM Employee E
					GROUP BY E.Salary) S2
			ON S1.Salary <= S2.Salary
			GROUP BY S1.Id, S1.Salary) R
			WHERE Rank = N
  );
END