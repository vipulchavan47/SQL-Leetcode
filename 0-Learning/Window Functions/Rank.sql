-- 2. Ranking Window Functions

-- These functions provide rankings of rows within a partition based on specific criteria. Common ranking functions include:

-- RANK(): Assigns ranks to rows, skipping ranks for duplicates.
-- DENSE_RANK(): Assigns ranks to rows without skipping rank numbers for duplicates.
-- ROW_NUMBER(): Assigns a unique number to each row in the result set.
-- PERCENT_RANK(): Shows the relative rank of a row as a percentage between 0 and 1.

-- Example Usage of RANK()
-- Find employees with the highest salary in each department using RANK()
-- RANK() assigns the same rank to employees with the same salary, allowing us to capture all top earners.
-- Why RANK() instead of ROW_NUMBER()? Because ROW_NUMBER() would assign unique numbers, potentially excluding employees with the same top salary.
SELECT * FROM (
  SELECT
    departmentId,
    name AS Employee,
    salary AS Salary,
    RANK() OVER ( PARTITION BY departmentId ORDER BY salary DESC ) AS rnk
  FROM Employee
) t
WHERE t.rnk = 1; -- Filtering to get only employees with the highest salary in their department



--- Dense_RANK() Example
-- Similar to RANK(), but does not skip rank numbers for duplicates.
-- Find employees with the highest salary in each department using DENSE_RANK()

SELECT * FROM (
  SELECT
    departmentId,
    name AS Employee,
    salary AS Salary,
    DENSE_RANK() OVER ( PARTITION BY departmentId ORDER BY salary DESC ) AS drnk
  FROM Employee
) t
WHERE t.drnk = 1; -- Filtering to get only employees with the highest salary in their department    