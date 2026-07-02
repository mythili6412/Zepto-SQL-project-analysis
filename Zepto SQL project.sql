CREATE DATABASE zepto_db;
USE zepto_db;
CREATE TABLE zepto_orders (
    order_id VARCHAR(15),
    customer_id VARCHAR(10),
    customer_name VARCHAR(50),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    order_date DATE,
    status VARCHAR(20)
);

Select * from zepto_orders



SELECT DISTINCT category
FROM zepto_orders
ORDER BY category;

SELECT product_name, COUNT(*) AS total_orders
FROM zepto_orders
GROUP BY product_name
ORDER BY total_orders DESC;

SELECT DISTINCT product_name, unit_price
FROM zepto_orders
ORDER BY product_name;

SELECT DISTINCT product_name,
       CONCAT('₹', unit_price) AS unit_price
FROM zepto_orders
ORDER BY product_name;

SELECT product_name, category,
       SUM(quantity * unit_price) AS total_revenue
FROM zepto_orders
GROUP BY product_name, category
ORDER BY total_revenue DESC
LIMIT 10;


SELECT DISTINCT product_name, category, unit_price,
       CASE
           WHEN unit_price > 700 THEN 'Very High'
           WHEN unit_price > 500 THEN 'High'
           WHEN unit_price > 300 THEN 'Medium'
           WHEN unit_price > 100 THEN 'Low'
           ELSE 'Very Low'
       END AS price_range
FROM zepto_orders
ORDER BY unit_price DESC;


SELECT DISTINCT product_name, category, unit_price
FROM zepto_orders
WHERE unit_price > 500
ORDER BY unit_price DESC;

SELECT DISTINCT product_name, category, unit_price,
       CASE
           WHEN unit_price < 100 THEN 'Low'
           WHEN unit_price BETWEEN 100 AND 500 THEN 'Medium'
           WHEN unit_price > 500 THEN 'Bulk'
       END AS price_category
FROM zepto_orders
ORDER BY unit_price ASC;

SELECT customer_name,
       COUNT(*) AS total_orders,
       ROUND(SUM(quantity * unit_price), 2) AS total_spent
FROM zepto_orders
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;


 
 
SELECT YEAR(order_date) AS year,
       COUNT(*) AS total_orders,
       SUM(quantity) AS total_units_sold,
       ROUND(SUM(quantity * unit_price), 2) AS total_revenue
FROM zepto_orders
GROUP BY year
ORDER BY year ASC;

SELECT category,
       ROUND(SUM(quantity * unit_price), 2) AS total_revenue
FROM zepto_orders
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 10;	



SELECT product_name,
       COUNT(*) AS cancel_count
FROM zepto_orders
WHERE status = 'Cancelled'
GROUP BY product_name
ORDER BY cancel_count DESC
LIMIT 10;

SELECT YEAR(order_date) AS year,
       ROUND(SUM(quantity * unit_price), 2) AS total_revenue
FROM zepto_orders
GROUP BY year
ORDER BY year ASC;