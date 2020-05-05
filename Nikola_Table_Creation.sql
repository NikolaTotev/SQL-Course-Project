Create Table RoomTypes
(
roomType char (16) NOT NULL PRIMARY KEY,
numberOfBeds int NOT NULL,
pricePerNight float NOT NULL
--CONSTRAINT keyConstr PRIMARY KEY (roomType)
)

Create Table Rooms 
(
roomNumber int NOT NULL,
roomType char(16) NOT NULL,
reservationStatus bit NOT NULL,
currentReservationID char (16) NOT NULL,
nextReservationID char (16) NOT NULL,
cleaningStatus char(8) NOT NULL,
requiresMaintenance bit NOT NULL
--CONSTRAINT roomTypeConst FOREIGN KEY (roomType) REFERENCES RoomTypes(roomType),
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

