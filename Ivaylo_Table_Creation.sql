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
LengthOfService int, --days
StartDate datetime NOT NULL,
EndDate datetime);

create table Payments(
ID varchar(16) NOT NULL,
Room int NOT NULL,
GuestID varchar(16) NOT NULL,
BaseFee float NOT NULL,
ExtraFee float,
Method varchar(256),
PaymentStatus bit,
DueDate date NOT NULL);

alter table Reservations add constraint PK_Reservations PRIMARY KEY (ID);
alter table Reservations add constraint FK_Reservations_Guest FOREIGN KEY (GuestID) REFERENCES Guests(ID);
alter table Reservations add constraint Check_Adults CHECK(Adults > 0);
alter table Reservations add constraint Check_Children CHECK(Children >= 0);

alter table Staff add constraint PK_Staff PRIMARY KEY (EGN);
alter table Staff add constraint Check_LengthOfService CHECK(LengthOfService >= 0);

alter table Payments add constraint PK_Payments PRIMARY KEY (ID);
alter table Payments add constraint FK_Payments_Guest FOREIGN KEY (GuestID) REFERENCES Guests(ID);
alter table Payments add constraint Check_PaymentMethod CHECK(Method in ('PayPal', 'VISA', 'MasterCard', 'Cash'));