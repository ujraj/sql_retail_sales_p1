CREATE DATABASE sql_project_p1;

USE sql_project_p1;

DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales (
	transactions_id INT PRIMARY KEY,
	sale_date DATE,
	sale_time TIME,
	customer_id INT,
	gender VARCHAR(15),
	age INT,
	category VARCHAR(15),
	quantiy INT,
	price_per_unit FLOAT,
	cogs FLOAT,
	total_sale FLOAT
);


SELECT * FROM retail_sales;


SELECT COUNT(*) FROM retail_sales;

SELECT * FROM retail_sales
WHERE transactions_id IS NULL;

SELECT * FROM retail_sales
WHERE sale_date IS NULL;

SELECT * FROM retail_sales
WHERE
transactions_id IS NULL
OR
sale_date IS NULL
OR
sale_time IS NULL
OR
customer_id IS NULL
OR 
gender IS NULL
OR 
age IS NULL
OR 
category IS NULL
OR 
quantiy IS NULL
OR 
price_per_unit IS NULL
OR 
cogs IS NULL
OR 
total_sale IS NULL;

# how many sales we have?

SELECT COUNT(*) AS total_sales FROM retail_sales;
SELECT COUNT(*) AS customer_id FROM retail_sales;

SELECT COUNT(customer_id) AS total_sales FROM retail_sales;

# how many unique customer we have?
SELECT COUNT(DISTINCT customer_id) AS total_sales FROM retail_sales;

# how many unique category we have?
SELECT COUNT(DISTINCT category) AS total_sales FROM retail_sales;

SELECT DISTINCT category FROM retail_sales;

# Data Analysis & Findings
# Write a SQL Query to retrieve all columns for sales made on '2022-11-05'?
SELECT * 
FROM retail_sales
WHERE sale_date = '2022-11-05';

# Write a SQL Query to retrieve all transactions where the category is 'clothing' and the quantity sold is more than 10 in the month of nov-2022?
SELECT * 
FROM retail_sales 
WHERE category = 'Clothing' 
AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11' 
AND 
quantiy >= 2;

# Write a SQL Query to calculate the total sales (total_sales) for each category.
SELECT 
category,
SUM(total_sale)as net_sale,
COUNT(*) AS total_orders
FROM retail_sales
GROUP BY 1;

# Write a SQL query to find the average age of customers who purchased items the 'Beauty' category.
SELECT 
ROUND(AVG(age), 2) AS AVG_age
FROM retail_sales
WHERE category = 'Beauty';

#






