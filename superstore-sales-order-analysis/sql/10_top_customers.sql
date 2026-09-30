SELECT TOP 10
    [Customer ID],
    MAX([Customer Name]) AS customer_name,
    MAX([Segment]) AS segment,
    MAX([City]) AS city,
    MAX([State]) AS state,
    COUNT(DISTINCT [Order ID]) AS total_orders,
    ROUND(SUM([Sales]), 2) AS total_sales,
    ROUND(
        SUM([Sales]) / COUNT(DISTINCT [Order ID]),
        2
    ) AS average_order_value
FROM dbo.superstore_sales
GROUP BY [Customer ID]
ORDER BY total_sales DESC;