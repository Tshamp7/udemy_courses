-- Subqueries challenge

-- Select the first and last names of all actors older than Marlon Brando

SELECT first_name, last_name FROM actors
WHERE date_of_birth < (
SELECT date_of_birth FROM actors
WHERE first_name = 'Marlon' 
AND last_name = 'Brando'
);

-- Select the movie names of all movies that have domestic takings above 300 million.
-- Notice how comparing against the results of a subquery does not require you to
-- join the table you are comparing against. 

SELECT mo.movie_name FROM movies mo
WHERE mo.movie_id IN (
SELECT movie_id FROM movie_revenues
WHERE domestic_takings > 300
);

-- Return the shortest and longest movie length for movies with an above avg domestic takings.

SELECT MIN(movie_length) AS shortest_movie_length, MAX(movie_length) AS longest_movie_length FROM movies
WHERE movie_id IN ( 
SELECT movie_id FROM movie_revenues
WHERE domestic_takings > (
SELECT AVG(domestic_takings) FROM movie_revenues
));