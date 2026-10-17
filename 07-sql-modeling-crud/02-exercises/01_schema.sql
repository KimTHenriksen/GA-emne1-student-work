-- TASK 2.1 FIND THE TABLES

-- areas:
-- id
-- name

-- A row in areas represents one department.


-- animals:
-- id
-- name
-- species
-- weight
-- admitted_on
-- area_id

-- A row in animals represents one animal.


-- TASK 2.2 SELECT DATA TYPES

-- name: VARCHAR(40)
-- species: VARCHAR(20)
-- weight: DECIMAL(5,2)
-- admitted_on: DATE

-- weight should use DECIMAL instead of INT,
-- because animals can weigh 3.90 for example

-- Unknown weight should be NULL instead of 0,
-- because 0 is a registered value.

-- weight and admitted_on can be NULL
-- because the values may be unknown

-- Area name, animal name, species and area_id must have a value (NOT NULL).
-- Areas name must be UNIQUE


-- TASK 2.3 PLACE THE KEYS

-- Both tables use id as PRIMARY KEY because each record need a unique ID
-- animals.area.id is a FOREIGN KEY that refers to areas.id
-- We use area_id for each animal instead of a list of animal IDs in areas


-- TASK 2.4 Draw the relationship

-- An area can have 0 or many animals.
-- An animal must have one area.


-- TASK 3.1 SELECT A DATABASE

CREATE DATABASE IF NOT EXISTS animal_shelter_practice;

USE animal_shelter_practice;

SELECT DATABASE();


-- TASK 3.2 CREATE AREAS TABLE

CREATE TABLE areas (
    id INT AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (name)
);


-- TASK 3.3 CREATE THE ANIMAL TABLE

CREATE TABLE animals (
  id INT AUTO_INCREMENT,
  name VARCHAR(40) NOT NULL,
  species VARCHAR(20) NOT NULL,
  weight DECIMAL(5,2),
  admitted_on DATE,
  area_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (area_id) REFERENCES areas(id)
);


-- TASK 3.4 CHECK THE STRUCTURE

-- areas must be created before animals because animals refers to areas.id
-- Both columns need compatible data types so the FOREIGN KEY works.