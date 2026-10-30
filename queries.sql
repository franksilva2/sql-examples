-- All customers
SELECT * FROM customers;

-- Total spent per customer, highest first
SELECT c.name, SUM(o.total) AS total_spent
FROM customers c
JOIN orders o ON o.customer_id = c.id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Orders over $50
SELECT id, customer_id, total
FROM orders
WHERE total > 50;
