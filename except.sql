-- Except
-- Like Intersect except this will exclude any items that co-occur in the other table. 
-- I.e. This returns items that are UNIQUE to the first table. 

/*
SELECT column1 FROM table1
EXCEPT
SELECT column1 FROM table2
*/

SELECT first_name FROM directors
EXCEPT
SELECT first_name FROM actors;

-- ORDER BY can be used with EXCEPT statements and must be placed after the second 
-- SELECT statement.