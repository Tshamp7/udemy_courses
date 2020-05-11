-- Using concatenate; this is used to link two items together into two. 

/* 
SELECT 'string1' || 'string2' AS new_string;

SELECT CONCAT(column1, column2) AS new_column FROM tablename;

SELECT CONCAT_WS(' ', column1, column2) AS new_column FROM tablename;
*/

-- This will combine concat and together as one word under the column name 'new_string'
SELECT 'concat' || 'together' AS new_string;

-- You can also concatentate a space between the two strings by adding another || symbol with ' '

-- This can also be used to concatenate, or link, two columns.

SELECT CONCAT(first_name,  ' ',  last_name) AS full_name FROM actors;

-- If using CONCAT_WS, the separator is listed first followed by the items to concatenate.
-- Many items can be listed in this fashion. 

SELECT CONCAT_WS(' ', first_name, last_name, date_of_birth) AS actor_info FROM actors;

