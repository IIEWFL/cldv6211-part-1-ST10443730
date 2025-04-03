use master
IF EXISTS(SELECT * FROM sys.databases WHERE name = 'EventEaseDB') 
DROP DATABASE EventEaseDB 
CREATE DATABASE EventEaseDB 
USE EventEaseDB 

--DROP EXISTING TABLES (Uncomment if needed) 
--DROP TABLE IF EXISTS Venue; 
--DROP TABLE IF EXISTS [Event]; 
--DROP TABLE IF EXISTS Booking; 

--TABLE CREATION SECTION
CREATE TABLE Venue(
VenueID INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
VenueName VARCHAR (300) NOT NULL, 
VenueLocation VARCHAR (300) NOT NULL, 
VenueCapacity INT NOT NULL, 
ImageURL VARCHAR (MAX)
);

CREATE TABLE [Event] 
(
EventID INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
BookingDate DATETIME NOT NULL, -- Added VenueID column 

); 

INSERT INTO Venue(VenueName, VenueID, VenueLocation, VenueCapacity,ImageURL)