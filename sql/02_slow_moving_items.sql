SELECT 
    item_name,
    COUNT(*) AS total_transactions
FROM fact_pos_transactions
GROUP BY item_name
HAVING COUNT(*) < 20
ORDER BY total_transactions ASC;
