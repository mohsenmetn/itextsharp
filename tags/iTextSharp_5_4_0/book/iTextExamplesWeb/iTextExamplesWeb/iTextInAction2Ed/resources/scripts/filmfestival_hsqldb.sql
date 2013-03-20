DROP TABLE FILM_MOVIETITLE IF EXISTS;
CREATE TABLE FILM_MOVIETITLE(ID INTEGER NOT NULL PRIMARY KEY,TITLE VARCHAR(120) NOT NULL,ORIGINAL_TITLE VARCHAR(120) DEFAULT NULL,IMDB VARCHAR(7) NOT NULL,YEAR INTEGER NOT NULL,DURATION INTEGER NOT NULL);
DROP TABLE FILM_DIRECTOR IF EXISTS;
CREATE TABLE FILM_DIRECTOR(ID INTEGER NOT NULL PRIMARY KEY,NAME VARCHAR(60) NOT NULL,GIVEN_NAME VARCHAR(60) NOT NULL);
DROP TABLE FILM_MOVIE_DIRECTOR IF EXISTS;
CREATE TABLE FILM_MOVIE_DIRECTOR(FILM_ID INTEGER NOT NULL,DIRECTOR_ID INTEGER NOT NULL);
DROP TABLE FILM_COUNTRY IF EXISTS;
CREATE TABLE FILM_COUNTRY(ID CHAR(2) NOT NULL PRIMARY KEY,COUNTRY VARCHAR(60) NOT NULL);
DROP TABLE FILM_MOVIE_COUNTRY IF EXISTS;
CREATE TABLE FILM_MOVIE_COUNTRY(FILM_ID INTEGER NOT NULL,COUNTRY_ID CHAR(2) NOT NULL);
DROP TABLE FESTIVAL_CATEGORY IF EXISTS;
CREATE TABLE FESTIVAL_CATEGORY(ID INTEGER NOT NULL PRIMARY KEY,NAME VARCHAR(40) NOT NULL,KEYWORD CHAR(4) NOT NULL,PARENT INTEGER NOT NULL,COLOR CHAR(6) NOT NULL);
DROP TABLE FESTIVAL_ENTRY IF EXISTS;
CREATE TABLE FESTIVAL_ENTRY(FILM_ID INTEGER NOT NULL,YEAR INTEGER NOT NULL,CATEGORY_ID INTEGER NOT NULL,PRIMARY KEY(FILM_ID,YEAR));
DROP TABLE FESTIVAL_SCREENING IF EXISTS;
CREATE TABLE FESTIVAL_SCREENING(ID INTEGER NOT NULL PRIMARY KEY,DAY DATE NOT NULL,TIME TIME NOT NULL,LOCATION VARCHAR(4) NOT NULL,FILM_ID INTEGER NOT NULL,PRESS INTEGER NOT NULL);