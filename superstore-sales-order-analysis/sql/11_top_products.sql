SELECT TOP 10
    [Product ID],
    MAX([Product Name]) AS product_name,
    MAX([Category]) AS category,
    MAX([Sub-Category]) AS sub_category,
    COUNT(DISTINCT [Order ID]) AS total_orders,
    ROUND(SUM([Sales]), 2) AS total_sales,
    ROUND(AVG([Sales]), 2) AS average_sales_per_order_line
FROM dbo.superstore_sales
GROUP BY [Product ID]
ORDER BY total_sales DESC;