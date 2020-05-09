Create View PaymentInfo As 
       select dt.GuestEGN, g.FirstName, g.LastName, dt.CheckInDate, dt.CheckOutDate, dt.RoomNumber, dt.roomType, dt.BaseFee
	from Guests g
	join (select r.GuestEGN, r.CheckInDate, r.CheckOutDate, r.RoomNumber, rm.roomType, ROUND(DATEDIFF(day,r.CheckInDate,r.CheckOutDate)*rt.pricePerNight,2) as BaseFee
		from Reservations r
		join Rooms rm 
		on r.RoomNumber = rm.roomNumber
		join RoomTypes rt 
		on rm.roomType = rt.roomType) as dt
	on dt.GuestEGN = g.EGN;

Create View StaffInfo As
	select s.FirstName, s.LastName, s.Job
	from Staff s;
