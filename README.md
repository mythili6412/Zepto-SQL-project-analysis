# Zepto Order Analytics (SQL)

A SQL-only data analysis project exploring customer orders, revenue trends, and product performance from a Zepto (quick-commerce) order dataset using **MySQL**.

## 📌 Project Overview

This project focuses purely on SQL querying skills — analyzing a 2,000-row Zepto order transaction dataset to extract insights on customer spending, revenue trends, product pricing, and order cancellations. The goal was to practice writing analytical SQL queries (aggregations, date-based grouping, CASE-based segmentation, and ranking) on real-world e-commerce order data.

## 🛠️ Tools & Tech Stack

| Stage | Tool |
|---|---|
| Database & Querying | MySQL, SQL |

## 📂 Dataset

The dataset contains **2,000 rows and 9 columns** describing Zepto customer orders:

| Column | Description |
|---|---|
| `order_id` | Unique order identifier |
| `customer_id` | Unique customer identifier |
| `customer_name` | Customer's name |
| `product_name` | Name of the ordered product |
| `category` | Product category (e.g., Snacks, Dairy, Beverages) |
| `quantity` | Quantity ordered |
| `unit_price` | Price per unit |
| `order_date` | Date the order was placed (2023–2024) |
| `status` | Order status (Pending, Processing, Delivered, Cancelled, Returned) |

## 🔍 Business Questions Explored

- What are the distinct product categories?
- How many times has each product been ordered?
- What is the price of each product?
- How can unit prices be displayed in Rupees (₹)?
- Which products offer the best value (lowest unit price relative to quantity)?
- Which products have the highest unit price?
- What is the estimated revenue for each category?
- Which orders have a unit price greater than ₹500?
- How can orders be segmented into Low, Medium, and Bulk quantity tiers?
- What is the total quantity/volume ordered per category?
- Who are the top 5 customers by total spend?
- What is the month-wise total revenue trend?
- Which products are most frequently cancelled?
- What is the average order value per category?

 ##  Key SQL Techniques Used

- Aggregations (`SUM`, `COUNT`, `AVG`) with `GROUP BY`
- Date functions (`YEAR()`, `MONTH()`, `DATE_FORMAT()`) for time-based trend analysis
- `CASE WHEN` logic for quantity segmentation (Low/Medium/Bulk)
- Filtering with `WHERE` for price thresholds and order status
- `ORDER BY` + `LIMIT` for top-customer and high-value rankings
- Revenue calculation using `quantity * unit_price
- How does yearly revenue compare between 2023 and 2024?

##  What I Learned

- Writing pure SQL analytical queries without relying on a front-end BI tool
- Using date functions to analyze monthly and yearly revenue trends
- Using `CASE WHEN` for custom business segmentation logic
- Identifying operational issues (e.g., most-cancelled products) directly through SQL


