-- What is the total revenue?
SELECT
SUM(total_amount) AS total_revenue
FROM retail_sales;

-- How many transactions were recorded?
SELECT
COUNT(*) AS total_transactions
FROM retail_sales;

-- How many unique customers made purchases?
SELECT
COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;

-- What is the Average Order Value (AOV)?
SELECT
ROUND(AVG(total_amount),2) AS average_order_value
FROM retail_sales;

-- Which product category generated the highest revenue?
SELECT
product_category,
SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY product_category
ORDER BY revenue DESC;

-- Which product category has the highest number of transactions?
SELECT
product_category,
COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY product_category
ORDER BY total_transactions DESC;

-- Which product category sold the highest quantity?
SELECT
product_category,
SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY product_category
ORDER BY total_quantity DESC;

-- How does revenue compare between male and female customers?
SELECT
gender,
SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY gender;

-- What is the average spending by gender?
SELECT
gender,
ROUND(AVG(total_amount),2) AS average_spending
FROM retail_sales
GROUP BY gender;

-- Who are the top spending customers?
SELECT
customer_id,
SUM(total_amount) AS total_spending
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;

-- What are the monthly sales trends?
SELECT
DATE_FORMAT(sale_date,'%Y-%m') AS month,
SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY month
ORDER BY month;

-- What are the daily sales trends?
SELECT
sale_date,
SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY sale_date
ORDER BY sale_date;

-- Which age group has the highest number of transactions?
SELECT
CASE
WHEN age < 20 THEN 'Under 20'
WHEN age BETWEEN 20 AND 29 THEN '20-29'
WHEN age BETWEEN 30 AND 39 THEN '30-39'
WHEN age BETWEEN 40 AND 49 THEN '40-49'
ELSE '50+'
END AS age_group,
COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY age_group
ORDER BY age_group;

-- Which age group contributes the highest revenue?
SELECT
CASE
WHEN age < 20 THEN 'Under 20'
WHEN age BETWEEN 20 AND 29 THEN '20-29'
WHEN age BETWEEN 30 AND 39 THEN '30-39'
WHEN age BETWEEN 40 AND 49 THEN '40-49'
ELSE '50+'
END AS age_group,
SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY age_group
ORDER BY revenue DESC;

-- What are the highest-value transactions?
SELECT *
FROM retail_sales
ORDER BY total_amount DESC
LIMIT 10;

-- Which category has the highest average unit price?
SELECT
product_category,
ROUND(AVG(price_per_unit),2) AS average_price
FROM retail_sales
GROUP BY product_category
ORDER BY average_price DESC;

-- What is the average quantity purchased per transaction?
SELECT
ROUND(AVG(quantity),2) AS average_quantity
FROM retail_sales;

-- Which day recorded the highest sales revenue?
SELECT
sale_date,
SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY sale_date
ORDER BY revenue DESC
LIMIT 10;

