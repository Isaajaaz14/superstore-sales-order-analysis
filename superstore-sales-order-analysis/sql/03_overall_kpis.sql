/*
Overall sales and order KPIs
*/

SELECT
    SUM([Sales]) AS total_sales,
    COUNT(DISTINCT [Order ID]) AS total_orders,
    COUNT(DISTINCT [Customer ID]) AS total_customers,
    ROUND(AVG([Sales]), 2) AS average_sales_per_row,
    ROUND(
        SUM([Sales]) / COUNT(DISTINCT [Order ID]),
        2
    ) AS average_order_value
FROM dbo.superstore_sales;