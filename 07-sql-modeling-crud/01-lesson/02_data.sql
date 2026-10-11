-- 02 DATA, INSERT INTO: add data and DELETE

-- Add one room
INSERT INTO rooms (name)
VALUES ('Studio A');

-- Add two more rooms
INSERT INTO rooms (name)
VALUES ('Studio B'),
       ('Practice Room');

-- Show all rooms sorted by ID
SELECT id, name
FROM rooms
ORDER BY id;

-- Find the ID before adding data
SELECT id, name
FROM rooms
WHERE name = 'Studio A';

-- Add a piano to Studio A
INSERT INTO instruments
    (name, purchase_price,
    acquired_on, room_id)
VALUES ('Piano', 18000.00,
        '2026-09-01', 1);

-- Check the instruments before updating
SELECT *
FROM instruments;

-- Update the price and change the name
UPDATE instruments
SET purchase_price = purchase_price * 1.10,
    name = 'Grand Piano'
WHERE id = 1;

-- Check the instruments before deleting
SELECT *
FROM instruments;

-- Delete the instrument with ID 1
DELETE FROM instruments
WHERE id = 1;

-- Check that the instrument was deleted
SELECT *
FROM instruments;