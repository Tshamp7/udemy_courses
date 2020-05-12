-- INNER JOINS Challenge

-- Select the directors first and last names, the movie names and release dates for
-- all Chinese, Korean, and Japanese movies.
SELECT * FROM movies;
SELECT * FROM directors;

SELECT dr.first_name, dr.last_name, mo.movie_name, mo.release_date 
FROM directors dr
	JOIN movies mo
		ON dr.director_id = mo.director_id
WHERE mo.movie_lang IN ('Chinese', 'Korean', 'Japanese');

-- Select the movie names, release dates and inernational takings of all English lang movies.

SELECT mo.movie_name, mo.release_Date, mr.international_takings
FROM movies mo
	JOIN movie_revenues mr
		ON mo.movie_id = mr.movie_id
WHERE mo.movie_lang = 'English';

-- Select the movie names, domestic takings, and international takings for all movies
-- with either missing domestic takings or missing internation takings 
-- and order the results by movie.

SELECT * FROM movie_revenues;

SELECT mo.movie_name, mr.domestic_takings, mr.international_takings
FROM movies mo
	JOIN movie_revenues mr
		ON mo.movie_id = mr.movie_id
WHERE mr.international_takings IS NULL
OR mr.domestic_takings IS NULL
ORDER BY mo.movie_name;