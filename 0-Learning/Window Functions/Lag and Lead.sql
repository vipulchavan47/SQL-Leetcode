-- For LAG() Function- 
-- LAG(expr, N, default) OVER (Window_specification | Window_name)

-- For LEAD() Function- 
-- LEAD(expr, N, default) OVER (Window_specification | Window_name)

-- Table
-- dept	emp	salary
-- IT	A	50
-- IT	B	60
-- HR	C	40
-- HR	D	45

-- Compare salary with previous employee in the same department.
-- compare salary with next employee in the same department.

SELECT dept, emp, salary,
  LAG(salary) OVER ( PARTITION BY dept ORDER BY salary) AS prev_salary,
  LEAD(salary) OVER ( PARTITION BY dept ORDER BY salary) AS next_salary
FROM Employee;

