-- Joins challenge 3

-- Select the first and last names of all the actors who have starred in movies
-- directed by Wes Anderson.

SELECT * FROM actors;
SELECT * FROM movies;

SELECT ac.first_name, ac.last_name
FROM actors ac
	JOIN movies_actors ma
	  ON ac.actor_id = ma.actor_id
	JOIN movies mo
	  ON mo.movie_id = ma.movie_id
	JOIN directors dr
	  ON dr.director_id = mo.director_id
WHERE CONCAT(dr.first_name, ' ', dr.last_name) = 'Wes Anderson';

	

-- Which director has the highest total domestic takings?

SELECT CONCAT(dr.first_name, ' ', dr.last_name) AS highest_earning_director, SUM(mr.domestic_takings) AS total_domestic_takings
FROM directors dr
JOIN movies mo
	ON dr.director_id = mo.director_id
JOIN movie_revenues mr
	ON mo.movie_id = mr.movie_id
WHERE mr.domestic_takings IS NOT NULL
GROUP BY highest_earning_director
ORDER BY total_domestic_takings DESC
LIMIT 1;


