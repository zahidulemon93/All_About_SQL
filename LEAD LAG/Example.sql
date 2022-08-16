-- LAG

SELECT
[OrderQty],
  LAG([OrderQty]) OVER(ORDER BY[OrderQty] DESC) AS[Lag "OrderQty"
    Column]
FROM[Sales]. [SalesOrderDetail]
ORDER BY[OrderQty] DESC

--LEAD 

SELECT
[OrderQty],
  LEAD([OrderQty]) OVER(ORDER BY[OrderQty] DESC)[Lead "OrderQty"
    Column]
FROM[Sales]. [SalesOrderDetail]
ORDER BY[OrderQty] DESC


-- LEAD by 2 row 

SELECT
[OrderQty],
  LEAD([OrderQty], 2) OVER(ORDER BY[OrderQty] DESC)[Lead "OrderQty"
    Column]
FROM[Sales]. [SalesOrderDetail]
ORDER BY[OrderQty] DESC
