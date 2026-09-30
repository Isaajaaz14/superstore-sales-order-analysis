/*
Shipping performance by shipping mode
*/

SELECT
    [Ship Mode],
    COUNT(DISTINCT [Order ID]) AS total_orders,
    ROUND(AVG(CAST([Ship Days] AS decimal(10,2))), 2) AS average_ship_days,
    MIN([Ship Days]) AS minimum_ship_days,
    MAX([Ship Days]) AS maximum_ship_days,
    ROUND(SUM([Sales]), 2) AS total_sales
FROM dbo.superstore_sales
GROUP BY [Ship Mode]
ORDER BY average_ship_days DESC;