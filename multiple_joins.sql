-- Joining more than two tables

/*
SELECT t1.column, t2.column, t3.column FROM table1 t1
JOIN table2 t2 
	ON t1.column = t2.column
JOIN table3 t3
	ON t2.column = t3.column
*/

SELECT d.first_name, d.last_name, mo.movie_name, mr.international_takings, mr.domestic_takings 
FROM directors d
JOIN movies mo
	ON mo.director_id = d.director_id
JOIN movie_revenues mr
	ON mr.movie_id = mo.movie_id;
	
SELECT ac.first_name, ac.last_name, mo.movie_name
FROM actors ac
JOIN movies_actors ma 
	ON ac.actor_id = ma.actor_id
JOIN movies mo
	ON mo.movie_id = ma.movie_id
WHERE mo.movie_lang = 'English'
ORDER BY mo.movie_name;


-- The following query will join all 5 tables in my movies_database, actors, 
-- movies, directors, movie_revenue,
-- and the junction table movies_actors.
SELECT d.first_name, d.last_name, mo.movie_name, ac.first_name, ac.last_name,
mr.domestic_takings, mr.international_takings
FROM directors d
JOIN movies mo
	ON d.director_id = mo.director_id
JOIN movies_actors ma
	ON ma.movie_id = mo.movie_id
JOIN actors ac
	ON ac.actor_id = ma.actor_id
JOIN movie_revenues mr
	ON mr.movie_id = mo.movie_id
ORDER BY mo.movie_name;