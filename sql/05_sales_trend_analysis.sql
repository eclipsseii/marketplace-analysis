
-- Sales trend analysis

-- Orders by month

SELECT
    DATE_TRUNC('month', order_purchase_timestamp::timestamp) AS order_month,
    COUNT(*) AS orders_count
FROM olist_orders_dataset
GROUP BY order_month
ORDER BY order_month;


-- Revenue by month

SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp::timestamp) AS order_month,
    ROUND(SUM(op.payment_value)::numeric, 2) AS revenue
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset op
    ON o.order_id = op.order_id
GROUP BY order_month
ORDER BY order_month;
