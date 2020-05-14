-- UNION

/*
SELECT column1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;
*/

-- Returns the results of two or more select querys in a single results.
-- The same number of columns must be selected for each query.
-- The corresponding columns from each query MUST have a compatible data type.

SELECT first_name, last_name FROM directors
UNION
SELECT first_name, last_name FROM actors;

-- The above query will return the first names / last names of all actors and directors.
-- One can also use WHERE statements with EACH of the subquerys in a UNION clause query.

-- ORDER BY may be used, but MUST be put after the final SELECT query.

/*
UNION ALL statements are nearly the same as UNION statements.
The difference is that the UNION will remove any duplicate values whereas a UNION ALL
will not. 
*/