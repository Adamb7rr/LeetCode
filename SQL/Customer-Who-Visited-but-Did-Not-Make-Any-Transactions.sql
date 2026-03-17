1-- Write your PostgreSQL query statement below
2select customer_id, count(*) as count_no_trans
3from Visits
4left join Transactions using(visit_id)
5where Transactions.visit_id is null
6group by customer_id