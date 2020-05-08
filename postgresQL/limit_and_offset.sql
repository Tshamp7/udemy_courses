-- limiting the order of results

-- using LIMIT we can limit the number of results we get with our queri


-- will return everything in movies.
SELECT * FROM movies; 


-- This will only return the first 5 entries from movies

SELECT * FROM movies
LIMIT 5; .


-- Will return all columns from movie_revenues, order them by revenue from low to high
-- and then return the lowest three. 

SELECT * FROM movie_revenues
ORDER BY domestic_takings
LIMIT 3;

-- using OFFSET will skip the first 'x' number of entires passed to OFFSET.
-- The query below will show the NEXT three entries, leaving out the previous query.
SELECT * FROM movie_revenues
ORDER BY domestic_takings
LIMIT 3 OFFSET 3;