-- Database: test

-- DROP DATABASE test;

CREATE DATABASE test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
/*	
	INSERT INTO (column1, column2, column3)
	VALUES ('value1', 'value2', 'value3')
	
	*/
	
	INSERT INTO examples (first_name, last_name, email, nationality, age)
	VALUES ('David', 'Mitchell', 'dmitch@gmail.com', 'GBR', 43);
	
	INSERT INTO examples (first_name, last_name, email, nationality, age)
	VALUES ('Emily', 'Watson', 'ewatson@gmail.com', 'USA', 29),
	('Theo', 'Scott', 'tscott@gmail.com', 'AUS', 33),
	('Emily', 'Smith', 'esmith@gmail.com', 'GBR', 29),
	('Jim', 'Burr', 'Jburr@gmail.com', 'USA', 54);
	
	SELECT * FROM examples;
	
-- update data already in a table

/* 
UPDATE tablename
SET columname = 'newvalue'
WHERE columname = 'value';
*/

	UPDATE examples 
	SET email = 'davidmitchell@gmail.com'
	WHERE example_id = 1;
	
	SELECT * FROM examples;
	
-- can also update several items at once using comma separation

	UPDATE examples
	SET nationality = 'CAN'
	WHERE nationality = 'USA';
	
	SELECT * FROM examples;
	
	UPDATE examples
	SET first_name = 'James', age = 55
	WHERE example_id = 5;
	
	SELECT * FROM examples;


-- delete data from a table

/* 
DELETE FROM tablename
WHERE columname = 'value'
*/

	DELETE FROM examples
	WHERE example_id = 2; 
	
	SELECT * FROM examples;
	
	DELETE FROM examples
	WHERE nationality = 'GBR';
	
	SELECT * FROM examples;
-- delete all data	

	DELETE FROM examples;
	
	SELECT * FROM examples;    