/*
Data quality checks
*/

-- 1. Check for duplicate Row IDs
SELECT
    [Row ID],
    COUNT(*) AS duplicate_count
FROM dbo.superstore_sales
GROUP BY [Row ID]
HAVING COUNT(*) > 1;

-- 2. Check for missing values in important columns
SELECT
    SUM(CASE WHEN [Order ID] IS NULL OR [Order ID] = '' THEN 1 ELSE 0 END) AS missing_order_id,
    SUM(CASE WHEN [Order Date] IS NULL THEN 1 ELSE 0 END) AS missing_order_date,
    SUM(CASE WHEN [Ship Date] IS NULL THEN 1 ELSE 0 END) AS missing_ship_date,
    SUM(CASE WHEN [Customer ID] IS NULL OR [Customer ID] = '' THEN 1 ELSE 0 END) AS missing_customer_id,
    SUM(CASE WHEN [Region] IS NULL OR [Region] = '' THEN 1 ELSE 0 END) AS missing_region,
    SUM(CASE WHEN [Category] IS NULL OR [Category] = '' THEN 1 ELSE 0 END) AS missing_category,
    SUM(CASE WHEN [Sales] IS NULL THEN 1 ELSE 0 END) AS missing_sales
FROM dbo.superstore_sales;

-- 3. Check for invalid shipping durations
SELECT
    MIN([Ship Days]) AS minimum_ship_days,
    MAX([Ship Days]) AS maximum_ship_days,
    AVG(CAST([Ship Days] AS decimal(10,2))) AS average_ship_days
FROM dbo.superstore_sales;

-- 4. Date range covered by the dataset
SELECT
    MIN([Order Date]) AS first_order_date,
    MAX([Order Date]) AS last_order_date,
    MIN([Ship Date]) AS first_ship_date,
    MAX([Ship Date]) AS last_ship_date
FROM dbo.superstore_sales;