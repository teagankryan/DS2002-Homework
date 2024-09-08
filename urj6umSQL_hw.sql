{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11540\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Part 1\
\
1. SELECT Name FROM country WHERE Continent = "South America\'94;\
2. SELECT Population FROM country WHERE code = 'DEU'\
3. SELECT Name from city where CountryCode = 'JPN';\
\
4. SELECT name, Population FROM country WHERE Continent = 'Africa' ORDER by Population DESC;\
5. SELECT Name, LifeExpectancy FROM country WHERE Population > 1000000 and Population < 5000000;\
6. SELECT Name FROM country \
JOIN countrylanguage on country.Code = countrylanguage.CountryCode\
WHERE countrylanguage.Language = 'French' and countrylanguage.IsOfficial = 'T';\
\
7. SELECT title from Album WHERE ArtistID = 1;\
8. SELECT FirstName, LastName, Email FROM Customer WHERE Country = 'Brazil';\
9. SELECT name FROM Playlist;\
\
10. SELECT count(*) FROM Track WHERE GenreID = 1;\
11. SELECT FirstName, LastName FROM Employee WHERE ReportsTo = 2;\
12. SELECT CustomerID, sum(Total) FROM Invoice GROUP BY customerID;\
\
Part 2 - Questions\
\
Which employee is responsible for making cookies?\
SELECT name FROM EmployeeAssignments WHERE DessertID = 1; \
\
What is the total amount of baked goods produced? \
SELECT sum(quantity) FROM Bakery;\
\
How many types of cakes are baked?\
SELECT count(DessertID) FROM DessertType where dessertID = 3;\
}