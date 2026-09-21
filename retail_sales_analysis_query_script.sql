-- retail sales analysis
CREATE DATABASE retail_sales_project;

USE retail_sales_project;

CREATE TABLE retail_sales_tb (
    transactions_id INT,
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

SELECT 
    *
FROM
    retail_sales_tb;
    
-- import data to existing table
SELECT 
    *
FROM
    retail_sales_tb
LIMIT 10;

-- count number of rows
SELECT 
    COUNT(*)
FROM
    retail_sales_tb;
-- 13 rows with NULL were dropped during importation of data

-- checking for any NULLS left
SELECT 
    *
FROM
    retail_sales_tb
WHERE
    transactions_id IS NULL
        OR sale_date IS NULL
        OR sale_time IS NULL
        OR customer_id IS NULL
        OR gender IS NULL
        OR age IS NULL
        OR category IS NULL
        OR quantiy IS NULL
        OR price_per_unit IS NULL
        OR cogs IS NULL
        OR total_sale IS NULL;
        
-- data exploration
-- how many sales records do we have?
SELECT 
    COUNT(*) AS total_of_sales_records
FROM
    retail_sales_tb;
    
-- how many categories do we have?
SELECT 
    COUNT(DISTINCT category) AS number_of_categories
FROM
    retail_sales_tb;
    
SELECT DISTINCT
    category
FROM
    retail_sales_tb;
    
-- DATA ANALYSIS
-- The following SQL queries were developed to answer specific business questions:

-- 1. **Write a SQL query to retrieve all columns for sales made on '2022-11-05**:
SELECT 
    *
FROM
    retail_sales_tb
WHERE
    sale_date = '2022-11-05';

-- 2. **Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022**:
SELECT 
    *
FROM
    retail_sales_tb
WHERE
    category = 'Clothing' AND quantiy >= '4'
        AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';

-- 3. **Write a SQL query to calculate the total sales (total_sale) for each category.**:
SELECT 
    category, SUM(total_sale)
FROM
    retail_sales_tb
GROUP BY category;

-- 4. **Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.**:
SELECT 
    category, ROUND(AVG(age), 2) AS avg_age
FROM
    retail_sales_tb
WHERE
    category = 'Beauty';
    
-- 5. **Write a SQL query to find all transactions where the total_sale is greater than 1000.**:
SELECT 
    category, quantiy, total_sale
FROM
    retail_sales_tb
WHERE
    total_sale > '1000'
ORDER BY total_sale DESC;

-- 6. **Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.**:
SELECT 
    COUNT(transactions_id) AS total_number_of_transactions,
    gender,
    category
FROM
    retail_sales_tb
GROUP BY gender , category
ORDER BY total_number_of_transactions DESC;

-- 7. **Write a SQL query to calculate the average sale for each month. Find out best selling month in each year**:
SELECT 
    DATE_FORMAT(sale_date, '%M') AS 'month',
    DATE_FORMAT(sale_date, '%y') AS 'year',
    ROUND(AVG(total_sale), 2) AS avg_sales,
    RANK() OVER (ORDER BY AVG(total_sale) DESC) AS sales_rank
FROM
    retail_sales_tb
GROUP BY month , year
ORDER BY avg_sales DESC;

-- 8. **Write a SQL query to find the top 5 customers based on the highest total sales **:
SELECT 
    customer_id, SUM(total_sale) AS total_sales
FROM
    retail_sales_tb
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

-- 9. **Write a SQL query to find the number of unique customers who purchased items from each category.**:
SELECT 
    category, COUNT(DISTINCT (customer_id)) AS unique_customers
FROM
    retail_sales_tb
GROUP BY category
ORDER BY unique_customers DESC;

-- 10. **Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)**:

    SELECT 
    CASE
        WHEN HOUR(sale_time) < 12 THEN 'Morning'
        WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(transactions_id) AS total_orders
    FROM
    retail_sales_tb
    GROUP BY
    shift
    ORDER BY
    total_orders DESC;
    
-- END OF PROJECT