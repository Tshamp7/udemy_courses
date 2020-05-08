-- SELECT challenges:
-- Select the name and release date of every movie
-- Select the first and last name of all American directors
-- Select all male actors born after 1970-01-01
-- Select the names of all movies which are over 90 minutes long and the movie language is English.

SELECT * FROM movies;
SELECT * FROM actors;

SELECT movie_name, release_date FROM movies;

SELECT first_name, last_name FROM directors
WHERE nationality = 'American';

SELECT * FROM actors 
WHERE gender = 'M' AND date_of_birth > '1970-01-01';

SELECT * FROM movies
WHERE movie_lang = 'English' AND movie_length > 90;