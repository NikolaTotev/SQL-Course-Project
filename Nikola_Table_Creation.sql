Create Table RoomTypes
(
roomType char (16) NOT NULL,
numberOfBeds int NOT NULL,
pricePerNight float NOT NULL
)

Create Table Rooms 
(
roomNumber int NOT NULL,
roomType char(16) NOT NULL,
reservationStatus bit NOT NULL,
cleaningStatus char(8) NOT NULL,
requiresMaintenance bit NOT NULL
)

Create Table Guests
(
ID varchar(16) NOT NULL,
FirstName varchar (256) NOT NULL,
LastName varchar (256) NOT NULL,
roomNumber int NOT NULL,
checkInDate date NOT NULL,
checkOutDate date NOT NULL,
numberOfGuests int NOT NULL,
extraNotes varchar (1024) NOT NULL,
)
----- Constraints -----
ALTER TABLE RoomTypes ADD CONSTRAINT PK_RoomTypes PRIMARY KEY(roomType);

ALTER TABLE Guests ADD CONSTRAINT PK_Guests PRIMARY KEY(ID);

ALTER TABLE Rooms ADD CONSTRAINT PK_Rooms PRIMARY KEY(roomNumber);
ALTER TABLE Rooms ADD CONSTRAINT RT_Constraint FOREIGN KEY (roomType) REFERENCES RoomTypes(roomType);
ALTER TABLE Rooms ADD CONSTRAINT RN_Constraint CHECK (roomNumber>0);