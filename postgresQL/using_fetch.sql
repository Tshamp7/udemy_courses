
/* 
SELECT column1 from tablename
FETCH FIRST 1 ROW ONLY;
*/

-- This will return the first row only from the movies table. 
SELECT movie_id, movie_name FROM movies
FETCH FIRST 1 ROW ONLY;

-- This syntax will also work...where the 1 has been removed.
SELECT movie_id, movie_name FROM movies
FETCH FIRST 1 ROW ONLY;

-- This will return the first 10 rows.
SELECT movie_id, movie_name FROM movies
FETCH FIRST 10 ROW ONLY;

-- We can also use offset with fetch; OFFSET must be listed befor the fetch statement.
SELECT movie_id, movie_name FROM movies
OFFSET 8
FETCH FIRST 10 ROW ONLY;
