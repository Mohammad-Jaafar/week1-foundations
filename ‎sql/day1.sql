SELECT title FROM movies;
SELECT director FROM movies; 
SELECT title, director FROM movies; 
SELECT title, year FROM movies; 
SELECT * FROM movies; 

SELECT id, title FROM movies 
WHERE id = 6;

SELECT id, title FROM movies 
WHERE id = 6;

SELECT title, year FROM movies
WHERE year < 2000 OR year > 2010;

SELECT title, year FROM movies
WHERE year <= 2003;


SELECT title, director FROM movies 
WHERE title LIKE "Toy Story%";

SELECT title, director FROM movies 
WHERE director = "John Lasseter";

SELECT title, director FROM movies 
WHERE director != "John Lasseter";

SELECT * FROM movies 
WHERE title LIKE "WALL-_";

SELECT DISTINCT director FROM movies
ORDER BY director ASC;

SELECT title, year FROM movies
ORDER BY year DESC
LIMIT 4;

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5;

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;

SELECT city, population FROM north_american_cities
WHERE country = "Canada";

SELECT city, latitude FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;

SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

SELECT city, population FROM north_american_cities
WHERE country LIKE "Mexico"
ORDER BY population DESC
LIMIT 2;

SELECT city, population FROM north_american_cities
WHERE country LIKE "United States"
ORDER BY population DESC
LIMIT 2 OFFSET 2;

SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, rating * 10 AS rating_percent
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, year
FROM movies
WHERE year % 2 = 0;

SELECT MAX(years_employed) as Max_years_employed
FROM employees;

SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;

SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;

SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

SELECT role, COUNT(*)
FROM employees
GROUP BY role;

SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";