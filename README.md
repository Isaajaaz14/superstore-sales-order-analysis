# Superstore Sales and Order Analysis

## Objective
This project analyses a public retail sales dataset to understand sales and
order activity across time, regions, product categories, sub-categories, and
customer segments.

## Tools
- Excel: data preparation and creation of derived fields.
- SQL Server and SSMS: data validation and exploratory analysis.
- Power BI: interactive dashboard development and visualisation.

## Data Preparation and Analysis
1. Reviewed the dataset structure and created derived fields including Order
   Year, Order Month, Ship Days, and Sales Bands.
2. Imported the prepared data into SQL Server.
3. Performed data-quality checks, including row counts, duplicate checks,
   missing-value checks, date-range checks, and shipping-day validation.
4. Used SQL to analyse sales by time period, region, category, sub-category,
   customer segment, shipping mode, customer, and product.
5. Created an interactive Power BI dashboard with KPI cards, a monthly sales
   trend, category and regional comparisons, top five sub-categories, customer
   segment analysis, and an Order Year slicer.

## Dashboard
![Superstore Sales and Order Analysis Dashboard](superstore-sales-order-analysis/images/Superstore%20Sales%20and%20Order%20Analysis%20Dashboard%202.png)

## Dashboard KPIs
- Total Sales: $2.26M
- Total Customers: 793
- Total Orders: 4,922
- Average Order Value: $458.30
- Average Ship Days: 3.96

## Key Findings
- Technology was the highest-sales product category.
- West was the highest-sales region.
- Phones and Chairs were the two highest-sales sub-categories.
- Consumer was the highest-sales customer segment.
- Sales varied across months, with stronger sales levels toward the later part
  of the dataset period.

## Limitations
- The dataset does not include cost, discount, or profit fields, so the
  analysis focuses on sales and order activity rather than profitability.
- Average Ship Days is calculated as Ship Date minus Order Date. It measures
  time from order placement to shipping, not final delivery time.
- The dataset is a public sample, so findings should not be treated as
  recommendations for a real business without further context.
