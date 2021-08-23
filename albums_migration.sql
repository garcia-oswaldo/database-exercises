USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(200) not null ,
                        name  VARCHAR(300) NOT NULL,
                        release_date Year,
                        sales float,
                        genre VARCHAR (100),
                        PRIMARY KEY (id)
);
show tables;
DESCRIBE albums;