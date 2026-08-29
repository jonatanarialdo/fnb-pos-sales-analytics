SELECT 
    weekday_weekend,
    COUNT(DISTINCT transaction_id) AS total_orders,
    COUNT(*) AS total_items_sold,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS order_percentage
FROM fact_pos_transactions
GROUP BY weekday_weekend;
