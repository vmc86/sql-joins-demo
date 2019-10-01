USE [Suppliers]
/*SELECT [s].[name] AS 'Название поставщика', [c].[name] AS 'Город'
FROM [Cities] AS [c] JOIN [Suppliers] AS [s] ON ([c].[id] = [s].[city_id])*/

SELECT [c].[name] AS 'Город', [s].[name] AS 'Название поставщика 1', [s2].[name] AS 'Название поставщика 2'
FROM [Cities] AS [c]
	JOIN [Suppliers] AS [s] ON ([c].[id] = [s].[city_id])
	JOIN [Suppliers] AS [s2] ON ([s].[city_id] = [s2].[city_id])
WHERE [s].[id] > [s2].[id];