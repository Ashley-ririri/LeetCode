# Write your MySQL query statement below
SELECT customer_id, Count(*) as Count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id is null
GROUP BY v.customer_id;

#拆解一下思路，一共三步：

#LEFT JOIN 找出没交易的访问：Visits 是左表全部保留，配不上的 visit（比如 visit_id 4、6、7、8）在 Transactions 那侧就是 null。
#WHERE t.transaction_id IS NULL 过滤：只留下这些没交易的访问。注意 transaction_id 是右表主键，不可能本身是 null，所以它为 null 就说明这行是没配上对的。
#GROUP BY customer_id + COUNT(*)：按客户分组数一数，比如客户 54 有 visit 7、8 没交易，就是 2。
#你会发现模式在复用：1378 教了"LEFT JOIN 找缺失"，这题就是"LEFT JOIN 找缺失 + GROUP BY 计数"。
