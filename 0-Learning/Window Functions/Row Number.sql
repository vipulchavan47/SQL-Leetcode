-- ROW_NUMBER() is a SQL window function that assigns a unique, sequential number to each row within a partition, based on a defined order.

SELECT
  name,
  salary,
  ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
FROM Employee;

-- | name | salary | rn |
-- | ---- | ------ | -- |
-- | A    | 9000   | 1  |
-- | B    | 8000   | 2  |
-- | C    | 8000   | 3  |

-- with partition by
SELECT
  departmentId,
  name,
  salary,
  ROW_NUMBER() OVER (
    PARTITION BY departmentId
    ORDER BY salary DESC
  ) AS rn
FROM Employee;

-- Group rows by departmentId
-- Rank employees inside each department
-- Reset numbering for every department


-- Top salary per department (classic interview)
SELECT *
FROM (
  SELECT
    departmentId,
    name,
    salary,
    ROW_NUMBER() OVER (
      PARTITION BY departmentId
      ORDER BY salary DESC
    ) AS rn
  FROM Employee
) t
WHERE rn = 1;



-- IMP

-- Window functions do not reduce rows
-- ORDER BY inside OVER() is mandatory
-- ROW_NUMBER() always returns unique numbers
-- Executed after WHERE, before ORDER BY