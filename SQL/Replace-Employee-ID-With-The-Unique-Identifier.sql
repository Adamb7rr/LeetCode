1-- Write your PostgreSQL query statement below
2select eu.unique_id, e.name
3from Employees e
4left join EmployeeUNI eu
5on e.id = eu.id