Create View PaymentInfo As 
       select g.FirstName, g.LastName, dt.CheckInDate, dt.CheckOutDate, dt.RoomNumber, dt.roomType, dt.money
	from Guests g
	join (select r.GuestID, r.CheckInDate, r.CheckOutDate, r.RoomNumber, rm.roomType, ROUND(DATEDIFF(day,r.CheckInDate,r.CheckOutDate)*rt.pricePerNight,2) as money
		from Reservations r
		join Rooms rm 
		on r.RoomNumber = rm.roomNumber
		join RoomTypes rt 
		on rm.roomType = rt.roomType) as dt
	on dt.GuestID = g.ID;

Create View StaffInfo As
	select s.FirstName, s.LastName, s.Job
	from Staff s;