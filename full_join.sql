-- FULL JOIN aka FULL OUTER JOIN
-- Returns ALL data from both tables whether or not there is a match. 

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name 
FROM movies mo
	FULL JOIN directors d
		ON d.director_id = mo.director_id;

