SELECT
    [Segment],
    COUNT(DISTINCT [Customer ID]) AS total_customers,
    COUNT(DISTINCT [Order ID]) AS total_orders,
    ROUND(SUM([Sales]), 2) AS total_sales,
    ROUND(SUM([Sales]) / COUNT(DISTINCT [Customer ID]), 2) AS sales_per_customer,
    ROUND(SUM([Sales]) / COUNT(DISTINCT [Order ID]), 2) AS average_order_value
FROM dbo.superstore_sales
GROUP BY [Segment]
ORDER BY total_sales DESC;