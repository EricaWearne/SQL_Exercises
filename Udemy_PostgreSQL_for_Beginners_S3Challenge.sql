-- Database: owners_pets

-- DROP DATABASE owners_pets;

CREATE DATABASE owners_pets
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Australia.1252'
    LC_CTYPE = 'English_Australia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
-- create owners table	
	
	CREATE TABLE owners(
	
		id INT PRIMARY KEY,
		first_name VARCHAR(30),
		last_name VARCHAR(30),
		city VARCHAR(30),
		state CHAR(2)	
	);
	
	SELECT * FROM owners;
	
-- create pets table (with foreign key)
	
	CREATE TABLE pets(
	
		id INT PRIMARY KEY,
		species VARCHAR(30),
		full_name VARCHAR(30),
		age INT,
		owner_id INT	
	);
	
	SELECT * FROM pets;
	
	DROP TABLE pets;
	
	CREATE TABLE pets(
	
		id INT PRIMARY KEY,
		species VARCHAR(30),
		full_name VARCHAR(30),
		age INT,
		owner_id INT REFERENCES owners (id)
	);
	
	SELECT * FROM pets;

-- add an email column to the owners table

ALTER TABLE owners
ADD COLUMN email VARCHAR(50) UNIQUE;

SELECT * FROM owners;

-- change the last_name in owners table to VARCHAR(50)

ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(50);

SELECT * FROM owners;