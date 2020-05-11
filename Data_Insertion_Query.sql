INSERT INTO RoomTypes VALUES ('Single',1, 15);
INSERT INTO RoomTypes VALUES ('Double Room',2, 25);
INSERT INTO RoomTypes VALUES ('Apartment',4, 50);
INSERT INTO RoomTypes VALUES ('Pent House',10, 150);

INSERT INTO Rooms VALUES (1,'Single',0, 0);
INSERT INTO Rooms VALUES (2,'Double Room',0, 0);
INSERT INTO Rooms VALUES (3,'Apartment',0, 0);
INSERT INTO Rooms VALUES (4, 'Pent House',0, 0);
INSERT INTO Rooms VALUES (5,'Single',0, 0);
INSERT INTO Rooms VALUES (6,'Double Room',0, 0);
INSERT INTO Rooms VALUES (7,'Apartment',0, 0);
INSERT INTO Rooms VALUES (8, 'Apartment',0,0);
INSERT INTO Rooms VALUES (9,'Apartment',0,0);
INSERT INTO Rooms VALUES (10, 'Single',0, 0);
INSERT INTO Rooms VALUES (11,'Double Room',0,0);
INSERT INTO Rooms VALUES (12,'Apartment',0,0);
INSERT INTO Rooms VALUES (13, 'Single',0, 0);
INSERT INTO Rooms VALUES (14,'Apartment',0, 0);
INSERT INTO Rooms VALUES (15, 'Single',0, 0);


INSERT INTO Guests VALUES ('8798216354', 'Jane', 'Anderson', 'NONE');
INSERT INTO Guests VALUES ('3464657446', 'Jane', 'Dowson', 'NONE');
INSERT INTO Guests VALUES ('6987446353', 'Mark', 'Anthony', 'NONE');
INSERT INTO Guests VALUES ('6548324584', 'Димитър', 'Вапцаров', 'NONE');
INSERT INTO Guests VALUES ('5495218574', 'Иван', 'Иванов', 'NONE');
INSERT INTO Guests VALUES ('3354788556', 'Кирил', 'Антонов', 'NONE');
INSERT INTO Guests VALUES ('5485684265', 'Jimmy', 'Carr', 'NONE');
INSERT INTO Guests VALUES ('9856987548', 'Gabriel', 'Iglesias', 'NONE');
INSERT INTO Guests VALUES ('5458965784', 'Stephen', 'King', 'NONE');
INSERT INTO Guests VALUES ('4526485595', 'Daniel', 'Torrance','NONE');


INSERT INTO Staff VALUES ('1234567890', 'Corona', 'Virus', 'Maid', 200.00,	1000,'20200313 11:00:00 AM', null);
INSERT INTO Staff VALUES ('2234567890', 'Maddie', 'Smith', 'Security', 650.00,	1600,'20000601 11:00:00 AM', null);
INSERT INTO Staff VALUES ('1334567890', 'Will', 'Williams', 'Waiter', 700,	6000,'20120905 11:00:00 AM', null);
INSERT INTO Staff VALUES ('5234567890', 'Amelia', 'Pond', 'Waitress', 700,	9000,'20051110 11:00:00 AM', null);
INSERT INTO Staff VALUES ('9234567890', 'Yazmin', 'Khan', 'Receptionist', 800, 0,'20091217 11:00:00 AM', null);
INSERT INTO Staff VALUES ('8234567890', 'Clara', 'Oswald', 'Manager', 1500,	8217,'20000315 11:00:00 AM', null);
INSERT INTO Staff VALUES ('0234567890', 'Ryan', 'Green', 'Piccolo', 500, 62,'19980516 11:00:00 AM', null);
INSERT INTO Staff VALUES ('1434567890', 'Will', 'Smith', 'Sous-Chef', 1100,	394,'20180417 11:00:00 AM', null);
INSERT INTO Staff VALUES ('9624567890', 'Ryan', 'Gosling', 'Piccolo', 500,	39,'20190219 11:00:00 AM', null);
INSERT INTO Staff VALUES ('9624565390', 'Laura', 'Lopez', 'Chef', 1200,	1267,'20110111 11:00:00 AM', null);


INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200701 11:00:00 AM','20200710 11:00:00 AM','20200610 10:00:00 AM', '2','3' ,'3', '8798216354');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200711 11:00:00 AM','20200713 11:00:00 AM','20200615 7:00:00 AM', '2','3' ,'2', '3464657446');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200715 11:00:00 AM','20200718 11:00:00 AM','20200310 8:00:00 AM', '2','3' ,'10', '9856987548');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200713 11:00:00 AM','20200715 11:00:00 AM','20200611 4:00:00 AM', '2','1' ,'5', '5485684265');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200719 11:00:00 AM','20200720 11:00:00 AM','20200212 11:00:00 AM', '2','0' ,'1', '3354788556');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200721 11:00:00 AM','20200722 11:00:00 AM','20200610 12:00:00 PM', '2','4' ,'12', '6548324584');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200723 11:00:00 AM','20200731 11:00:00 AM','20200617 1:00:00 PM', '3','0' ,'13', '6987446353');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200801 11:00:00 AM','20200803 11:00:00 AM','20200102 2:00:00 PM', '2','2' ,'4', '3464657446');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200804 11:00:00 AM', '20200811 11:00:00 AM','20200601 4:00:00 PM', '2','4' ,'10', '5458965784');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200812 11:00:00 AM','20200824 11:00:00 AM','20200401 6:00:00 PM', '2','4' ,'6', '4526485595');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200313 11:00:00 AM', '20200513 11:00:00 AM', '20200213 11:00:00 AM', 1, 0, 1, '8798216354');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200514 11:00:00 AM', '20200517 11:00:00 AM', '20200313 11:00:00 AM', 2, 1, 2, '4526485595');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200420 11:00:00 AM', '20200423 11:00:00 AM', '20200313 11:00:00 AM', 3, 2, 12, '3464657446'); 
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200211 11:00:00 AM', '20200214 11:00:00 AM', '20200113 11:00:00 AM', 2, 2, 7, '4526485595');
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20200113 11:00:00 AM', '20200116 11:00:00 AM', '20200101 11:00:00 AM', 3, 1, 8, '4526485595'); 
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20190121 11:00:00 AM', '20190215 11:00:00 AM', '20190101 11:00:00 AM', 2, 3, 9, '5485684265'); 
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20190317 11:00:00 AM', '20190325 11:00:00 AM', '20190113 11:00:00 AM', 3, 0, 14, '6987446353'); 
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20190313 11:00:00 AM', '20190320 11:00:00 AM', '20190221 11:00:00 AM', 4, 2, 3, '5458965784'); 
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20190517 11:00:00 AM', '20190524 11:00:00 AM', '20190313 11:00:00 AM', 2, 0, 4, '3354788556'); 
INSERT INTO Reservations(CheckInDate,CheckOutDate,ReservationDate, Adults, Children, RoomNumber, GuestEGN) VALUES ('20190217 11:00:00 AM', '20190222 11:00:00 AM', '20190101 11:00:00 AM', 3, 1, 12, '5495218574');

--remove * from reser
--INSERT INTO Payments(id, GuestEGN, BaseFee, ExtraFee, Method, PaymentStatus, TransactionDate)
--SELECT top 5 newid() , p.GuestEGN, p.BaseFee, 0, 'PayPal', 'Processing', GETDATE()
--FROM PaymentInfo as p



--select * from Payments


--select * from PaymentInfo

--select * from Reservations

INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('4526485595', 150, 'PayPal', 'Processing', '20200214');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('5485684265', 30, 'Cash', 'Processing', '20200715');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('4526485595', 75, 'VISA', 'Paid', '20200517');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('3354788556', 1050, 'PayPal', 'Paid', '20190524');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('6548324584', 50, 'Cash', 'Processing', '20200722');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('3464657446', 150, 'MasterCard', 'Paid', '20200423');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('6987446353', 120, 'PayPal', 'Paid', '20200731');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('9856987548', 45, 'VISA', 'Paid', '20200718');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('3464657446', 300, 'PayPal', 'Processing', '20200803');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('4526485595', 150, 'VISA', 'Paid', '20200116');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('5458965784', 350, 'Cash', 'Failed', '20190320');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('6987446353', 400, 'MasterCard', 'Paid', '20190325');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('3464657446', 50, 'MasterCard', 'Failed', '20200713');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('8798216354', 915, 'VISA', 'Paid', '20200513');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('4526485595', 300, 'PayPal', 'Paid', '20200824');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('8798216354', 450, 'Cash', 'Paid', '20200710');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('5495218574', 250, 'VISA', 'Failed', '20190222');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('5485684265', 1250, 'MasterCard', 'Paid', '20190215');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('3354788556', 15, 'PayPal', 'Processing', '20200720');
INSERT INTO Payments(GuestEGN, BaseFee, Method, PaymentStatus, TransactionDate) VALUES ('5458965784', 105, 'Cash', 'Paid', '20200811');

