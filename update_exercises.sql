use codeup_test_db;

SELECT 'These are my albums' AS 'Info';
select * from albums;

SELECT 'release dates less than 1980' AS 'Info';
SELECT * FROM albums WHERE release_date <'1980';

SELECT 'The artist abba' AS 'Info';
SELECT * FROM albums WHERE albums.artist= 'ABBA';


UPDATE albums
SET sales = (sales * 10)

UPDATE albums
SET release_date = '1902'
where release_date < '1980';

UPDATE albums
SET artist = 'ozzy'
where artist = 'ABBA';
