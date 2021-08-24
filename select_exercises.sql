use codeup_test_db;

SELECT *
FROM albums
WHERE artist = 'ABBA';

select name
from albums
where artist = 'ABBBA';

SELECT artist, release_date
FROM albums
WHERE name = 'Black in Black'

SELECT genre
FROM albums
WHERE name = 'Black in Black'

SELECT *
FROM albums
WHERE release_date = '1976';

select name from albums where release_date between 1990 and 1999;

SELECT name
FROM albums
WHERE sales < 29.0;

SELECT name
FROM albums
WHERE genre = 'rock';