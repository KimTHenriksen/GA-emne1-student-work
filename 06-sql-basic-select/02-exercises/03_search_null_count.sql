-- TEXT SEARCH WITH LIKE

-- Task 7.1 Country name with a specific start

-- Get country that begins with "B". Sort in alphabetical order.
SELECT Name
FROM country
WHERE Name Like 'B%'
ORDER BY Name;

-- Sort on names beginning with "Br".
SELECT Name
FROM country
WHERE Name Like 'Br%'
ORDER BY Name;

-- The result with 'Br%' gets smaller because there is only three countries in the list starting with "Br".


-- Task 7.2 The end or middle of the name

-- Get countries with name ending with "stan".
SELECT Name
FROM country
WHERE Name Like '%stan'
ORDER BY Name;

-- Get countries with the letters "is" in the name.
SELECT Name
FROM country
WHERE Name Like '%is%'
ORDER BY Name;

-- '%stan' means there can be anything before "stan".
-- '%is%' means there can be anything before and after "is"


-- Task 7.3 Exactly one character

-- Get Name from "country", that has the letter "a" as the second letter.
SELECT Name
FROM country
WHERE Name Like '_a%'
ORDER BY Name;

-- Get country names that have exactly four characters.
SELECT Name
FROM country
WHERE Name Like '____'
ORDER BY Name;

-- % means there can be characters before or after, depending on where it is placed.
-- _ represents one character, so the numbers of "_" controls the number of characters.

