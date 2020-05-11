-- COUNT Aggregate functions

/*
SELECT COUNT(columname) FROM tablename;
*/

-- returns everything from movie_revenues.
SELECT * FROM movie_revenues;

-- Returns the number of rows of data in the table.

SELECT COUNT(*) FROM movie_revenues;

--  Returns the number of data entries in the specified column. 
-- The COUNT aggregate function will NOT count NULL values.

SELECT COUNT(international_takings) FROM movie_revenues;

-- COUNT can also be used with a WHERE clause to count the number of
-- instances that meet the WHERE clause criteria.

SELECT COUNT(*) FROM movies
WHERE movie_lang = 'English';






