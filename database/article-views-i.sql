# Write your MySQL query statement below
SELECT DISTINCT author_id AS id
From views
WHERE author_id = viewer_id
ORDER BY id ASC