--The Employee table holds all employees. Every employee has an Id, a salary, and there is also a column for the department Id.
--
--+----+-------+--------+--------------+
--| Id | Name  | Salary | DepartmentId |
--+----+-------+--------+--------------+
--| 1  | Joe   | 70000  | 1            |
--| 2  | Jim   | 90000  | 1            |
--| 3  | Henry | 80000  | 2            |
--| 4  | Sam   | 60000  | 2            |
--| 5  | Max   | 90000  | 1            |
--+----+-------+--------+--------------+
--The Department table holds all departments of the company.
--
--+----+----------+
--| Id | Name     |
--+----+----------+
--| 1  | IT       |
--| 2  | Sales    |
--+----+----------+
--Write a SQL query to find employees who have the highest salary in each of the departments. For the above tables, your SQL query should return the following rows (order of rows does not matter).
--
--+------------+----------+--------+
--| Department | Employee | Salary |
--+------------+----------+--------+
--| IT         | Max      | 90000  |
--| IT         | Jim      | 90000  |
--| Sales      | Henry    | 80000  |
--+------------+----------+--------+
--Explanation:
--
--Max and Jim both have the highest salary in the IT department and Henry has the highest salary in the Sales department.
-- 因無限制輸出筆數，因此預先挑出最高薪資做為之後比對條件

select  d.Name as Department, e.Name as Employee, e.Salary
from Employee e, Department d,
                    (select max(e.Salary) as maxSalary, e.DepartmentId
                        from Employee e group by e.DepartmentId) as m
where e.departmentId = d.Id and d.Id= m.DepartmentId and e.salary = m.maxSalary



