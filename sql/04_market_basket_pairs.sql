SELECT 
    t2.item_name AS paired_item,
    COUNT(DISTINCT t1.transaction_id) AS transaction_co_occurrence
FROM fact_pos_transactions t1
JOIN fact_pos_transactions t2 
    ON t1.transaction_id = t2.transaction_id
WHERE t1.item_name = 'Coffee' 
  AND t2.item_name != 'Coffee'
GROUP BY paired_item
ORDER BY transaction_co_occurrence DESC
LIMIT 5;
