/*
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
*/

-- Delete duplicate emails, keeping the record with the smallest id

DELETE p1 FROM Person p1
JOIN Person p2
  ON p1.email = p2.email AND p1.id > p2.id; -- Join the table with itself to find duplicates
-- p1.id > p2.id ensures we keep the record with the smallest id

