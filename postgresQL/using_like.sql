-- using LIKE with % and _

/* 

SELECT columname FROM table
WHERE columname LIKE '%pattern%';

SELECT columname FROM table
WHERE columname LIKE '_pattern_';

*/

-- The % looks for any number of characters after the character of interest
SELECT * FROM actors
WHERE first_name LIKE 'P%';

--The % can be used on either side of a character as well
SELECT * FROM actors
WHERE first_name LIKE '%p%';


--The underscore denotes any character, but only the number of characters as there are underscores.
SELECT * FROM actors
WHERE first_name LIKE 'P___';