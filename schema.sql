create database songs_app;
use songs_app;

Create table genre(genrename varchar(20) primary key);

create table Artist(artistID integer primary key,firstname varchar(20),lastname varchar(20),dateofbirth DATE );


create table Songs(title varchar(20),artistID integer,
duration integer,
genrename varchar(20),explicitornot boolean,
linktosong varchar(255),
 FOREIGN KEY (artistID) REFERENCES Artist(artistID ),
 FOREIGN KEY (genrename) REFERENCES genre(genrename),
 primary key(title));create database songs_app;
use songs_app;

Create table genre(genrename varchar(20) primary key);

create table Artist(artistID integer primary key,firstname varchar(20),lastname varchar(20),dateofbirth DATE );


create table Songs(title varchar(20),artistID integer,
duration integer,
genrename varchar(20),explicitornot boolean,
linktosong varchar(255),
 FOREIGN KEY (artistID) REFERENCES Artist(artistID ),
 FOREIGN KEY (genrename) REFERENCES genre(genrename),
 primary key(title));
 
create table playlist(playlistID integer primary key, rank integer,title varchar(20),
 FOREIGN KEY (title) REFERENCES Songs(title));
 
create table User(email varchar(20),firstname varchar(20) ,lastname varchar(20),password varchar(20),favouratesong char(20),playlist integer,
 UNIQUE (email),
 FOREIGN KEY (favouratesong) REFERENCES Songs(title),
 FOREIGN KEY (playlist)REFERENCES playlist(playlistID)
 )