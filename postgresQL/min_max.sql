-- MIN and MAX aggregate functions

/* 
SELECT MAX(columname) FROM tablename;
SELECT MIN(columname) FROM tablename;
*/

-- As the name suggests, MIN find the minimum value in the specified column.

SELECT MIN(movie_length) FROM movies;

-- And MAX finds the maximum value in the specified column.

SELECT MAX(movie_length) FROM movies;

-- These functions also work with strings. 
-- This will return the movie name that starts with letter of the alphabet nearest to Z.
SELECT MAX(movie_name) FROM movies;

-- This will return the movie name that starts with letter of the alphabet nearest to A.
SELECT MIN(movie_name) FROM movies;


