SELECT 
    STRFTIME('%H', date_time) AS order_hour,
    COUNT(DISTINCT transaction_id) AS unique_orders,
    COUNT(*) AS total_items_sold,
    ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT transaction_id), 2) AS items_per_order
FROM fact_pos_transactions
GROUP BY order_hour
ORDER BY unique_orders DESC;
