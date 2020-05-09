Create View GuestInfo As 
       Select Guests.FirstName, Guests.LastName, Reservations.RoomNumber, Reservations.CheckInDate, Reservations.CheckOutDate  from Reservations join guests on Reservations.GuestID=Guests.ID

select* from guestinfo

	   