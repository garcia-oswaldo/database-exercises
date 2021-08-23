use codeup_test_db;

# insert into albums (artist, name, release_date, sales, genre)
# values ('ACDC', 'Black in Black', '1980', 29.9, 'Hard Rock'),
# ('MeatLoaf','Bat our of Hell', '1977', 21.7, 'Hard Rock'),
# ('Eagles','Eagles Greatest hits', '1976', 41.2, 'Soft Rock'),
# ('Shania Twain', 'Come on Over', '1997', 29.8, 'Country pop'),
# ('ABBA', 'Gold: Greatest Hits', '1992', 23.0, 'POP Disco');

# INSERT INTO quotes (author_first_name, author_last_name, content)
# VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.');
# INSERT INTO quotes (author_first_name, author_last_name, content)
# VALUES ('Douglas', 'Adams',    'Time is an illusion. Lunchtime doubly so.'),
#        ('Mark',    'Twain',    'Clothes make the man. Naked people have little or no influence on society.'),
#        ('Kurt',    'Vonnegut', 'The universe is a big place, perhaps the biggest.');
# INSERT INTO quotes (author_first_name, author_last_name, content)
# VALUES ('Douglas', 'Adams', 'Don''t Panic.');
# SELECT author_last_name, content FROM quotes;
# SELECT * FROM albums;
# SELECT * FROM quotes WHERE author_last_name = 'Adams';
SELECT * FROM quotes WHERE id = 5;
truncate albums
