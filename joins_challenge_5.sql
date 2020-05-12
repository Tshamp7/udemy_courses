-- Joins challenge 5

-- Intersect first name, last name and dob columns in the directors and actors tables.

SELECT first_name, last_name, date_of_birth FROM directors
INTERSECT
SELECT first_name, last_name, date_of_birth FROM actors;

-- Retrieve the first names of male actors unless they have the same first name
-- as any british actors.

SELECT first_name FROM actors
WHERE first_name IS NOT NULL
EXCEPT
SELECT first_name FROM directors
WHERE nationality = 'British';