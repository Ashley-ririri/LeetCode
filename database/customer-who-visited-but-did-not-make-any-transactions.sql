# Write your MySQL query statement below
SELECT customer_id, Count(*) as Count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id is null
GROUP BY v.customer_id;