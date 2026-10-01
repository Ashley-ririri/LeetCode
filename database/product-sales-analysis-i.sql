# Write your MySQL query statement below
SELECT p.product_name, year, price
From Sales s
Join Product p
ON s.Product_id = p.Product_id
