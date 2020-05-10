
-- Simple Queries --
select * from rooms where roomType = 'Pent House'
select * from rooms where roomType = 'Apartment'
select * from Reservations where GuestEGN = 'Guest3'
select * from Staff where salary > 500
select * from Staff where Job = 'Waiter'
select * from Staff where Job = 'Piccolo'

-- Queries on two or more relations --
select * 
from 
(
	select reservations.roomnumber, rooms.roomtype 
	from reservations 
	join 
	rooms 
	on reservations.RoomNumber=rooms.roomNumber

) as roomTypes 
where roomtype = 'Apartment'

select distinct * 
from 
(
	select reservations.GuestEGN, Guests.FirstName,Guests.LastName,Guests.ExtraNotes
	from reservations join Guests on reservations.GuestEGN=Guests.EGN
) as roomType
where FirstName = 'Jane'

select * 
from 
(
	select reservations.roomnumber, rooms.roomtype, reservations.GuestEGN 
	from reservations 
	join rooms 
	on reservations.RoomNumber=rooms.roomNumber
) as roomTs

join guests 
on guests.EGN=roomTs.GuestEGN
where extranotes='NONE'

select roomNumber, roomType, FirstName, LastName 
from 
(
	select reservations.roomnumber, rooms.roomtype, reservations.GuestEGN, reservations.adults 
	from reservations join rooms on reservations.RoomNumber=rooms.roomNumber
) 
as roomTs 
join guests 
on guests.EGN=roomTs.GuestEGN 
where extranotes='NONE' and roomTs.Adults = 2

select roomNumber, roomType, FirstName, LastName, CheckInDate, CheckOutDate 
from 
(
	select reservations.roomnumber, rooms.roomtype, reservations.GuestEGN, reservations.adults, reservations.CheckInDate, reservations.CheckOutDate 
	from reservations 
	join rooms 
	on reservations.RoomNumber=rooms.roomNumber
) 
as roomTs 
join guests 
on guests.EGN=roomTs.GuestEGN 
where extranotes='NONE' and roomTs.Adults = 2 and roomTs.Roomtype = 'Pent House'

