-- Challenge

-- Select the american directors ordered from oldest to youngest.

SELECT DISTINCT first_name, last_name, date_of_birth FROM directors
WHERE nationality = 'American'
ORDER BY date_of_birth;

-- Return the distinct nationalities from the directors table.

SELECT DISTINCT nationality FROM directors;

-- Return the first names, last names, and date of births of the 10 youngest female actors.

SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
LIMIT 10;