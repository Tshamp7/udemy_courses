-- Joins challenge 4

-- Select the first names, last names, and dates of birth from directors and actors
-- order the results by date of birth.

SELECT ac.first_name, ac.last_name, ac.date_of_birth FROM actors ac
UNION ALL
SELECT dr.first_name, dr.last_name, dr.date_of_birth FROM directors dr
ORDER BY date_of_birth;

-- Select the first and last names of all directors and actors born in the 1960s.
-- Order the results by last name.

SELECT ac.first_name, ac.last_name, ac.date_of_birth FROM actors ac
UNION ALL
SELECT dr.first_name, dr.last_name, dr.date_of_birth FROM directors dr
WHERE date_of_birth BETWEEN '1960-01-01' AND '1969-12-31'
ORDER BY last_name;