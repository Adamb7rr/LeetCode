1-- Write your PostgreSQL query statement below
2select w1.id
3from Weather w1
4join Weather w2
5on w1.recordDate = w2.recordDate + interval '1 day'
6where w1.temperature > w2.temperature 