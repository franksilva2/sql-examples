USE WAREHOUSE SEDemo;

-- All orders
SELECT * FROM orders;

-- Total order volume per customer, highest first
SELECT customer_id, SUM(order_volume) AS total_volume
FROM orders
GROUP BY customer_id
ORDER BY total_volume DESC;

-- Total volume per product
SELECT product_id, SUM(order_volume) AS total_volume
FROM orders
GROUP BY product_id
ORDER BY total_volume DESC;

-- Monthly order volume
SELECT DATE_TRUNC('month', order_date) AS order_month,
       SUM(order_volume)               AS total_volume
FROM orders
GROUP BY order_month
ORDER BY order_month;

-- Large orders (volume of 5 or more)
SELECT order_id, customer_id, product_id, order_volume
FROM orders
WHERE order_volume >= 5
ORDER BY order_volume DESC;
