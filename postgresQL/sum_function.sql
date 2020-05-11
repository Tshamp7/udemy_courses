-- SUM aggregate function

/* 
SELECT SUM(columname) FROM tablename;
*/

-- The SUM function is applied to the specified column and it will sum everything within the column. 

SELECT SUM(domestic_takings) FROM movie_revenues;

-- WHERE clauses can also be used with SUM.
-- This will NOT sum anything that does not satisfy the WHERE clause.


SELECT SUM(domestic_takings) FROM movie_revenues
WHERE domestic_takings > 100;

-- This will sum only the movie lengths that have a language of 'Chinese'.
SELECT SUM(movie_length) FROM movies
WHERE movie_lang = 'Chinese';

-- SUM can only be used on INT and numeric data types. 