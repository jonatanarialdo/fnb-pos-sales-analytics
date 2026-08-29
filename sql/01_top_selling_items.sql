SELECT 
    item_name,
    COUNT(*) AS total_units_sold,
    ROUND(CAST(COUNT(*) AS FLOAT) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS sales_share_pct
FROM fact_pos_transactions
GROUP BY item_name
ORDER BY total_units_sold DESC
LIMIT 10;
