-- Using column name aliases

/* 
SELECT columname AS new_columnname FROM tablename
*/

-- This....

SELECT last_name FROM directors;

-- Can be turned into this. This does not alter the original column name in the table.
-- This will simply make the column name in the search results appear as the name specified by the AS statement.

SELECT last_name AS surname FROM directors;

-- You cannot reference the 'surname' column within the query unless you are using an ORDER BY clause.

-- This will work...
SELECT last_name AS surname FROM directors
WHERE last_name LIKE 'A%'
ORDER BY surname

-- This will not. This is because of the order in which SQL is executed. 

SELECT last_name AS surname FROM directors
WHERE surname LIKE 'A%'
ORDER BY surname;