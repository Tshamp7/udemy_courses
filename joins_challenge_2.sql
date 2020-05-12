-- JOINS Challenge #2

-- Use a left join to select the first and last names of all British directors
-- and the names and age certificates of the movies they directed.

SELECT d.first_name, d.last_name, mo.movie_name, mo.age_certificate
FROM directors d
	LEFT JOIN movies mo
		ON d.director_id = mo.director_id
WHERE d.nationality = 'British';

-- Count the number of movies that each director has directed.

SELECT * FROM directors;

SELECT CONCAT(d.first_name, ' ', d.last_name) AS director, COUNT(mo.movie_name) AS num_movies_directed
FROM directors d
	LEFT JOIN movies mo
		ON d.director_id = mo.director_id
GROUP BY director;