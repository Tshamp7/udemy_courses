-- LEFT, RIGHT, and REVERSE string functions
-- Takes a string and returns the number of chars from the left or right hand side
-- the number being the number specified as the INT parameter. 
/*
SELECT LEFT('string'), int)

SELECT RIGHT('string'), INT)

SELECT LEFT/RIGHT (columname, INT)

A negative INT can be used as well, in which case it will subtract that many letters
from the END of the string with left, and subtract that many letters from the 
beginning of the string when using RIGHT. 
*/

-- The following query will select the first two letters in each actors first name. 
SELECT LEFT(first_name, 2) FROM actors;

-- Right will return the last two letters of each name in this instance. 
SELECT RIGHT(first_name, 2) FROM actors;

-- Reverse will reverse the string. 
SELECT REVERSE(first_name) FROM actors;

-- None of these operations will modify the original table data. 
