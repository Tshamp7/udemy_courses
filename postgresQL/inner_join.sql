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