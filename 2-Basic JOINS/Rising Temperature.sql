/*
Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 
Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
*/

-- 
SELECT w1.id
FROM Weather AS w1
JOIN Weather AS w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
AND w1.temperature > w2.temperature;


-- DATEDIFF function returns the difference in days between two dates.
--SYNTAX: DATEDIFF(date1, date2)
/*
Mental model (remember this)
Self join = same table, different roles
Join on relationship, not primary key
w1 → today
w2 → yesterday
*/

/*
No SELF JOIN keyword exists (in MySQL and most other RDBMS)
Always use aliases
Never join same table on same primary key unless intended
Think in roles, not tables