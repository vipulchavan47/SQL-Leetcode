CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name varchar(50) NOT NULL,
  deptID INTEGER NOT NULL,
  salary INTEGER 
);

INSERT INTO EMPLOYEE VALUES (1, 'Clark', 1, 40000);
INSERT INTO EMPLOYEE VALUES (2, 'Dave', 2, 80000);
INSERT INTO EMPLOYEE VALUES (3, 'Ava', 1, 56000);
INSERT INTO EMPLOYEE VALUES (4, 'Asm', 3, 40000);
INSERT INTO EMPLOYEE VALUES (5, 'Khushi', 3, 60000);
INSERT INTO EMPLOYEE VALUES (6, 'Ava Max', 2, 75000);
INSERT INTO EMPLOYEE VALUES (7, 'Max', 1, 30000);


-- add new column (default gender male )
-- syntax: ALTER TABLE table_name ADD column_name datatype DEFAULT default_value;
ALTER TABLE EMPLOYEE ADD gender varchar(50) default 'Male';

-- modify gender column
ALTER TABLE EMPLOYEE modify gender char(50) NOT NULL default 'Female';

-- since it won't automatically update the previously assigned gender (male) we need to manually UPDATE them
UPDATE EMPLOYEE SET gender = 'Female';


-- describe the features of the table (data types, nullability, etc)
DESC EMPLOYEE;

-- rename the coulumn name to empName
-- syntax: ALTER TABLE table_name CHANGE COLUMN old_column_name new_column_name column_definition;
ALTER TABLE EMPLOYEE CHANGE COLUMN name empName varchar(50) NOT NULL;

-- drop COLUMN
-- syntax: ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE EMPLOYEE DROP COLUMN gender;

-- Rename TABLE
-- syntax: ALTER TABLE old_table_name RENAME TO new_table_name;
ALTER TABLE EMPLOYEE RENAME TO employee;


select * from employee;