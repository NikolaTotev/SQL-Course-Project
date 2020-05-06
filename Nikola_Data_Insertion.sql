use HotelDB
go

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


INSERT INTO Guests VALUES ('Guest1', 'Corona', 'Virus', 'NONE');
INSERT INTO Guests VALUES ('Guest2', 'Jane', 'Dowson', 'NONE');
INSERT INTO Guests VALUES ('Guest3', 'Mark', 'Anthony', 'NONE');
INSERT INTO Guests VALUES ('Guest4', 'Димитър', 'Вапцаров', 'NONE');
INSERT INTO Guests VALUES ('Guest5', 'Иван', 'Иванов', 'NONE');
INSERT INTO Guests VALUES ('Guest6', 'Кирил', 'Антонов', 'NONE');
INSERT INTO Guests VALUES ('Guest7', 'Jimmy', 'Carr', 'NONE');
INSERT INTO Guests VALUES ('Guest8', 'Gabriel', 'Iglesias', 'NONE');
INSERT INTO Guests VALUES ('Guest9', 'Stephen', 'King', 'NONE');
INSERT INTO Guests VALUES ('Guest10', 'Daniel', 'Torrance','NONE');


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


INSERT INTO Reservations VALUES ('R2.1', '20200701 11:00:00 AM','20200710 11:00:00 AM','20200610 10:00:00 AM', '2','3' ,'3', 'Guest1');
INSERT INTO Reservations VALUES ('R2.2', '20200711 11:00:00 AM','20200713 11:00:00 AM','20200615 7:00:00 AM', '2','3' ,'2', 'Guest2');
INSERT INTO Reservations VALUES ('R2.3', '20200713 11:00:00 AM','20200715 11:00:00 AM','20200611 4:00:00 AM', '2','1' ,'5', 'Guest7');
INSERT INTO Reservations VALUES ('R2.4', '20200715 11:00:00 AM','20200718 11:00:00 AM','20200310 8:00:00 AM', '2','3' ,'10', 'Guest8');
INSERT INTO Reservations VALUES ('R2.5', '20200719 11:00:00 AM','20200720 11:00:00 AM','20200212 11:00:00 AM', '2','0' ,'1', 'Guest6');
INSERT INTO Reservations VALUES ('R2.6', '20200721 11:00:00 AM','20200722 11:00:00 AM','20200610 12:00:00 PM', '2','4' ,'12', 'Guest4');
INSERT INTO Reservations VALUES ('R2.7', '20200723 11:00:00 AM','20200731 11:00:00 AM','20200617 1:00:00 PM', '3','0' ,'13', 'Guest3');
INSERT INTO Reservations VALUES ('R2.8', '20200801 11:00:00 AM','20200803 11:00:00 AM','20200102 2:00:00 PM', '2','2' ,'4', 'Guest2');
INSERT INTO Reservations VALUES ('R2.9', '2020804 11:00:00 AM', '20200811 11:00:00 AM','20200601 4:00:00 PM', '2','4' ,'10', 'Guest9');
INSERT INTO Reservations VALUES ('R2.10', '20200812 11:00:00 AM','20200824 11:00:00 AM','20200401 6:00:00 PM', '2','4' ,'6', 'Guest10');

