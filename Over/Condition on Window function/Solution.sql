--Soluation 1

;WITH cte AS
(
  SELECT t.*, MAX(AVG) OVER (PARTITION BY city) AS average
  FROM #avgTemperatures t
)
SELECT *
FROM cte
where average > 19
ORDER BY id

--Soluation 2

select t.*
from (select t.*, max(avg) over (partition by city) as maxavg
      from #AvgTemperatures t
     ) t
where maxavg > 19;

--Soluation 3

select t.*
from #AvgTemperatures t
where t.city in (select t2.city from #AvgTemperatures t2 where t2.avg > 19);
