
-- Sales trend analysis

-- Orders by month

SELECT
    DATE_TRUNC('month', order_purchase_timestamp::timestamp) AS order_month,
    COUNT(*) AS orders_count
FROM olist_orders_dataset
GROUP BY order_month
ORDER BY order_month;
