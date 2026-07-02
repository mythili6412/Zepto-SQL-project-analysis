**Zepto Order Analytics (SQL)**

A SQL-only data analysis project exploring customer orders, revenue trends, and product performance from a Zepto (quick-commerce) order dataset using MySQL.

 **Project Overview**

This project focuses purely on SQL querying skills — analyzing a 2,000-row Zepto order transaction dataset to extract insights on customer spending, revenue trends, product pricing, and order cancellations. The goal was to practice writing analytical SQL queries (aggregations, date-based grouping, CASE-based segmentation, and ranking) on real-world e-commerce order data.

**Tools & Tech Stack**

StageToolDatabase & QueryingMySQL, SQL

**** Dataset****

The dataset contains 2,000 rows and 9 columns describing Zepto customer orders:

ColumnDescriptionorder_idUnique order identifiercustomer_idUnique customer identifiercustomer_nameCustomer's nameproduct_nameName of the ordered productcategoryProduct category (e.g., Snacks, Dairy, Beverages)quantityQuantity orderedunit_pricePrice per unitorder_dateDate the order was placed (2023–2024)statusOrder status (Pending, Processing, Delivered, Cancelled, Returned)

**Business Questions Explored**


What are the distinct product categories?
How many times has each product been ordered?
What is the price of each product?
How can unit prices be displayed in Rupees (₹)?
Which products offer the best value (lowest unit price relative to quantity)?
Which products have the highest unit price?
What is the estimated revenue for each category?
Which orders have a unit price greater than ₹500?
How can orders be segmented into Low, Medium, and Bulk quantity tiers?
What is the total quantity/volume ordered per category?
Who are the top 5 customers by total spend?
What is the month-wise total revenue trend?
Which products are most frequently cancelled?
What is the average order value per category?
How does yearly revenue compare between 2023 and 2024?


**Key SQL Techniques Used**

Aggregations (SUM, COUNT, AVG) with GROUP BY
Date functions (YEAR(), MONTH(), DATE_FORMAT()) for time-based trend analysis
CASE WHEN logic for quantity segmentation (Low/Medium/Bulk)
Filtering with WHERE for price thresholds and order status
ORDER BY + LIMIT for top-customer and high-value rankings
Revenue calculation using quantity * unit_price


**Key Insights**

Estimated Revenue by Category — Staples generated the highest revenue (₹6,91,487.26), followed by Juices (₹5,63,512.82) and Biscuits (₹5,58,008.64), while Oils generated the least (₹3,24,552.00).

categorytotal_revenue (₹)Staples6,91,487.26Juices5,63,512.82Biscuits5,58,008.64Snacks5,48,115.21Dairy5,22,479.57

Top 5 Customers by Total Spend — Bhavna Yadav was the highest-spending customer at ₹2,09,233.05.

customer_nametotal_spent (₹)Bhavna Yadav2,09,233.05Pranav Jain1,83,751.68Kiran Nair1,83,178.62Arjun Patel1,76,221.35Mohit Bhatt1,73,324.93

Most Cancelled Products — Tata Salt 1kg had the highest number of cancellations (13), followed closely by Colgate Toothpaste 200g and Tropicana Guava 1L (11 each).

product_namecancel_countTata Salt 1kg13Colgate Toothpaste 200g11Tropicana Guava 1L11Paper Boat Aam Panna 250ml10Lay's Classic Chips 26g9

Yearly Revenue Comparison (2023 vs 2024) — Revenue grew from ₹27,35,855.68 in 2023 to ₹28,21,586.22 in 2024, a 3.13% year-over-year increase.

yeartotal_revenue (₹)202327,35,855.68202428,21,586.22

**Repositary Contents**

├── README.md           # Project overview (this file)
├── zepto SQL project.sql   # All SQL queries used for analysis
└── zepto_orders.csv    # Raw dataset (2,000 rows, 9 columns)

**Key SQL Query**

sql-- Top 5 customers by total spend
SELECT customer_id, customer_name,
       ROUND(SUM(quantity * unit_price), 2) AS total_spent
FROM zepto_orders
GROUP BY customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 5;

**What i learned**


Writing pure SQL analytical queries without relying on a front-end BI tool
Using date functions to analyze monthly and yearly revenue trends
Using CASE WHEN for custom business segmentation logic
Identifying operational issues (e.g., most-cancelled products) directly through SQL
