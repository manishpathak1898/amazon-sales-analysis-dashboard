CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;
use ecommerce_analysis;
SELECT *
FROM amazon_mysql_ready
LIMIT 10;
DESCRIBE amazon_mysql_ready;
SELECT *
FROM amazon_mysql_ready
WHERE category IS NULL;
SELECT product_name,
       COUNT(*)
FROM amazon_mysql_ready
GROUP BY product_name
HAVING COUNT(*) > 1;
SELECT DISTINCT category
FROM amazon_mysql_ready;
DESCRIBE amazon_mysql_ready;

SHOW TABLES;
SET SQL_SAFE_UPDATES = 0;
UPDATE amazon_mysql_ready
SET actual_price =
REPLACE(actual_price,'₹','');

UPDATE amazon_mysql_ready
SET actual_price =
REPLACE(actual_price,',','');

UPDATE amazon_mysql_ready
SET discounted_price =
REPLACE(discounted_price,'₹','');

SELECT actual_price,
       discounted_price
FROM amazon_mysql_ready
LIMIT 10;

ALTER TABLE amazon_mysql_ready
MODIFY actual_price DECIMAL(10,2);

ALTER TABLE amazon_mysql_ready
MODIFY discounted_price DECIMAL(10,2);

SELECT AVG(actual_price)
FROM amazon_mysql_ready;

UPDATE amazon_mysql_ready
SET actual_price =
REPLACE(actual_price,',','');

SELECT COUNT(*) AS total_products
FROM amazon_mysql_ready;

SELECT ROUND(AVG(rating),2) AS avg_rating
FROM amazon_mysql_ready;

SELECT category,
       COUNT(*) AS total_products
FROM amazon_mysql_ready
GROUP BY category
ORDER BY total_products DESC;

SELECT product_name,
       rating
FROM amazon_mysql_ready
ORDER BY rating DESC
LIMIT 10;

SELECT product_name,
       actual_price
FROM amazon_mysql_ready
ORDER BY actual_price DESC
LIMIT 10;

SELECT category,
       AVG(discount_percentage) AS avg_discount
FROM amazon_mysql_ready
GROUP BY category;

SELECT category,
       SUM(actual_price) AS revenue
FROM amazon_mysql_ready
GROUP BY category
ORDER BY revenue DESC;

SELECT product_name,
       rating
FROM amazon_mysql_ready
WHERE rating < 3;

SELECT product_name,
       discount_percentage
FROM amazon_mysql_ready
ORDER BY discount_percentage DESC
LIMIT 10;

SELECT category,
       SUM(actual_price) AS revenue
FROM amazon_mysql_ready
GROUP BY category
ORDER BY revenue DESC;

SELECT ROUND(AVG(rating),2) AS avg_rating
FROM amazon_mysql_ready;

SELECT product_name,
       discount_percentage
FROM amazon_mysql_ready
ORDER BY discount_percentage DESC
LIMIT 10;

SELECT product_name,
       rating
FROM amazon_mysql_ready
ORDER BY rating DESC
LIMIT 10;

SELECT category,
       COUNT(*) AS total_products
FROM amazon_mysql_ready
GROUP BY category
ORDER BY total_products DESC;

SELECT category,
       SUM(actual_price) AS revenue
FROM amazon_mysql_ready
GROUP BY category;

SELECT category,
       SUM(actual_price) AS revenue
FROM amazon_mysql_ready
GROUP BY category
ORDER BY revenue DESC;

SELECT product_name,
       actual_price
FROM amazon_mysql_ready
ORDER BY actual_price DESC
LIMIT 10;

SELECT rating,
       COUNT(*) AS total_products
FROM amazon_mysql_ready
GROUP BY rating
ORDER BY rating DESC;

SELECT category,
       AVG(discount_percentage) AS avg_discount
FROM amazon_mysql_ready
GROUP BY category;

