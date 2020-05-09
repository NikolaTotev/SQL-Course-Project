--create database HotelDB
--go
--use HotelDB
--go

--Drop Table Reservations;
--Drop Table Rooms;
--Drop Table RoomTypes;
--Drop Table Staff
--Drop Table Payments;
--Drop Table Guests;

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
requiresCleaning bit NOT NULL,
requiresMaintenance bit NOT NULL
)

Create Table Guests
(
ID varchar(16) NOT NULL,
FirstName varchar (256) NOT NULL,
LastName varchar (256) NOT NULL,
extraNotes varchar (1024) NOT NULL
);

Create Table Reservations(
ID char(16) NOT NULL,
CheckInDate datetime NOT NULL,
CheckOutDate datetime NOT NULL,
ReservationDate datetime NOT NULL DEFAULT GETDATE(),
Adults int NOT NULL,
Children int NOT NULL,
RoomNumber int NOT NULL,
GuestID varchar(16) NOT NULL,
);

Create Table Staff(
EGN varchar(10) NOT NULL,
FirstName varchar(256) NOT NULL,
LastName varchar(256) NOT NULL,
Job varchar(32) NOT NULL,
Salary decimal NOT NULL,
LengthOfService int, --days
StartDate datetime NOT NULL,
EndDate datetime
);

Create Table Payments(
ID varchar(16) NOT NULL,
GuestID varchar(16) NOT NULL,
BaseFee decimal NOT NULL, --all reservations with guest id, (get price per night * days)
ExtraFee decimal NOT NULL,
Method varchar(256) NOT NULL,
PaymentStatus char(256) NOT NULL,
TransactionDate date NOT NULL);

----- Constraints -----
alter TABLE RoomTypes add constraint PK_RoomTypes primary key(roomType);

alter TABLE Guests add constraint PK_Guests primary key(ID);

alter TABLE Rooms add constraint PK_Rooms primary key(roomNumber);
alter TABLE Rooms add constraint RT_Constraint foreign key (roomType) references RoomTypes(roomType);
alter TABLE Rooms add constraint RN_Constraint check (roomNumber>0);

alter table Reservations add constraint PK_Reservations primary key (ID);
alter table Reservations add constraint FK_Reservations_Guests foreign key (GuestID) references Guests(ID);
alter table Reservations add constraint FK_Reservations_Rooms foreign key (RoomNumber) references Rooms(roomNumber);
alter table Reservations add constraint Check_Adults check(Adults > 0);
alter table Reservations add constraint Check_Children check(Children >= 0);

alter table Staff add constraint PK_Staff primary key (EGN);
alter table Staff add constraint Check_LengthOfService check(LengthOfService >= 0);
alter table Staff add constraint Check_Salary check(Salary > 0);
alter table Staff add constraint Check_Jobs check (Job in ('Maid', 'Receptionist', 'Security', 'Waitress', 'Waiter','Manager','Sous-Chef','Chef','Piccolo'));

alter table Payments add constraint PK_Payments primary key (ID);
alter table Payments add constraint FK_Payments_Guests foreign key (GuestID) references Guests(ID);
alter table Payments add constraint Check_PaymentMethod check (Method in ('PayPal', 'VISA', 'MasterCard', 'Cash'));
alter table Payments add constraint Check_BaseFee check(BaseFee >= 0);
alter table Payments add constraint Check_ExtraFee check(ExtraFee >= 0);
alter table Payments add constraint Check_PaymentStatus check(PaymentStatus in ('Processing', 'Paid', 'Failed'));
