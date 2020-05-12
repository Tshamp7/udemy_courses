-- RIGHT JOIN

-- Same as a LEFT join, but opposite! This will return all data from table 2, 
-- even if there is no match in table1. 

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name
FROM directors d
	RIGHT JOIN movies mo ON d.director_id = mo.director_id;

-- Typically, right joins are not used that frequently, as they are really the exact same
-- as a left join, with the table1 and table2 tables switched. 