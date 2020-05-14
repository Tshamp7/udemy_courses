-- Correlated subqueries

-- Correlated subqueries, the inner query CANNOT run independently of the outer query.
-- This is because it is referencing a table from the outer query.

-- See example:

SELECT dr.first_name, dr.last_name, dr.date_of_birth
FROM directors dr
WHERE dr.date_of_birth = (
SELECT MIN(date_of_birth) FROM directors d2
WHERE d2.nationality = dr.nationality
);

SELECT mo1.movie_name, mo1.movie_lang, mo1.movie_length FROM movies mo1
WHERE mo1.movie_length =
(SELECT MAX(movie_length) FROM movies mo2
WHERE  mo1.movie_lang = mo2.movie_lang);