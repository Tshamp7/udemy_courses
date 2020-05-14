-- Casting, converting one data type to another.

/*

Casting will allow us to turn another datatype into a string and then perform
string functions on it.

SELECT columname::DATATYPE FROM table_name;

*/

SELECT * FROM directors;

-- DOB in this table is a date datatype. 

SELECT date_of_birth::TEXT FROM director;

-- The following query will turn the dob into a text type, split it on '-', and then only return the first field, the year. 
SELECT SPLIT_PART(date_of_birth::TEXT, '-', 1) FROM directors;