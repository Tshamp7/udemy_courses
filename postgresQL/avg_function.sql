-- AVG aggregate function

/* 
SELECT AVG(columname) FROM tablename;
*/

-- This will return the average movie length from the movies table.

SELECT AVG(movie_length) FROM movies;

-- WHERE clauses can also be used with AVG.

SELECT AVG(movie_length) FROM movies
WHERE age_cert >= 15;