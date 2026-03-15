1# Write your MySQL query statement below
2select name as Employee 
3from Employee e 
4where salary > (select salary from Employee where id = e.managerId);