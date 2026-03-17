1-- Write your PostgreSQL query statement below
2SELECT customer_id, COUNT(v.visit_id) as count_no_trans 
3FROM Visits v
4LEFT JOIN Transactions t ON v.visit_id = t.visit_id
5WHERE transaction_id IS NULL
6GROUP BY customer_id