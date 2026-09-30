SELECT
    Category,
    ROUND(SUM([Sales]), 2) AS total_sales,
    COUNT(DISTINCT [Order ID]) AS total_orders,
    ROUND(AVG([Sales]), 2) AS average_sales_per_order_line
FROM dbo.superstore_sales
GROUP BY [Category]
ORDER BY total_sales DESC;