1-- Write your PostgreSQL query statement below
2SELECT machine_id,
3    ROUND((
4        AVG(timestamp) FILTER (WHERE activity_type = 'end') -
5        AVG(timestamp) FILTER (WHERE activity_type = 'start')
6    )::NUMERIC, 3) AS processing_time
7FROM Activity
8GROUP BY machine_id