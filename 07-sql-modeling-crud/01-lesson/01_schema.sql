-- 01 SCHEMA SQL - Create a new database in DataGrip

-- Create the database and avoid error if it's already exists
CREATE DATABASE IF NOT EXISTS
    music_school;

-- Choose to use this database
USE music_school;

-- Double check you're using the correct database
SELECT DATABASE();


-- Create table rooms
CREATE TABLE  rooms (
    id INT AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (name)
);

-- CREATE TABLE define the columns and the rules for the new table.
-- AUOT_INCREMENT let MYSQL generate IDs.
-- PRIMARY KEY makes the ID unique and mandatory. In the example room name is UNIQUE.


-- Create table instruments
CREATE TABLE instruments (
    id INT AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL,
    purchase_price DECIMAL(8,2),
    acquired_on DATE,
    room_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

-- Create rooms before instruments
-- room_id and rooms.id must have the same data type
-- FOREIGN KEY connects the tables
-- REFERENCES points to the rooms(id)
-- Price and data can be NULL
-- Name and room_id can't be NULL
