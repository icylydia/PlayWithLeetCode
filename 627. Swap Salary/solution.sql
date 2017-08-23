# Write your MySQL query statement below
UPDATE
salary s
SET s.sex = 
	CASE s.sex
	WHEN 'm' THEN 'f'
	ELSE 'm'
	END;