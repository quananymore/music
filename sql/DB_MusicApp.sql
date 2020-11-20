CREATE DATABASE db_musicApp; 
USE
    db_musicApp;
CREATE TABLE Account(
    id_Acc INT UNIQUE NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(50),
    username VARCHAR(50),
    pass VARCHAR(50),
    avatar_acc TEXT,
    role int,
    PRIMARY KEY(id_Acc)
); CREATE TABLE accActived(
    id_Acc INT,
    dateVip DATETIME,
    exDate DATETIME,
    FOREIGN KEY(id_Acc) REFERENCES Account(id_Acc)
); CREATE TABLE Album(
    id_Album INT NOT NULL UNIQUE AUTO_INCREMENT,
    id_Song INT,
    album_Name VARCHAR(100),
    album_DateUp DATETIME,
    PRIMARY KEY(id_Album)
); CREATE TABLE Actist(
    id_Actist INT NOT NULL UNIQUE AUTO_INCREMENT,
    PRIMARY KEY(id_Actist),
    name_Actist VARCHAR(100),
    story TEXT,
    avatar_artist TEXT,
    country VARCHAR(100)
); CREATE TABLE Genre(
    id_Genre INT UNIQUE NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id_Genre),
    name_Genre VARCHAR(100)
); CREATE TABLE song(
    id_Song INT NOT NULL UNIQUE AUTO_INCREMENT,
    name_Song VARCHAR(100),
    id_Actist INT,
    up_Date DATETIME,
    id_Genre INT,
    view_Song INT,
    id_Album INT,
    link TEXT,
    PRIMARY KEY(id_Song),
    FOREIGN KEY(id_Album) REFERENCES Album(id_Album),
    FOREIGN KEY(id_Actist) REFERENCES Actist(id_Actist),
    FOREIGN KEY(id_Genre) REFERENCES Genre(id_Genre)
); CREATE TABLE playList(
    id_playList INT NOT NULL AUTO_INCREMENT UNIQUE,
    id_Acc INT,
    PRIMARY KEY(id_playList),
    FOREIGN KEY(id_Acc) REFERENCES accActived(id_Acc),
    name_playList VARCHAR(40)
); CREATE TABLE playList_detail(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_playList INT,
    id_Song INT,
    FOREIGN KEY(id_playList) REFERENCES playList(id_playList),
    FOREIGN KEY(id_Song) REFERENCES song(id_Song)
);