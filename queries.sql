-- Total Sales by Region
SELECT region, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region;

-- Top 5 Customers
SELECT customer_id, SUM(sales_amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month, SUM(sales_amount) AS revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;
