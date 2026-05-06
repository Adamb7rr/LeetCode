1-- Write your PostgreSQL query statement below
2SELECT user_id,
3    ROUND(
4        COALESCE(
5            SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END)::DECIMAL 
6            / NULLIF(COUNT(*), 0), 
7        0), 
8    2) AS confirmation_rate
9FROM Signups
10LEFT JOIN Confirmations USING(user_id)
11GROUP BY user_id