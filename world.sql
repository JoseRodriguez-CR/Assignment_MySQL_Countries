SELECT * /*Run this command line to see the data*/
FROM countries;

/*Querie #1*/
SELECT countries.name AS Name, languages.language as Language, languages.percentage AS Percentage
FROM countries JOIN languages ON countries.id = languages.country_id
WHERE languages.language = "Slovene"
ORDER BY languages.percentage DESC;

/*Querie #2*/
SELECT countries.name AS Country_Name, COUNT(cities.name) AS Cities
FROM countries LEFT JOIN cities ON countries.id = cities.country_id
GROUP BY countries.name
ORDER BY cities DESC;

SELECT * /*Run this command line to see the data*/
FROM cities;

/*Querie #3*/
SELECT id  /*Run this command line to see the data*/
FROM countries 
WHERE countries.name = "Mexico";  /*id gotten is 136*/

SELECT name, population, country_id
FROM cities
/*WHERE countries.name = 'Mexico' AND cities.population > 500000*/
WHERE cities.country_id = 136 AND cities.population > 500000
ORDER BY population DESC;

SELECT * /*Run this command line to see the data*/
FROM languages;
SELECT *
FROM countries;

/*Querie #4*/
SELECT languages.language AS Language, countries.name as Country_Name, languages.percentage AS Percentage
FROM languages LEFT JOIN  countries ON languages.country_id = countries.id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

SELECT * /*Run this command line to see the data*/
FROM countries;

/*Querie #5*/
SELECT name AS Country_Name, surface_area AS Surface_Area, population AS Population
FROM countries
WHERE surface_area < 501 AND population > 100000;

/*Querie #6*/
SELECT name AS Country_Name, government_form AS Government_Form, capital AS Capital, life_expectancy as Life_Expectancy
FROM countries
WHERE government_form = 'constitutional monarchy' AND capital > 200 AND life_expectancy > 75;

SELECT * /*Run this command line to see the data*/
FROM countries;
SELECT * /*Run this command line to see the data*/
FROM cities;

/*Querie #7*/
SELECT countries.name AS Country_Name, cities.name AS City_Name, district AS District, cities.population as Population
FROM countries JOIN cities ON countries.id = cities.country_id
WHERE cities.district = 'Buenos Aires' AND cities.population > 500000;


/*Querie #8*/
SELECT countries.region AS Region, COUNT(countries.name) AS Countries
FROM countries
GROUP BY countries.region
ORDER BY countries DESC;


