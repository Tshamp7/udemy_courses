--Using BETWEEN

/* 
SELECT columname1, columname2 FROM table
WHERE columname1 BETWEEN value1 AND value2;
*/

-- BETWEEN will allow you to select for data that has properties that fall BETWEEN two parameters. 
-- This is frequently used for INTs and Date data types

SELECT movie_name FROM movies
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';

SELECT movie_name, movie_length FROM movies
WHERE movie_length BETWEEN 90 AND 120;