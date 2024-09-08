
-- World Database
-- 1. List all countries in South America.
SELECT Name FROM country WHERE Continent = 'South America';

-- 2. Find the population of 'Germany'.
SELECT Population from country WHERE Name = 'Germany';

-- 3. Retrieve all cities in the country 'Japan'.
SELECT Name from city where CountryCode = 'JPN';

-- Medium
-- 4. Find the 3 most populated countries in the 'Africa' region.
SELECT Name, Population FROM country WHERE Region = 'Central Africa'
ORDER BY Population DESC
LIMIT 3;

-- 5. Retrieve the country and its life expectancy where the population is between 1 and 5 million.
SELECT Name, LifeExpectancy FROM country WHERE Population > 1000000 and Population < 5000000;

-- 6. List countries with an official language of 'French'.
SELECT country.Name FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language = 'French' AND countrylanguage.IsOfficial = 'T';


-- Chinook Database
-- Easy
-- 7. Retrieve all album titles by the artist 'AC/DC'.
SELECT Album.Title from Album
JOIN Artist on Album.ArtistID = Artist.ArtistID
WHERE Artist.Name = 'AC/DC';

-- 8. Find the name and email of customers located in 'Brazil'.
SELECT FirstName, LastName, Email FROM Customer WHERE Country = 'Brazil';

-- 9. List all playlists in the database.
SELECT Name FROM Playlist;

-- Medium
-- 10. Find the total number of tracks in the 'Rock' genre.
SELECT COUNT(TrackID) from Track
JOIN Genre ON Track.GenreId = Genre.GenreId
WHERE Genre.Name = 'Rock';

-- 11. List all employees who report to 'Nancy Edwards'.
SELECT FirstName, LastName FROM Employee WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' and LastName = 'Edwards');

-- 12. Calculate the total sales per customer by summing the total amount in invoices.
SELECT Customer.FirstName, Customer.LastName, Sum(Total) AS TotalSales
from Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Invoice.CustomerId;


