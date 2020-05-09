--use HotelDB
--go

INSERT INTO Reservations VALUES ('R1.0', '20200313 11:00:00 AM', '20200513 11:00:00 AM', '20200213 11:00:00 AM', 1, 0, 1, 'Guest1');
INSERT INTO Reservations VALUES ('R1.1', '20200514 11:00:00 AM', '20200517 11:00:00 AM', '20200313 11:00:00 AM', 2, 1, 2, 'Guest10');
INSERT INTO Reservations VALUES ('R1.2', '20200420 11:00:00 AM', '20200423 11:00:00 AM', '20200313 11:00:00 AM', 3, 2, 12, 'Guest2'); 
INSERT INTO Reservations VALUES ('R1.3', '20200211 11:00:00 AM', '20200214 11:00:00 AM', '20200113 11:00:00 AM', 2, 2, 7, 'Guest10');
INSERT INTO Reservations VALUES ('R1.4', '20200113 11:00:00 AM', '20200116 11:00:00 AM', '20200101 11:00:00 AM', 3, 1, 8, 'Guest10'); 
INSERT INTO Reservations VALUES ('R1.5', '20190121 11:00:00 AM', '20190215 11:00:00 AM', '20190101 11:00:00 AM', 2, 3, 9, 'Guest7'); 
INSERT INTO Reservations VALUES ('R1.6', '20190317 11:00:00 AM', '20190325 11:00:00 AM', '20190113 11:00:00 AM', 3, 0, 14, 'Guest3'); 
INSERT INTO Reservations VALUES ('R1.7', '20190517 11:00:00 AM', '20190524 11:00:00 AM', '20190313 11:00:00 AM', 2, 0, 4, 'Guest6'); 
INSERT INTO Reservations VALUES ('R1.8', '20190217 11:00:00 AM', '20190222 11:00:00 AM', '20190101 11:00:00 AM', 3, 1, 12, 'Guest5');
INSERT INTO Reservations VALUES ('R1.9', '20190313 11:00:00 AM', '20190320 11:00:00 AM', '20190221 11:00:00 AM', 4, 2, 3, 'Guest9'); 

CREATE TRIGGER Before_Reservation_Insert On Reservations
INSTEAD OF INSERT AS 
BEGIN
	if exists(select * from inserted i where i.CheckInDate >= i.CheckOutDate or i.CheckInDate > i.CheckOutDate)
		throw 5200, 'Wrong dates', 1;
	else 
		if exists(select * from Reservations r 
		where r.RoomNumber = (select i.RoomNumber from inserted i) and 
		((r.CheckInDate >= (select i.CheckInDate from inserted i) and r.CheckInDate < (select i.CheckOutDate from inserted i))
		or (r.CheckOutDate > (select i.CheckInDate from inserted i) and r.CheckOutDate <= (select i.CheckOutDate from inserted i)))
		)
			throw 5200, 'Room not empty', 1;
		else 
			insert into Reservations values(
			(select top 1 i.ID from inserted i),
			(select top 1 i.CheckInDate from inserted i),
			(select top 1 i.CheckOutDate from inserted i),
			(select top 1 i.ReservationDate from inserted i),
			(select top 1 i.Adults from inserted i),
			(select top 1 i.Children from inserted i),
			(select top 1 i.RoomNumber from inserted i),
			(select top 1 i.GuestID from inserted i)
		)
END;
