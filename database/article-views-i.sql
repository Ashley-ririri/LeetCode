# Write your MySQL query statement below
SELECT DISTINCT author_id AS id
From views
WHERE author_id = viewer_id
ORDER BY id ASC

我们可以把解题思路拆解为三个简单的步骤：

筛选条件：作者自己看了自己的文章，意味着这一行数据中 author_id 必须等于 viewer_id。

去重：一个作者可能多次查看同一篇文章，或者查看了自己的多篇文章，但结果要求每个作者的 ID 只能出现一次（使用 DISTINCT 或去重函数）。

重命名与排序：将输出的列名重命名为 id，并按照 id 升序排列（ASC）。

WHERE author_id = viewer_id：过滤出符合“作者自己看自己文章”的记录。

SELECT DISTINCT author_id：提取作者的 ID，并用 DISTINCT 关键字去掉重复的 ID。

AS id：将原本的列名 author_id 重命名为题目要求的 id。

ORDER BY id ASC：确保最后的结果按照 id 从小到大（升序）排列。
