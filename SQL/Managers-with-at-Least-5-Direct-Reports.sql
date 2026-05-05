1-- Write your PostgreSQL query statement below
2SELECT name FROM Employee WHERE id IN
3    (SELECT managerId FROM Employee GROUP BY managerId
4    HAVING (COUNT(DISTINCT id)) >= 5)