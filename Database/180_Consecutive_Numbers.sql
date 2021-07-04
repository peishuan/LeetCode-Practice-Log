--Table: Logs
--
--+-------------+---------+
--| Column Name | Type    |
--+-------------+---------+
--| id          | int     |
--| num         | varchar |
--+-------------+---------+
--id is the primary key for this table.
--
--
--Write an SQL query to find all numbers that appear at least three times consecutively.
--
--Return the result table in any order.
--
--The query result format is in the following example:
--
--
--
--Logs table:
--+----+-----+
--| Id | Num |
--+----+-----+
--| 1  | 1   |
--| 2  | 1   |
--| 3  | 1   |
--| 4  | 2   |
--| 5  | 1   |
--| 6  | 2   |
--| 7  | 2   |
--+----+-----+
--
--Result table:
--+-----------------+
--| ConsecutiveNums |
--+-----------------+
--| 1               |
--+-----------------+
--1 is the only number that appears consecutively for at least three times.

--學習lead用法；可以取得上一次選出的名作比對；
--在此例需要重複三次因此檢查前一次和前兩次的num

select distinct num as ConsecutiveNums from(
    select Num,
    lead(num, 1) over (order by id) lead1,
    lead(num, 2) over (order by id) lead2
    from Logs) as lg
where num=lead1 and num=lead2