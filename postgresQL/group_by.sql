-- Grouping data

/*
SELECT column1, AGGFUN(column2) FROM tablename
GROUP BY column2;
*/

SELECT COUNT(movie_lang) FROM movies;

-- This will return all the distinct values grouped by movie language
-- It will also provide a count of the numbers of films that occur in each language.

SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang;

SELECT movie_lang, AVG(movie_length) FROM movies
GROUP BY movie_lang;

-- Multiple columns can be used in the group by clause as well.
-- This will find distinct combinations between movie_lang and age_certificate
-- It will provide the aggregate function call result for each one of these combos.

SELECT movie_lang, age_certificate, AVG(movie_length) AS avg_movie_length FROM movies
GROUP BY movie_lang, age_certificate; 

-- Where clauses can also be used in conjunction with GROUP BY, however, 
-- the WHERE clause must be implemented before the GROUP BY statement.

SELECT movie_lang, age_certificate, AVG(movie_length) AS avg_movie_length FROM movies
WHERE movie_length > 120
GROUP BY movie_lang, age_certificate; 

-- Multiple AGG functions can also be used in a single query.

SELECT movie_lang, MIN(movie_length) AS min_movie_length, MAX(movie_length) AS max_movie_length FROM movies
GROUP BY movie_lang;

/* 
NOTE: you will alwaus be grouping by the column in your SELECT statement 
which has NOT had an aggregate function performed on it.
*/
