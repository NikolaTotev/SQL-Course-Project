-- Queries on two or more relations --
(select s.FirstName, s.LastName
from Staff s)
UNION
(select g.FirstName, g.LastName
from Guests g);

select g.FirstName, g.LastName
from Guests g, Reservations r
where g.ID = r.GuestID and r.CheckInDate >= '20190101' and r.CheckOutDate < '20200101';

select s.roomNumber, rt.numberOfBeds, rt.pricePerNight 
from Rooms s, RoomTypes rt
where s.roomType = rt.roomType;

(select r.GuestID
from Reservations r
group by r.GuestID 
having COUNT(*) >= 2)
intersect
(select p.GuestID
from Payments p
where p.Method = 'VISA');

(select r.roomNumber
from Rooms r
where r.requiresCleaning = 1)
union
(select r.roomNumber
from Rooms r
where r.requiresMaintenance = 1);

--Group by and Aggregation--
select g.FirstName, g.LastName
from Guests g
join
	(select r.GuestID, COUNT(*) as num_count	
	from Reservations r 
	group by r.GuestID ) as dt
on g.ID = dt.GuestID
where num_count >= 2;

select p.Method, COUNT(*) count_payments
from Payments p
group by p.Method
order by count_payments DESC;

select p.Method, SUM(p.BaseFee + p.ExtraFee) as sum_from_method
from Payments p 
group by p.Method;

select p.PaymentStatus, COUNT(*) count_payments
from Payments p
group by p.PaymentStatus;

select r.RoomNumber, COUNT(*) num_reservations
from Reservations r
group by r.RoomNumber;

select rm.roomType, COUNT(*) as num_reservations
from Reservations r
join Rooms rm
on r.RoomNumber = rm.roomNumber
group by rm.roomType
order by num_reservations DESC;

select s.Job, COUNT(*) as num_people
from Staff s
group by s.Job;

select g.FirstName, g.LastName, COUNT(*) as num_reservations
from Guests g
join Reservations r
on g.ID = r.GuestID
group by g.ID, g.FirstName, g.LastName
order by num_reservations ASC;

select gu.FirstName, gu.LastName, dt.money
from Guests gu
join (select g.ID, ROUND(SUM(DATEDIFF(day,r.CheckInDate,r.CheckOutDate)*rt.pricePerNight),2) as money
	from Guests g
	join Reservations r
	on g.ID = r.GuestID
	join Rooms rm 
	on r.RoomNumber = rm.roomNumber
	join RoomTypes rt 
	on rm.roomType = rt.roomType
	group by g.ID) as dt
on dt.ID = gu.ID;

select gu.FirstName, gu.LastName, dt.money
from Guests gu
join (select g.ID, ROUND(AVG(DATEDIFF(day,r.CheckInDate,r.CheckOutDate)*rt.pricePerNight),2) as money
	from Guests g
	join Reservations r
	on g.ID = r.GuestID
	join Rooms rm 
	on r.RoomNumber = rm.roomNumber
	join RoomTypes rt 
	on rm.roomType = rt.roomType
	group by g.ID) as dt
on dt.ID = gu.ID;