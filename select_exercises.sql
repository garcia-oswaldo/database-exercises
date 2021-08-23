use codeup_test_db;

SELECT * FROM albums WHERE artist = 'ABBA';
SELECT artist, release_date
    FROM albums
WHERE name = 'Black in Black'

SELECT genre
FROM albums
WHERE name = 'Black in Black'

SELECT * FROM albums WHERE release_date = '1976';

SELECT * FROM albums WHERE sales < 29.0;

SELECT * FROM albums WHERE genre = 'Soft Rock';