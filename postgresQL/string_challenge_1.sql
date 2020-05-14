-- String challenge 1

-- Select the directors first and last names and movie names in uppercase.
SELECT UPPER(dr.first_name), UPPER(dr.last_name), UPPER(mo.movie_name) FROM directors dr
JOIN movies mo
	ON mo.director_id = dr.director_id;

-- Select the first and last names, in initial capitalization of all actors who have
-- starred in a Chinese or a Korean movie.

SELECT INITCAP(ac.first_name), INITCAP(ac.last_name) FROM actors ac
WHERE ac.actor_id IN (
SELECT ma.actor_id FROM movies_actors ma
JOIN movies mo
	ON mo.movie_id = ma.movie_id
WHERE mo.movie_lang IN ('Chinese', 'Korean')
	);