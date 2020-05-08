-- retrieving data with a 'WHERE' clause

/* 

SELECT columname FROM tablename
WHERE columname = 'value';

*/

SELECT * FROM movies;

-- single WHERE
SELECT * FROM movies
	WHERE age_certificate = '15';

-- Double where
SELECT * FROM movies
	WHERE age_certificate = '15'
	AND movie_lang = 'Chinese';
	
-- using OR clause; will return items that satisfy either requirement
SELECT * FROM movies
	WHERE age_certificate = '15'
	OR movie_lang = 'Chinese';
	
	
-- WHERE clauses can be chained many times.
SELECT * FROM movies
	WHERE movie_lang = 'English'
	AND age_certificate = '15'
	AND director_id = 27;