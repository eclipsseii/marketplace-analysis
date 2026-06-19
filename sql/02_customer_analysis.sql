-- 02_customer_analysis.sql
-- Customer behavior analysis

-- Number of orders per customer

SELECT
    ROUND(
        COUNT(*)::numeric /
        COUNT(DISTINCT c.customer_unique_id),
        2
    ) AS orders_per_customer
FROM olist_orders_dataset o
JOIN customers c
    ON o.customer_id = c.customer_id;

-- Repeat customers

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

-- Distribution of customers by number of orders

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
