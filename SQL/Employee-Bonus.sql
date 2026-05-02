1-- Write your PostgreSQL query statement below
2SELECT E.name, B.bonus
3FROM Employee E
4LEFT JOIN Bonus B
5ON E.empId = B.empId
6WHERE B.bonus IS NULL OR B.bonus < 1000