1# Write your MySQL query statement below
2select 
3    machine_id,
4    ROUND(
5        AVG(
6            CASE 
7                WHEN activity_type = 'start' THEN -timestamp 
8                ELSE timestamp
9            END
10        ) * 2, # there are two rows per process_id
11    3) as processing_time
12from activity
13group by machine_id