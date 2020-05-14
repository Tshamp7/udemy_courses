-- subqueries part 1

/* 
subqueries are nested queries, or, queries within queries. 
The inner select query will ALWAYS be exectuted first and these 
results are passed to the outer select query. 

Uncorrelated subqueries are subqueries that could be run on their own.

Correlated subqueries CANNOT run without the outer query. This is because
the inner query references a table from the outer query. For example an inner
query could reference table aliases defined in the first, or outer query. 

*/

-- The following query is an example of an uncorrelated subquery.

SELECT movie_name, movie_length FROM movies
WHERE movie_length > 
(SELECT AVG(movie_length) FROM movies);

SELECT first_name, last_name, date_of_birth
FROM directors
WHERE date_of_birth > (
	SELECT date_of_birth 
	FROM directors
	WHERE CONCAT(first_name, ' ', last_name) = 'James Cameron'
);

-- Sometimes, it can be helpful to write the inner subquery first, and then
-- write the outer subqeury around it. 

-- It can also be helpful to run your inner query first seperately,
-- this will help to make sure you get the correct return from the inner query.

SELECT movie_name FROM movies
WHERE movie_id IN (
SELECT movie_id FROM movie_revenues
WHERE international_takings > domestic_takings
	);
	
	SELECT mo.movie_name, dr.first_name, dr.last_name FROM movies mo
JOIN directors dr ON mo.director_id = dr.director_id
WHERE mo.movie_id IN (
SELECT movie_id FROM movie_revenues
WHERE international_takings > domestic_takings
	);