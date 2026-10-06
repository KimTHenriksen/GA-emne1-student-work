-- 2 DATABASE CONCEPTS

-- Task 2.1 What do the various parts do

-- Database: Data stored in and organized into tables, rows, columns and keys. Ex. "World"
-- DBMS: DataBase Management System. Program to organize and administrate data in the database. Ex. "MySQL"
-- SQL: The language we use to communicate with a relational database.
-- DataGrip: The client/tool we use to write and run SQL queries to the database.
-- Docker: Runs MySQL in a container for us.


-- Task 2.2 Table row and column

-- A row in "city" represents a city and the information about it.

-- The columns in "city":
-- Name: Name of the city
-- CountryCode: Code of the country the city is in
-- District: The district the city is located in
-- Population: Number of people living in the city

-- Datatypes:
-- ID: int
-- Name: char(35)
-- Population: int

-- Name and Population have different datatypes because Name contains text, while Population contains an integer.
-- The integer datatype can be used to calculate and compare numbers.


-- Task 2.3 Keys and relationships

-- Primary key in city: ID
-- Primary key in country: CODE

-- city.CountryCode refers to country.Code to show which country the city belongs to.
-- Multiple cities can have the same CountryCode because they are in the same country.

-- A primary key needs to be unique, so a city name is not a good choice.
-- Several cities can have the same name.


-- 2 SELECT COLUMNS WITH SELECT

-- Task 3.1 Explore the country table

-- Get all columns from "country":
SELECT *
FROM country;

-- Ex. Row 1
-- Code: ABW
-- Name: Aruba
-- Continent: North America
-- Population: 103000

-- * selects all columns in the query.


-- Task 3.2 A brief country overview

-- Get Code, Name and Continent from "country".
-- The columns are displayed the same order as in the SELECT statement.
SELECT Code, Name, Continent
FROM country;


-- Task 3.3 Other information about the cities

-- Get Name, CountryCode and District from "city".
SELECT Name, CountryCode, District
FROM city;

-- SELECT * shows all columns, including ID and Population.
-- SELECT does not change the data, it only changes what is displayed.



