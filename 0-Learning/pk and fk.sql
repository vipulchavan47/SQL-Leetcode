CREATE TABLE department (
  deptID INTEGER PRIMARY KEY,
  deptName varchar(50) NOT NULL 
);

INSERT INTO department VALUES (1, 'Sales');
INSERT INTO department VALUES (2, 'Accounting');
INSERT INTO department VALUES (3, 'HR');


CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name varchar(50) NOT NULL,
  deptID INTEGER NOT NULL,
  salary INTEGER,
  FOREIGN KEY (deptID) REFERENCES department(deptID)
);

INSERT INTO EMPLOYEE VALUES (1, 'Clark', 1, 40000);
INSERT INTO EMPLOYEE VALUES (2, 'Dave', 2, 80000);
INSERT INTO EMPLOYEE VALUES (3, 'Ava', 1, 56000);
INSERT INTO EMPLOYEE VALUES (4, 'Asm', 3, 40000);
INSERT INTO EMPLOYEE VALUES (5, 'Khushi', 3, 60000);
INSERT INTO EMPLOYEE VALUES (6, 'Ava Max', 2, 75000);
INSERT INTO EMPLOYEE VALUES (7, 'Max', 1, 30000);


select name,empId from EMPLOYEE;

SELECT e.name, d.deptName, e.salary
FROM EMPLOYEE e
JOIN department d ON e.deptID = d.deptID;
