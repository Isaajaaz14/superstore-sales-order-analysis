SELECT
    [Order Year],
    [Order Month],
    MONTH([Order Date]) AS month_number,
    ROUND(SUM([Sales]), 2) AS total_sales,
    COUNT(DISTINCT [Order ID]) AS total_orders
FROM dbo.superstore_sales
GROUP BY
    [Order Year],
    [Order Month],
    MONTH([Order Date])
ORDER BY
    [Order Year],
    month_number;