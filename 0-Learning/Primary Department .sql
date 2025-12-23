-- Create Employee table
CREATE TABLE Employee (
    employee_id INT,
    department_id INT,
    primary_flag CHAR(1)
);

-- Insert dummy data

-- Employee 1: works in TWO departments, one is primary
INSERT INTO Employee VALUES (1, 10, 'Y');
INSERT INTO Employee VALUES (1, 20, 'N');

-- Employee 2: works in ONLY ONE department (no Y needed)
INSERT INTO Employee VALUES (2, 30, 'N');

-- Employee 3: works in THREE departments, one is primary
INSERT INTO Employee VALUES (3, 40, 'N');
INSERT INTO Employee VALUES (3, 50, 'Y');
INSERT INTO Employee VALUES (3, 60, 'N');

-- Employee 4: works in ONLY ONE department
INSERT INTO Employee VALUES (4, 70, 'N');


SELECT * FROM Employee;
-- Test query
-- SELECT employee_id, department_id
-- FROM Employee
-- WHERE primary_flag = 'Y'
--   OR employee_id IN (
--         SELECT employee_id
--         FROM Employee
--         GROUP BY employee_id
--         HAVING COUNT(*) = 1
--   );

SELECT employee_id,COUNT(employee_id) FROM Employee
GROUP BY employee_id HAVING COUNT(employee_id) = 1;

