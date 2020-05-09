CREATE TRIGGER OnReservationInsertUpdate On Reservations
FOR INSERT,UPDATE 
AS
if exists(select * 
		from Reservations r, inserted i
		where r.ID != i.ID and r.RoomNumber = i.RoomNumber and 
		((r.CheckInDate >= i.CheckInDate and r.CheckInDate < i.CheckOutDate)
		or (r.CheckOutDate > i.CheckInDate and r.CheckOutDate <= i.CheckOutDate))) 
or exists(select * 
		from inserted i 
		where i.CheckInDate >= i.CheckOutDate or i.ReservationDate > i.CheckOutDate)
Begin
RAISERROR ('Wrong reservation input!',1,1);
ROLLBACK TRANSACTION;
RETURN 
END;