-- 06_delivery_analysis.sql
-- Delivery and order status analysis

-- 1. Order status distribution

SELECT
    order_status,
    COUNT(*) AS orders_count
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY orders_count DESC;


-- 2. Delivery rate, canceled rate and unavailable rate

SELECT
    ROUND(
        COUNT(CASE WHEN order_status = 'delivered' THEN 1 END)::numeric
        / COUNT(*) * 100,
        2
    ) AS delivered_rate,

    ROUND(
        COUNT(CASE WHEN order_status = 'canceled' THEN 1 END)::numeric
        / COUNT(*) * 100,
        2
    ) AS canceled_rate,

    ROUND(
        COUNT(CASE WHEN order_status = 'unavailable' THEN 1 END)::numeric
        / COUNT(*) * 100,
        2
    ) AS unavailable_rate
FROM olist_orders_dataset;


-- 3. Average delivery time in days

SELECT
    ROUND(
        AVG(
            EXTRACT(
                DAY FROM 
                order_delivered_customer_date::timestamp 
                - order_purchase_timestamp::timestamp
            )
        )::numeric,
        2
    ) AS avg_delivery_days
FROM olist_orders_dataset
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL;
