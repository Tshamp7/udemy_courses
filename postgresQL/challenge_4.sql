-- Challenge 4
SELECT * FROM movies;
-- Return the top 3 movies with the highest international takings.

SELECT *, international_takings FROM movies
JOIN movie_revenues
	ON  movie_revenues.movie_id = movies.movie_id
	WHERE international_takings IS NOT NULL
ORDER BY international_takings DESC
LIMIT 3;
-- Concatenate the first and last names of the directors, separated by a space.
-- Call this new column full_name.

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM directors;

-- Return the actors with missing first_names or missing date_of_births.

SELECT * FROM actors
WHERE first_name || date_of_birth IS NULL;