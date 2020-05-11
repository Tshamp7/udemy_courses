-- Dealing with null values

/*
SELECT * FROM tablename
WHERE columname IS NULL;

SELECT * FROM tablename
WHERE columname IS NOT NULL;
*/

SELECT * FROM Actors
WHERE date_of_birth IS NULL;

-- This search will return  5 null values at the beginning. 
SELECT * FROM movie_revenues
ORDER  BY domestic_takings DESC;

-- To eliminate these null results, simply use a where clause w/ NOT NULL.
SELECT * FROM movie_revenues
WHERE domestic_takings IS NOT NULL
ORDER  BY domestic_takings DESC;

-- Another good use of IS / IS NOT NULL is finding locations in your table which are missing data







