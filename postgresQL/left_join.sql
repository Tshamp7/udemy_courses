-- LEFT JOIN

/* 
SELECT t1.column1, t1.column2, t2.column1 FROM table1 t1
LEFT JOIN table2 t2
	ON t1.column1 = t2.column3;
*/

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name 
FROM directors d
	LEFT JOIN movies mo
		ON d.director_id = mo.director_id;
		
-- The above query will return directors with null values in the movies table.
-- This is because this is a left join. The left join will return ALL fields from
-- the first table regardless of if they have a match in the second table or not.