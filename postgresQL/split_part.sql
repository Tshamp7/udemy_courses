-- substring function

/* 
NOTE: the positions used in this function are NOT index positions, they are char
positions.

SELECT SUBSTRING('String', from, count)

SELECT SUBSTRING(columname, from, count) FROM tablename;
*/

-- The following query will return the first three letters of each actors first name.
SELECT SUBSTRING(first_name, 1, 3) FROM actors;