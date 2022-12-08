    SELECT SCHEMA_NAME(t.[schema_id]) AS [table_schema]
          ,OBJECT_NAME(p.[object_id]) AS [table_name]
          ,SUM(p.[rows]) AS [row_count]
    FROM [sys].[partitions] p
    INNER JOIN [sys].[tables] t ON p.[object_id] = t.[object_id]
    WHERE p.[index_id] < 2
    GROUP BY p.[object_id]
        ,t.[schema_id]
    ORDER BY row_count ASC
