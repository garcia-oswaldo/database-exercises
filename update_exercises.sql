use codeup_test_db;

# select * from albums;
#
SELECT * FROM albums WHERE release_date <'1980';
# SELECT * FROM albums WHERE albums.artist= 'ABBA';

#
# UPDATE albums
# SET sales = (sales * 10)

UPDATE albums
SET release_date = '1902'
where release_date < '1980';

UPDATE albums
SET artist = 'ozzy'
where id= 3;
