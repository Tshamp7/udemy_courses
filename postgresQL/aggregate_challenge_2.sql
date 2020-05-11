-- Aggregate function challenge 2

-- How many directors are there per nationality?

SELECT nationality, COUNT(*) AS num_directors FROM directors
GROUP BY nationality;

-- What is the sum total movie_lengths for each age certificate and movie language combination?

SELECT age_certificate, movie_lang, SUM(movie_length) AS sum_movie_length FROM movies
GROUP BY age_certificate, movie_lang;

-- Return the movie languages which have a sum total movie length over 500 minutes.

SELECT movie_lang, SUM(movie_length) AS sum_movie_length FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 500;