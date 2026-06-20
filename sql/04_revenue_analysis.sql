-- 04_revenue_analysis.sql
-- Revenue analysis

-- Top categories by revenue

SELECT
    t.product_category_name_english,
    ROUND(SUM(op.payment_value)::numeric, 2) AS revenue
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
    ON oi.product_id = p.product_id
JOIN product_category_name_translation t
    ON p.product_category_name = t.product_category_name
JOIN olist_order_payments_dataset op
    ON oi.order_id = op.order_id
GROUP BY t.product_category_name_english
ORDER BY revenue DESC
LIMIT 10;


-- Revenue per item sold

SELECT
    t.product_category_name_english,
    ROUND(
        SUM(op.payment_value)::numeric / COUNT(*),
        2
    ) AS revenue_per_item
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
    ON oi.product_id = p.product_id
JOIN product_category_name_translation t
    ON p.product_category_name = t.product_category_name
JOIN olist_order_payments_dataset op
    ON oi.order_id = op.order_id
GROUP BY t.product_category_name_english
HAVING COUNT(*) > 100
ORDER BY revenue_per_item DESC
LIMIT 10;
