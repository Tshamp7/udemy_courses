
CREATE DATABASE owners_pets
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	CREATE TABLE owners (
		id INT PRIMARY KEY,
		first_name VARCHAR(30),
		last_name VARCHAR(30),
		city VARCHAR(30),
		state CHAR(2),
		email VARCHAR(30)
	);
	
	DROP TABLE owners;
	
	SELECT * FROM owners;
	
	CREATE TABLE pets (
		
	
	);
	
	
	
	
	
	
	
INSERT INTO owners (first_name, last_name, city, state, email)
	VALUES ('Samuel', 'Smith', 'Boston', 'MA', 'samsmith@gmail.com'),
	('Emma', 'Johnson', 'Seattle', 'WA', 'emjohnson@gmail.com'),
	('John', 'Oliver', 'New York', 'NY', 'johnoliver@gmail.com'),
	('Olivia', 'Brown', 'San Francisco', 'CA', 'oliviabrown@gmail.com'),
	('Simon', 'Smith', 'Dallas', 'TX', 'sismith@gmail.com'),
	(null, 'Maxwell', 'San Jose', 'CA', 'lordmaxwell@gmail.com');
	
	SELECT * FROM owners;
	
INSERT INTO pets (species, full_name, age, owner_id)
	VALUES ('Dog', 'Rex', 6, 1),
	('Rabbit', 'Fluffy', 2, 5),
	('Cat', 'Tom', 8, 2),
	('Mouse', 'Jerry', 2, 2),
	('Dog', 'Biggles', 4, 1),
	('Tortoise', 'Squirtle', 42, 3);
	
SELECT * FROM pets;