create table Reservations(
ID char(16) NOT NULL,
CheckInDate datetime NOT NULL,
CheckOutDate datetime NOT NULL,
ReservationDate datetime NOT NULL DEFAULT GETDATE(),
Adults int NOT NULL,
Children int NOT NULL,
RoomNumber int NOT NULL,
GuestID varchar(16) NOT NULL);

create table Staff(
EGN varchar(10) NOT NULL,
FirstName varchar(256) NOT NULL,
LastName varchar(256) NOT NULL,
Job varchar(32) NOT NULL,
LengthOfService int,
StartDate datetime NOT NULL,
EndDate datetime);

create table Payments(
Room int NOT NULL,
GuestID varchar(16) NOT NULL,
BaseFee float NOT NULL,
ExtraFee float,
Method varchar(256),
PaymentStatus bit,
DueDate date NOT NULL);