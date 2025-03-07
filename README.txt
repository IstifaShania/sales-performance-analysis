Sales Performance Analysis with SQL and Power BI

📌 Project Overview
This project analyzes retail sales performance from 2009 to 2010 using PostgreSQL for data processing and Power BI for visualization. The dashboard provides insights into revenue trends, best-selling products, and customer spending behavior.
dataset: https://archive.ics.uci.edu/dataset/502/online+retail+ii

🔹 What Was Done?
Data Extraction & Preparation
Loaded sales data into PostgreSQL.
Cleaned and structured data for analysis.
Analysis & Querying
Performed SQL queries to analyze revenue, product sales, and customer behavior.
Visualization in Power BI
Created interactive dashboards showing key insights.

🔹 Approach & Techniques
SQL Queries for data aggregation and trend analysis.
Power BI Dashboard with clean, professional design (Apple-style).
Fiiters & Slicers for dynamic exploration.

Key SQL Queries Used:
-- Total Revenue per Year
SELECT EXTRACT(YEAR FROM date) AS year, SUM(total_sales) AS total_revenue FROM sales GROUP BY year ORDER BY year ASC;
-- Top 5 Best-Selling Products
SELECT product_id, category, SUM(quantity) AS total_quantity_sold FROM sales GROUP BY product_id, category ORDER BY total_quantity_sold DESC LIMIT 5;
-- Highest Spending Customers (Excluding Invalid IDs)
SELECT customer_id, SUM(total_sales) AS total_spent FROM sales WHERE customer_id != -1 GROUP BY customer_id ORDER BY total_spent DESC LIMIT 10;

🔹 Results & Insights
📌 Sales Trend Analysis:
Revenue peaked in March 2010, indicating a seasonal trend.
A gradual decline was observed towards April 2010.

📌 Best-Selling Products:
"BLACK AND WHITE PAISLEY FLOWER MUG" was the most sold item.
Other high-selling items include retro spot cake cases & tissue packs.

📌 Top Customers:
VIP customers consistently spent 165.00 on purchases.
The most loyal customers contributed significantly to revenue.

📌 Revenue by Country:
United Kingdom had the highest revenue.
Other regions had significantly lower sales.

🔹 Business Impact
✅ Optimized Inventory Management – Identifying top-selling products helps maintain stock levels.
✅ Targeted Marketing Strategies – Knowing VIP customers enables personalized offers.
✅ Sales Forecasting – Understanding seasonal trends aids in future planning.
✅ Geographical Expansion – Revenue distribution helps identify market opportunities.