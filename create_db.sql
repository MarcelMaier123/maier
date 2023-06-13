-- create_db.sql

-- Create tables

CREATE TABLE User (
  UserID INT PRIMARY KEY,
  Username VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  Password VARCHAR(255) NOT NULL,
  ...
);

CREATE TABLE Artist (
  ArtistID INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  ...
);

CREATE TABLE Album (
  AlbumID INT PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  ReleaseDate DATE NOT NULL,
  ...
);

CREATE TABLE Genre (
  GenreID INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  ...
);

CREATE TABLE Song (
  SongID INT PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Duration TIME NOT NULL,
  ...
);

CREATE TABLE Playlist (
  PlaylistID INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  ...
);

CREATE TABLE User_Playlist (
  User_PlaylistID INT PRIMARY KEY,
  UserID INT NOT NULL,
  PlaylistID INT NOT NULL,
  FOREIGN KEY (UserID) REFERENCES User (UserID),
  FOREIGN KEY (PlaylistID) REFERENCES Playlist (PlaylistID),
  ...
);

CREATE TABLE Playlist_Song (
  Playlist_SongID INT PRIMARY KEY,
  PlaylistID INT NOT NULL,
  SongID INT NOT NULL,
  FOREIGN KEY (PlaylistID) REFERENCES Playlist (PlaylistID),
  FOREIGN KEY (SongID) REFERENCES Song (SongID),
  ...
);

CREATE TABLE User_Follows_User (
  User_Follows_UserID INT PRIMARY KEY,
  FollowerUserID INT NOT NULL,
  FollowedUserID INT NOT NULL,
 
