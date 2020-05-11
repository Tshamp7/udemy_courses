-- Distinct will allow you to select distinct column name values from a table. 
-- This will eliminate duplicates.

-- SELECT DISTINCT columname FROM tablename;

-- This will return only distinct movie_language values from the table with no repeats.
SELECT DISTINCT movie_lang FROM movies
ORDER BY movie_lang;

-- This will return distinct combinations of these two columns.
-- There may be repeats of elements within a column, but the combinations will be unique. 
SELECT DISTINCT movie_lang, age_certificate FROM movies
ORDER BY movie_lang;