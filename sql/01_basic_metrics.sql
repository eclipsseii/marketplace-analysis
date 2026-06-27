-- 01_basic_metrics.sql
-- Basic marketplace metrics for the Olist e-commerce dataset

-- 1. Total number of orders
SELECT 
    COUNT(*) AS total_orders
FROM olist_orders_dataset;

-- 2. Total number of unique customers
SELECT 
    COUNT(DISTINCT customer_unique_id) AS unique_customers
FROM customers;

-- 3. Total revenue
SELECT 
    ROUND(SUM(payment_value)::numeric, 2) AS total_revenue
FROM olist_order_payments_dataset;

-- 4. Average order value
SELECT 
    ROUND(AVG(payment_value)::numeric, 2) AS avg_order_value
FROM olist_order_payments_dataset;

-- 5. Orders per customer
SELECT
    ROUND(
        COUNT(*)::numeric / COUNT(DISTINCT c.customer_unique_id),
        2
    ) AS orders_per_customer
FROM olist_orders_dataset o
JOIN customers c
    ON o.customer_id = c.customer_id;

-- 6. Repeat customers
SELECT
    COUNT(*) AS repeat_customers
FROM (
    SELECT
        c.customer_unique_id
    FROM olist_orders_dataset o
    JOIN customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
    HAVING COUNT(*) > 1
) t;

-- 7. Order status distribution
SELECT
    order_status,
    COUNT(*) AS orders_count
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY orders_count DESC;

-- 8. Top 10 orders by payment value
SELECT
    order_id,
    ROUND(SUM(payment_value)::numeric, 2) AS order_value
FROM olist_order_payments_dataset
GROUP BY order_id
ORDER BY order_value DESC
LIMIT 10;

-- 9. Customer distribution by number of orders
SELECT
    orders_count,
    COUNT(*) AS customers
FROM (
    SELECT
        c.customer_unique_id,
        COUNT(*) AS orders_count
    FROM olist_orders_dataset o
    JOIN customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
) t
GROUP BY orders_count
ORDER BY orders_count;
