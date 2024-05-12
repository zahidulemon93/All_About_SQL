--Recursive Common Table Expression (CTE)
-- a list of dates between two specified dates

DECLARE @StartDate DATE = '2024-01-01';
DECLARE @EndDate DATE = '2024-01-10';

WITH DateRange AS (
    SELECT @StartDate AS Date
    UNION ALL
    SELECT DATEADD(DAY, 1, Date)
    FROM DateRange
    WHERE Date < @EndDate
)
SELECT Date
FROM DateRange
OPTION (MAXRECURSION 1000); -- Set the maximum recursion level as needed
