--Find Last Day
DECLARE @LastDay   DATE  =    CAST(DATEADD(DAY, DATEDIFF(DAY, 1, '2023-10-11'), 0) AS DATE)
