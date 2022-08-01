
;WITH cte AS
(
  SELECT t.*, MAX(AVG) OVER (PARTITION BY city) AS average
  FROM #avgTemperatures t
)
SELECT *
FROM cte
where average > 19
ORDER BY id
