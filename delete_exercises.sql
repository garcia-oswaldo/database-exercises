use codeup_test_db;
# -- released albums after 1991 verified deleted
# SELECT * FROM albums WHERE release_date > '1991';
# -- verify that disco is dead
# SELECT * FROM albums WHERE albums.genre = 'disco';
# -- verify whitney houston has been deleted
# select * from albums Where artist = 'Whitney Houston'

-- released albums after 1991 verified deleted
Delete * FROM albums WHERE release_date > '1991';
-- verify that disco is dead
Delete * FROM albums WHERE genre = 'disco';
-- verify whitney houston has been deleted
Delete* from albums Where artist = 'Whitney Houston'

select * FROM albums WHERE release_date > '1991';
select * FROM albums WHERE genre = 'disco';
select * from albums Where artist = 'Whitney Houston'