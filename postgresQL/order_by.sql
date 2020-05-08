--Ordering the results of the query using ORDER BY

/*
SELECT columname1, columname2 FROM table
ORDER BY columname3;
*/

SELECT * FROM actors;

-- The following query will order the actors names by the first name alphabetically.

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name;

-- We can also use ASC/DESC to change the ordering from first to last / last to first.
-- The following query will order alphabetically from Z to A.
-- Default is A to Z for alphabetical chars.

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name DESC;

-- Order by will also work well for ordering INTs.

SELECT first_name, last_name, date_of_birth, actor_id FROM actors
ORDER BY actor_id DESC;