-- String upper and lowercase functions

/*
SELECT UPPER('string');
 - returns queried stirng values as all lower case
SELECT LOWER('string');
 - returns queried string values as all upper case
SELECT UPPER(columname) FROM tablename;

SELECT LOWER(columname) FROM tablename;
*/


-- The following query will NOT modify the data in the original table. 

SELECT first_name, UPPER(last_name) AS last_name FROM actors;

SELECT first_name, LOWER(last_name) AS last_name FROM actors;


-- INITCAP, this will capitalize the first letter of each word in the queried string or column. 

SELECT INITCAP(first_name) FROM actors;