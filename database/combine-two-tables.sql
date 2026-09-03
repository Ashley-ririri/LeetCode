# Write your MySQL query statement below
SELECT
  P.firstname,
  P.lastname,
  A.city,
  A.state
From
  Person p
Left Join
  Address a
on
  a.personId = p.personId