SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

SELECT winner
FROM nobel
WHERE yr >= 2000 AND subject = 'Peace'

SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature' 
AND yr >= 1980 AND yr <= 1989

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter')


SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND subject = 'Physics'
OR yr = 1984 AND subject = 'Chemistry'

SELECT * 
FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')

SELECT * 
FROM nobel 
WHERE subject = 'Medicine' AND yr < 1910 
union 
SELECT * 
FROM nobel 
WHERE subject = 'Literature' AND yr >= 2004

SELECT * 
FROM nobel 
WHERE winner = 'PETER GRüNBERG'

SELECT *
FROM nobel
WHERE winner = 'EUGENE O\'NEILL'

SELECT winner, subject, subject IN ('Chemistry', 'Physics')
FROM nobel
WHERE yr = 1984 
ORDER BY subject IN ('Chemistry', 'Physics')  --Couldn't get this one