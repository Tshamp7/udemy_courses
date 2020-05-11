-- Aggregate function challenge

-- Count the number of actors born after 1970-01-01

SELECT COUNT(*) FROM actors
WHERE date_of_birth > '1970-01-01';

-- What was the highest and lowest domestic takings for a movie?

SELECT MIN(domestic_takings) FROM movie_revenues;
SELECT MAX(domestic_takings) FROM movie_revenues;

-- What is the sum movie length for movies rated 15?movie_)

SELECT * FROM movies;

SELECT SUM(movie_length) FROM movies
WHERE age_certificate = '15';

-- How many Japanese directors are in the directors table?

SELECT COUNT(*) FROM directors
WHERE nationality = 'Japanese';

-- What is the average movie length for Chinese movies?

SELECT AVG(movie_length) FROM movies
WHERE movie_lang = 'Chinese';