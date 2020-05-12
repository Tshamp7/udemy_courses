-- Intersect
-- Like UNION and UNION ALL, except INTERSECT only returns rows that are in BOTH
-- SELECT statements.

/*
SELECT column1 FROM table1
INTERSECT
SELECT column1 FROM table2
*/


-- The following query will only return the instances that occur in BOTH the actors 
-- AND the directors table.

SELECT first_name FROM directors
INTERSECT
SELECT first_name FROM actors;