-- ===================================================== -- 
-- =================== View Creation =================== -- 
-- ===================================================== -- 

-- !!! MUST BE EXECUTED SEPARATELY !!! -- 
Create View GuestInfo As 
       Select Guests.FirstName, Guests.LastName, Reservations.RoomNumber, Reservations.CheckInDate, Reservations.CheckOutDate 
	   from Reservations 
	   join guests 
	   on Reservations.GuestEGN=Guests.EGN

-- !!! MUST BE EXECUTED SEPARATELY !!! -- 
Create View RoomInfo As 
       Select Rooms.roomNumber, RoomTypes.roomType, RoomTypes.numberOfBeds, RoomTypes.pricePerNight  
	   from Rooms 
	   join RoomTypes 
	   on Rooms.roomType=RoomTypes.roomtype

-- !!! MUST BE EXECUTED SEPARATELY !!! -- 
Create View PaymentInfo As 
       select dt.GuestEGN, g.FirstName, g.LastName, dt.CheckInDate, dt.CheckOutDate, dt.RoomNumber, dt.roomType, dt.BaseFee
	from Guests g
	join (
			select r.GuestEGN, r.CheckInDate,
				   r.CheckOutDate, r.RoomNumber,
				 rm.roomType, ROUND(DATEDIFF(day,r.CheckInDate,r.CheckOutDate)*rt.pricePerNight,2
		) as BaseFee
		from Reservations r
		join Rooms rm 
		on r.RoomNumber = rm.roomNumber
		join RoomTypes rt 
		on rm.roomType = rt.roomType) as dt
	on dt.GuestEGN = g.EGN;

-- !!! MUST BE EXECUTED SEPARATELY !!! -- 
Create View StaffInfo As
	select s.FirstName, s.LastName, s.Job
	from Staff s;


-- ====================================================== -- 
-- =================== Index Creation =================== -- 
-- ====================================================== -- 

Create Index GuestIndex on Guests(FirstName,LastName)

Create Index ReservationIndex on Reservations(CheckInDate, CheckOutDate) 

Create Index StaffIndex on Staff(FirstName, LastName)
