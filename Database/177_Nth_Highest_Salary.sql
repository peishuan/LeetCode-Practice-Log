--Write a SQL query to get the nth highest salary from the Employee table.
--
--+----+--------+
--| Id | Salary |
--+----+--------+
--| 1  | 100    |
--| 2  | 200    |
--| 3  | 300    |
--+----+--------+
--For example, given the above Employee table, the nth highest salary where n = 2 is 200. If there is no nth highest salary, then the query should return null.
--
--+------------------------+
--| getNthHighestSalary(2) |
--+------------------------+
--| 200                    |
--+------------------------+

-- Rank() over (Partition by 欄位 Order by 欄位 )
-- DENSE_RANK() over (Partition by 欄位 Order by 欄位 )
-- ROW_NUMBER() over (Partition by 欄位 Order by 欄位 )
-- 排序編號不同
--RANK()        發生不持續的編號 例如資料值 1,2,2,3 發生的編號將是1,2,2,4
--DENSE_RANK()  發生持續的編號 例如資料值 1,2,2,3 發生的編號將是1,2,2,3
--ROW_NUMBER()  發生持續的編號(不重複) 例如資料值 1,2,2,3 發生的編號將是1,2,3,4
-- 子查詢觀念
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      select distinct Salary from
      (select *, DENSE_RANK() over (order by Salary desc)r from Employee)sub where r = N
      -- 將salary取不重複個數, 透過dense rank取到第n個排序顯示
  );
END