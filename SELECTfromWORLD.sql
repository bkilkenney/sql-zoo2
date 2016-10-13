SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population>200000000

SELECT name, GDP/population
FROM world
WHERE population >= 200000000

SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

SELECT name
FROM world
WHERE name LIKE '%United%'

SELECT name, population,area
FROM world
WHERE population > 250000000 OR area > 3000000

SELECT name, population,area
FROM world
WHERE population > 250000000 XOR area > 3000000

SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America'

SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp > 1000000000000

SELECT name, continent,
       CASE WHEN continent='Oceania' THEN 'Australasia'
            ELSE continent END
FROM world
WHERE name LIKE 'N%'  --Incorrect, took the site's example and substituted the parameters in the question but didn't work


SELECT name,
CASE WHEN continent = 'Europe' OR continent = 'Asia' THEN 'Eurasia'
      WHEN continent LIKE '%america%' OR continent = 'Caribbean' THEN 'America'
      ELSE continent END
FROM world
WHERE name LIKE 'a%' or name LIKE 'b%'


SELECT name, continent,tld
  FROM world
WHERE tld IN ('.ag','.ba','.bb','.ca','.cn','.nz','.ru','.tr','.uk')
ORDER BY name asc