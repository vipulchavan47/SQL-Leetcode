/*
Table: Users

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| name           | varchar |
+----------------+---------+
user_id is the primary key (column with unique values) for this table.
This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.
 

Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by user_id.
*/

SELECT user_id , 
CONCAT( UPPER(LEFT(name,1)),
        LOWER(SUBSTRING(name,2))
) AS name
FROM Users
ORDER BY user_id;

-- LEFT(string, n) Returns the first n characters from a string.
-- SELECT LEFT('Alice', 1);

-- SUBSTRING(string, start) Returns the substring from string starting at position start to the end of the string.
-- SELECT SUBSTRING('Alice', 2);
-- Important:   Indexing starts from 1, not 0

-- CONCAT(string1, string2, ...)  Concatenates two or more strings into one string.