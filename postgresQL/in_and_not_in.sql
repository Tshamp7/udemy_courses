-- Using IN and NOT IN

/* 
SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 IN ('value1', 'value2', 'value3');

SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 NOT IN ('value1', 'value2', 'value3');

*/

SELECT first_name, last_name FROM actors
WHERE first_name = 'Bruce';

-- Using IN allows you to select depending on whether or not something appears in a list.

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John');

-- It can also allow you to select something if it is NOT in a list.

SELECT first_name, last_name FROM actors
WHERE first_name NOT IN ('Bruce', 'John', 'Peter');

-- IN and NOT IN can also be used with INT's

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id IN (2,3,4,5,6,8);

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id NOT IN (2,3,4,5,6,8);