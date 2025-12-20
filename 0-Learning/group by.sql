
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary int
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales',40000);
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting',80000);
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales',56000);
INSERT INTO EMPLOYEE VALUES (0004, 'Asm', 'HR',40000);
INSERT INTO EMPLOYEE VALUES (0005, 'Khushi', 'HR',60000);
INSERT INTO EMPLOYEE VALUES (0006, 'Ava Max', 'Accounting',75000);
INSERT INTO EMPLOYEE VALUES (0007, 'Max', 'Sales',30000);

-- fetch 
SELECT * FROM EMPLOYEE ;

-- group by is always used with aggregate function otherwise it acts as distinct 
-- just like SELECT is used with where clause , group by is used with having

SELECT dept , count(dept) FROM EMPLOYEE group by dept having dept != 'HR';


-- avg salary of dept
SELECT dept, avg(salary) FROM EMPLOYEE group by dept;
