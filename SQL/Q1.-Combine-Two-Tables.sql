1-- Write your PostgreSQL query statement below
2SELECT firstName, lastName, city, state
3FROM Person
4LEFT JOIN Address
5ON Person.personId = Address.personId