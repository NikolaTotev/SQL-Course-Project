Create View GuestInfo As 
       Select Guests.FirstName, Guests.LastName, Reservations.RoomNumber, Reservations.CheckInDate, Reservations.CheckOutDate  from Reservations join guests on Reservations.GuestID=Guests.ID

Create View RoomInfo As 
       Select Rooms.roomNumber, RoomTypes.roomType, RoomTypes.numberOfBeds, RoomTypes.pricePerNight  from Rooms join RoomTypes on Rooms.roomType=RoomTypes.roomtype

