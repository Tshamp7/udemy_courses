/* 
INNER JOIN

SELECT table1.column1, table1.column2, table2.column1 FROM table1
INNER JOIN table2.column1
	ON table1.column3 = table2.column3;
	*/
	
SELECT * FROM directors;

SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name 
FROM directors
INNER JOIN movies
	ON directors.director_id = movies.director_id
WHERE movies.movie_lang = 'Japanese'
ORDER BY movies.movie_length;
	/*
	
	Note this query does not list the director 'christopher nolan' as he has no
	movies listed on our movies list. It does not matter which table is specified as table1
	and which table is specified as table 2.
	
	*/
	
/*
There is also a shorter way to write your join query using aliases for the table names.

SELECT t1.column1, t1.column2, t2.column1 FROM table1 t1
JOIN table2 t2 ON t1.column3 =t2.column3;
*/

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name 
FROM directors d
INNER JOIN movies mo
	ON d.director_id = mo.director_id
WHERE mo.movie_lang = 'Japanese'
ORDER BY mo.movie_length;

-- The following will return the movie name and domestic and international takings for each film.
-- NOTE JOIN and INNER JOIN are synonymous as INNER JOIN is typically the most common join
-- used in sql.

SELECT mo.movie_name, mr.domestic_takings, mr.international_takings FROM movies mo
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
ORDER BY mr.domestic_takings;

-- The following syntax 'USING' will ONLY work when the joining columns have the same name.
-- This will have the same output as the previous example. 
/*
SELECT t1.column1, t1.column2, t2.column1 FROM table1 t1
JOIN table2 t2 USING (column3);
*/

SELECT mo.movie_name, mr.domestic_takings FROM movies mo
JOIN movie_revenues mr USING (movie_id);