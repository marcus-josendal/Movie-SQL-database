CREATE TABLE actor(
actor_id int(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(40) DEFAULT 'Ukjent',
age int(11) NOT NULL,
date_of_birth DATE NOT NULL,
gender ENUM('Male', 'Female'),
PRIMARY KEY(actor_id));

CREATE TABLE film_composer(
composer_id INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(40) NOT NULL,
age smallint(4) NOT NULL,
date_of_birth DATE NOT NULL,
gender ENUM('Male', 'Female'),
PRIMARY KEY(composer_id));

CREATE TABLE film(
film_id int(11) NOT NULL AUTO_INCREMENT,
title VARCHAR(40) NOT NULL,
release_year smallint(4) NOT NULL,
age_limit smallint(3) NOT NULL,
length_minutes int(6) NOT NULL,
composer_id int(11) NOT NULL,
FOREIGN KEY (composer_id) REFERENCES film_composer (composer_id) ON DELETE CASCADE,
PRIMARY KEY(film_id));

CREATE TABLE film_actor(
actor_id INT(11) NOT NULL,
film_id INT(11) NOT NULL,
FOREIGN KEY (actor_id) REFERENCES actor (actor_id) ON DELETE CASCADE,
FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE,
PRIMARY KEY(actor_id, film_id));

CREATE TABLE director(
director_id INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(40) NOT NULL,
age smallint(4) NOT NULL,
date_of_birth DATE NOT NULL,
gender ENUM('Male', 'Female'),
PRIMARY KEY (director_id));

CREATE TABLE film_director(
director_id int(11) NOT NULL,
film_id int(11) NOT NULL,
FOREIGN KEY (director_id) REFERENCES director (director_id) ON DELETE CASCADE,
FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE,
PRIMARY KEY(director_id, film_id));

CREATE TABLE studio(
studio_id int(11) NOT NULL AUTO_INCREMENT,
studio_name VARCHAR(30) NOT NULL,
established DATE NOT NULL,
country VARCHAR(30) NOT NULL,
ceo VARCHAR(30) NOT NULL,
PRIMARY KEY(studio_id));

CREATE TABLE film_studio(
studio_id INT(11) NOT NULL,
film_id INT(11) NOT NULL,
FOREIGN KEY (studio_id) REFERENCES studio (studio_id) ON DELETE CASCADE,
FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE,
PRIMARY KEY (studio_id, film_id));





INSERT INTO film_composer
VALUES(composer_id, 'John Williams', 75, '1942-06-12', 'Male');
INSERT INTO film_composer
VALUES(composer_id, 'Hans Zimmer', 40, '1977-06-11', 'Male');
INSERT INTO film_composer
VALUES(composer_id, 'Alan Syvlesti', 55, '1952-06-12', 'Male');
INSERT INTO film_composer
VALUES(composer_id, 'Ennio Morrecone', 75, '1942-06-12', 'Male');
INSERT INTO film_composer
VALUES(composer_id, 'Junkie XL', 35, '1982-06-12', 'Male');
INSERT INTO film_composer
VALUES(composer_id, 'Jóhann Jóhannsson', 35, '1985-06-12', 'Male');
INSERT INTO film_composer
VALUES(composer_id, 'Ramin Djawadi', 40, '1970-06-12', 'Male');
INSERT INTO film_composer
VALUES(composer_id, 'Howard Shore', 61, '1952-06-12', 'Male');


INSERT INTO actor 
VALUES  (actor_id, 'Mark Hammil', 65, '1952-02-02', 'Male');
INSERT INTO actor 
VALUES  (actor_id, 'Leonardo DiCaprio', 47, '1963-03-02', 'Male');
INSERT INTO actor 
VALUES  (actor_id, 'Carrie Fisher', 68, '1957-02-02', 'Female');
INSERT INTO actor 
VALUES  (actor_id, 'Jennifer Lawrence', 29, '1989-02-04', 'Female');
INSERT INTO actor 
VALUES  (actor_id, 'Brad Pitt', 50, '1960-04-01', 'Male');
INSERT INTO actor 
VALUES  (actor_id, 'Samuel L Jackson', 65, '1952-12-12', 'Male');
INSERT INTO actor 
VALUES  (actor_id, 'Christian Bale', 45, '1960-12-12', 'Male');
INSERT INTO actor 
VALUES  (actor_id, 'Amy Adams', 50, '1952-10-10', 'Female');
INSERT INTO actor 
VALUES  (actor_id, 'Robert DiNero', 70, '1949-11-11', 'Male');
INSERT INTO actor 
VALUES  (actor_id, 'Steve Buscemi', 65, '1952-02-02', 'Male');

INSERT INTO film
VALUES(film_id, 'A New Hope', 1980, 12, 120, 1);
INSERT INTO film
VALUES(film_id, 'Pulp Fiction', 1997, 15, 125, 3);
INSERT INTO film
VALUES(film_id, 'Inception', 2008, 12, 140, 2);
INSERT INTO film
VALUES(film_id, 'Hunger Games', 2012, 12, 128, 3);
INSERT INTO film
VALUES(film_id, 'The Dark Knight Rises', 2008, 15, 160, 2);
INSERT INTO film
VALUES(film_id, 'The Hateful Eight', 1992, 15, 192, 4);
INSERT INTO film
VALUES(film_id, 'Deadpool', 2016, 18, 125, 5);
INSERT INTO film
VALUES(film_id, 'Arrival', 2016, 15, 150, 6);
INSERT INTO film
VALUES(film_id, 'Indiana Jones', 1985, 15, 125, 1);
INSERT INTO film
VALUES(film_id, 'Schindlers list', 1992, 15, 192, 1);
INSERT INTO film
VALUES(film_id, 'Se7en', 1992, 15, 192, 5);
INSERT INTO film
VALUES(film_id, 'Goodfellas', 1993, 18, 192, 3);
INSERT INTO film
VALUES(film_id, 'Iron Man', 2007, 12, 140, 7);
INSERT INTO film
VALUES(film_id, 'Lord Of The Rings', 2001, 12, 220, 8);
INSERT INTO film
VALUES(film_id, 'Wonder Woman', 2017, 12, 160, 2);


INSERT INTO film_actor(actor_id, film_id)
VALUES (1, 1), (2, 3), (3, 1), (4, 4), (5, 11), (6, 2), (7,5), (8,8), (9,12), (10, 12);


INSERT INTO director
VALUES(director_id, 'George Lucas', 67, '1945-05-12', 'Male');
INSERT INTO director
VALUES(director_id, 'Quintion Tarantiono', 59, '1951-07-13', 'Male');
INSERT INTO director
VALUES(director_id, 'David Fincher', 58, '1949-11-28', 'Male');
INSERT INTO director
VALUES(director_id, 'Christopher Nolan', 49, '1969-12-12', 'Male');
INSERT INTO director
VALUES(director_id, 'Peter Jackson', 55, '1962-09-27', 'Male');
INSERT INTO director
VALUES(director_id, 'Steven Spielberg', 69, '1949-09-27', 'Male');
INSERT INTO director
VALUES(director_id, 'Denis Villeneuve', 46, '1960-10-19', 'Male');
INSERT INTO director
VALUES(director_id, 'Patty Jenkins', 50, '1956-01-18', 'Female');
INSERT INTO director
VALUES(director_id, 'Jon Favreau', 49, '1965-09-27', 'Male');

INSERT INTO film_director(director_id, film_id)
VALUES(1,1), (2, 2), (2,6), (3,11), (4,3), (5,14), (7, 8), (8,15), (9,13);

INSERT INTO studio
VALUES(studio_id, '20th Century Fox', '1946-08-10', 'USA', 'Rupert Murdoch');
INSERT INTO studio
VALUES(studio_id, 'Weinsten', '1960-08-10', 'USA', 'Bob Weinstein');
INSERT INTO studio
VALUES(studio_id, 'WingNut Films', '1995-08-10', 'New Zeland', 'Peter Jackson');
INSERT INTO studio
VALUES(studio_id, 'Marvel Comics', '1960-08-10', 'USA', 'Stan Lee');
INSERT INTO studio
VALUES(studio_id, 'Syncopy', '1946-08-10', 'USA', 'Christopher Nolan');

INSERT INTO film_studio(studio_id, film_id)
VALUES(1, 1), (2,2), (2,6), (5,3), (5,4), (5,5), (1,6), (1,7), (1,8), (1,9), (1, 10), (1, 11), (2, 12), (3,14), (4, 13);





SELECT *
FROM director
JOIN film_director ON director.director_id = film_director.director_id
JOIN film ON film.film_id = film_director.film_id;

SELECT *
from actor;





















