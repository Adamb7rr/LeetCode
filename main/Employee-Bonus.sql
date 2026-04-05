1SELECT
2    Employee.name, Bonus.bonus
3FROM
4    Employee
5        LEFT JOIN
6    Bonus ON Employee.empid = Bonus.empid
7WHERE
8    bonus < 1000 OR bonus IS NULL
9;