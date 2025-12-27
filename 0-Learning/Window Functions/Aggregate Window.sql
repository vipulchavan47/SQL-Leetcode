-- 1. Aggregate Window Function

/*
Employees Table

+----------+-----+------------+---------+
| Name     | Age | Department | Salary  |
+----------+-----+------------+---------+
| Ramesh   | 20  | Finance    | 50,000  |
| Suresh   | 22  | Finance    | 50,000  |
| Ram      | 28  | Finance    | 20,000  |
| Deep     | 25  | Sales      | 30,000  |
| Pradeep  | 22  | Sales      | 20,000  |
+----------+-----+------------+---------+
*/

-- Aggregate function with OVER() clause


-- 1. Aggregate Window Function
-- Aggregate window functions calculate aggregates over a window of rows while retaining individual rows. Common aggregate functions include:

-- SUM(): Sums values within a window.
-- AVG(): Calculates the average value within a window.
-- COUNT(): Counts the rows within a window.
-- MAX(): Returns the maximum value in the window.
-- MIN(): Returns the minimum value in the window.
-- Example: Using AVG() to Calculate Average Salary within each department

SELECT Name, Age, Department, Salary, 
       AVG(Salary) OVER( PARTITION BY Department) AS Avg_Salary
 FROM employee

-- Output

-- +---------+-----+------------+---------+------------+
-- | Name    | Age | Department | Salary  | Avg_Salary |
-- +---------+-----+------------+---------+------------+
-- | Ramesh  | 20  | Finance    | 50,000  | 40,000     |
-- | Suresh  | 22  | Finance    | 50,000  | 40,000     |
-- | Ram     | 28  | Finance    | 20,000  | 40,000     |
-- | Deep    | 25  | Sales      | 30,000  | 25,000     |
-- | Pradeep | 22  | Sales      | 20,000  | 25,000     |
-- +---------+-----+------------+---------+------------+

-- In this example, the AVG(Salary) OVER (PARTITION BY Department) calculates the average salary for each department (Finance and Sales) and displays it alongside each employee's details.


-- 2. Aggregate Window Function without PARTITION BY
-- so if we do not use PARTITION BY, it will calculate the average salary across all employees (will take whole table as single partition window)
-- Example without PARTITION BY
SELECT Name, Age, Department, Salary, 
       AVG(Salary) OVER() AS Avg_Salary
 FROM employee

 -- Output
    -- +---------+-----+------------+---------+------------+
    -- | Name    | Age | Department | Salary  | Avg_Salary |
    -- +---------+-----+------------+---------+------------+
    -- | Ramesh  | 20  | Finance    | 50,000  | 40,000     |
    -- | Suresh  | 22  | Finance    | 50,000  | 40,000     |
    -- | Ram     | 28  | Finance    | 20,000  | 40,000     |
    -- | Deep    | 25  | Sales      | 30,000  | 25,000     |
    -- | Pradeep | 22  | Sales      | 20,000  | 25,000     |
    -- +---------+-----+------------+---------+------------+        
