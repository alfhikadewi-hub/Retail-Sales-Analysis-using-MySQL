# Retail-Sales-Analysis-using-MySQL
---

## Project Overview
A retail company wants to understand its sales performance, customer purchasing behavior, and product trends. As a Data Analyst, the goal of this project is to transform raw transactional data into actionable business insights using SQL.

---
## Tools

- MySQL
- phpMyAdmin
- Microsoft Excel (Data Preparation)
---
## Dataset
| Item | Description |
|------|-------------|
| Dataset | Retail Sales Dataset |
| Source | Kaggle |
| Rows | 1,000 |
| Columns | 9 |
| Database | MySQL |

### Dataset Structure

| Column | Data Type |
|---------|-----------|
| transaction_id | INT |
| sale_date | DATE |
| customer_id | VARCHAR(20) |
| gender | VARCHAR(10) |
| age | INT |
| product_category | VARCHAR(50) |
| quantity | INT |
| price_per_unit | DECIMAL(10,2) |
| total_amount | DECIMAL(10,2) |
---
## Data Validation
Before conducting business analysis, the following validation steps were performed:
- Check missing values
- Check duplicate transactions
- Verify data consistency
- Validate transaction totals
- Explore data distribution
---
## Business Questions
This project answers the following business questions:

1. What is the total revenue?
2. How many transactions were recorded?
3. How many unique customers made purchases?
4. What is the Average Order Value (AOV)?
5. Which product category generated the highest revenue?
6. Which product category has the highest number of transactions?
7. Which product category sold the highest quantity?
8. How does revenue compare between male and female customers?
9. What is the average spending by gender?
10. Who are the top spending customers?
11. What are the monthly sales trends?
12. What are the daily sales trends?
13. Which age group has the highest number of transactions?
14. Which age group contributes the highest revenue?
15. What are the highest-value transactions?
16. Which category has the highest average unit price?
17. What is the average quantity purchased per transaction?
18. Which day recorded the highest sales revenue?
---
## Key Business Insights
Based on the SQL analysis:

- Total Revenue reached **Rp456,000**.
- A total of **1,000 transactions** were recorded.
- **1,000 unique customers** made purchases.
- Electronics generated the highest revenue (**Rp156,905**).
- Clothing recorded the highest number of transactions (**351**) and quantity sold (**894 units**).
- Female customers generated slightly higher revenue than male customers.
- Customers aged **50 years and above** contributed the highest revenue.
- The highest monthly revenue occurred in **May 2023**.
- The highest daily revenue occurred on **23 May 2023**.
---
## Case Study Conclusion

Based on the analysis of 1,000 retail sales transactions, the company demonstrates stable sales performance across three main product categories. Although **Clothing** recorded the highest number of transactions and units sold, **Electronics** generated the highest revenue, indicating that products in this category have a higher average selling price and contribute more significantly to overall sales.

Customer demographic analysis shows that individuals aged **50 years and above** represent the most valuable customer segment, contributing the largest share of total revenue. In addition, purchasing behavior between male and female customers is relatively balanced, with female customers contributing slightly higher revenue.

Sales trend analysis reveals that **May 2023** was the strongest-performing month, while **23 May 2023** recorded the highest daily revenue. These findings suggest that the company should further investigate the factors driving sales during this period, such as promotional campaigns, seasonal demand, or inventory availability.

Overall, the analysis provides actionable insights that can support business decisions related to product strategy, customer segmentation, and sales performance monitoring. By leveraging these insights, the company can focus on high-value customer groups, optimize product offerings, and improve future sales strategies.
