-- REPLACE function

/* 
SELECT REPLACE('source_string', 'old_string', 'new_string')

SELECT REPLACE('columname', 'old_string', 'new_string')

UPDATE tablename
SELECT REPLACE('columname', 'old_string', 'new_string')
WHERE columname = 'value';
*/

SELECT REPLACE(' a cat plays with a cat', 'cat', 'dog');

-- The above query will return 'a dog plays with another dog'