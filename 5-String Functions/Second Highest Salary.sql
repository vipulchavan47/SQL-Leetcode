/*
Table: Employee

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key (column with unique values) for this table.
Each row of this table contains information about the salary of an employee.
 

Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).

Example 1:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
Output: 
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+
Example 2:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
+----+--------+
Output: 
+---------------------+
| SecondHighestSalary |
+---------------------+
| null                |
+---------------------+
*/

SELECT 
    (SELECT DISTINCT salary          -- remove duplicate salaries
     FROM Employee
     ORDER BY salary DESC            -- sort salaries from highest to lowest
     LIMIT 1 OFFSET 1                -- skip highest salary, pick the second one
    ) 
AS SecondHighestSalary;        

-- Use subquery to find second highest salary
-- DISTINCT to consider only unique salaries
-- ORDER BY DESC to sort from highest to lowest
-- LIMIT 1 OFFSET 1 to skip the highest and get the second highest
-- If no second highest exists, subquery returns null automatically
