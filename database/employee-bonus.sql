# Write your MySQL query statement below
SELECT
  e.name,
  b.bonus
From
  Employee e
LEFT JOIN
  Bonus b
On
  e.empId = b.empId
Where
  b.bonus < 1000 or b.bonus is null;

