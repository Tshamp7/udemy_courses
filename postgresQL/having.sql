-- Having clause, similar to WHERE clauses but they can use aggregate
-- functions to filter the data.

/* 
SELECT column1, AGGFUN(column2) FROM tablename
GROUP BY column1
HAVING AGGFUN(column3) = value;
*/


-- This will remove all movie_lang results that did not meet the having clause.
-- The having clause must come AFTER the GROUP BY statement.

SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang
HAVING COUNT(movie_lang) > 1;

-- WHERE and HAVING clauses CAN be used in the same query. For example:

SELECT movie_lang, COUNT(movie_lang) FROM movies
WHERE movie_length > 120
GROUP BY movie_lang
HAVING COUNT(movie_lang) > 1;