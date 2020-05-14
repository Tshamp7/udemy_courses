-- String function challenge

-- Use the substring function to retrieve the first 6 characters of each movie name
-- and the year they released.
SELECT * FROM movies;

SELECT SUBSTRING(movie_name, 1, 6) AS movie_name_chars, SUBSTRING(release_date::TEXT, 1, 4) AS release_year 
FROM movies;

-- Retrieve the first name and initial and last name of every actor born in May.

SELECT ac.first_name, SUBSTRING(ac.last_name, 1, 1) FROM actors ac
WHERE SUBSTRING(ac.date_of_birth::TEXT, 7, 1) = '5';

-- Replace the movie language for all English language movie with age certificate rating 
-- of 18 to 'English'.

UPDATE movies
SET movie_lang = REPLACE(movie_lang, 'English', 'Eng')
WHERE age_certificate = '18';

SELECT * FROM movies;


