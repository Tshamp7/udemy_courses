-- Database: owners_pets

-- DROP DATABASE owners_pets;

CREATE DATABASE owners_pets
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	
CREATE TABLE owners_pets (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL,
	state CHAR(2) NOT NULL
);

CREATE TABLE pets (
	id SERIAL PRIMARY KEY,
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT NOT NULL,
	owner_id INT REFERENCES owners_pets (id)
);

ALTER TABLE owners_pets
	ADD COLUMN email VARCHAR(50) UNIQUE,
	ALTER COLUMN last_name TYPE VARCHAR(50);
	
SELECT * FROM owners_pets;