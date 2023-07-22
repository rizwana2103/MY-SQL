CREATE DATABASE CINEMA;
USE CINEMA;

-- Create the directors table
CREATE TABLE directors (
    director_id VARCHAR(50) PRIMARY KEY,
    director_name VARCHAR(255)
);
-- Create the movies table
CREATE TABLE movies (
    movie_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    director_id VARCHAR(50),foreign key(director_id) references directors(director_id)
);
-- Create the genres table
CREATE TABLE genres (
    genre_id VARCHAR(50) PRIMARY KEY,
    genre_name VARCHAR(255)
);
-- Create the movie_genres table
CREATE TABLE movie_genres (
    movie_id VARCHAR(50),
    genre_id VARCHAR(50),
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- Insert values into the movies table
INSERT INTO movies (movie_id, title, release_year, director_id)
VALUES ('m1', 'Bahubali',2015 , 'd1'),
       ('m2', 'KGF', 2018, 'd2'),
       ('m3', 'Maharshi', 2019, 'd3'),
        ('m4', 'Fidaa', 2017, 'd4'),
        ('m5', 'RRR', 2022, 'd5');
        SELECT * FROM movies;
        -- Insert values into the directors table
INSERT INTO directors (director_id, director_name)
VALUES ('d1', 'Rajamouli'),
       ('d2', 'Neel'),
       ('d3', 'Vamshi'),
       ('d4', 'Sekhar'),
       ('d5', 'Rajamouli');
       SELECT * FROM directors;
       -- Insert values into the genres table
INSERT INTO genres (genre_id, genre_name)
VALUES ('g1', 'war-action'),
       ('g2', 'action'),
       ('g3', 'action drama'),
       ('g4', 'romance drama'),
       ('g5', 'action drama');
       SELECT * FROM genres;
       -- Insert values into the movie_genres table
INSERT INTO movie_genres (movie_id, genre_id)
VALUES ('m1', 'g1'),
       ('m2', 'g2'),
       ('m3', 'g3'),
       ('m4', 'g4'),
       ('m5', 'g2');
       SELECT * FROM movie_genres;
       -- Query to retrieve the movie title and the corresponding director name for all movies:
       SELECT m.title, d.director_name
FROM movies m
JOIN directors d ON m.director_id = d.director_id;
-- Query to retrieve the movie title, release year, and the corresponding director name (if available) for all movies:
SELECT m.title, m.release_year, d.director_name
FROM movies m
LEFT JOIN directors d ON m.director_id = d.director_id;
-- Query to retrieve the director name and the titles of the movies they have directed (if available) for all directors:
SELECT d.director_name, m.title
FROM directors d
LEFT JOIN movies m ON d.director_id = m.director_id;
-- Query to retrieve the movie title, release year, and the corresponding director name (if available) for all movies and directors:
SELECT m.title, m.release_year, d.director_name
FROM movies m
LEFT JOIN directors d ON m.director_id = d.director_id;
-- Query to retrieve the movie title and genre name for all combinations of movies and genres:
SELECT m.title, g.genre_name
FROM movies m
JOIN movie_genres mg ON m.movie_id = mg.movie_id
JOIN genres g ON mg.genre_id = g.genre_id;





       
	 
       
        






     
