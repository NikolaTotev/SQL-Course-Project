-- Queries on two or more relations --
(select s.FirstName, s.LastName
from Staff s)
UNION
(select g.FirstName, g.LastName
from Guests g);

select g.FirstName, g.LastName
from Guests g, Reservations r
where g.EGN = r.GuestEGN and r.CheckInDate >= '20190101' and r.CheckOutDate < '20200101';

select s.roomNumber, rt.numberOfBeds, rt.pricePerNight 
from Rooms s, RoomTypes rt
where s.roomType = rt.roomType;

(select r.GuestEGN
from Reservations r
group by r.GuestEGN 
having COUNT(*) >= 2)
intersect
(select p.GuestEGN
from Payments p
where p.Method = 'VISA');

(select r.roomNumber
from Rooms r
where r.requiresCleaning = 1)
union
(select r.roomNumber
from Rooms r
where r.requiresMaintenance = 1);

-------Subqueries------------
select g.FirstName, g.LastName, (select COUNT(*) from Reservations r where r.GuestEGN = g.EGN) as num_reservations
from Guests g;

select s.FirstName, s.LastName, s.Job 
from Staff s
where s.Salary >= (select AVG(Salary) from Staff);

select g.FirstName, g.LastName
from Guests g
join (select r.GuestEGN
	from Reservations r
	where r.CheckInDate >= '20190101' and r.CheckOutDate < '20200101') as dt
on g.EGN = dt.GuestEGN;

select s.FirstName, s.LastName, s.Salary
from Staff s
where s.Salary in (select MIN(Salary) from Staff);

select s.FirstName, s.LastName, s.Job
from Staff s
where s.Salary >= (select MAX(st.Salary) 
				from Staff st 
				where st.EndDate is NULL and st.StartDate in 
				(select MIN(StartDate) from Staff where EndDate is NULL) );

--Group by and Aggregation--
select g.FirstName, g.LastName
from Guests g
join
	(select r.GuestEGN, COUNT(*) as num_count	
	from Reservations r 
	group by r.GuestEGN ) as dt
on g.EGN = dt.GuestEGN
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
on g.EGN = r.GuestEGN
group by g.EGN, g.FirstName, g.LastName
order by num_reservations ASC;

select gu.FirstName, gu.LastName, dt.money
from Guests gu
join (select g.EGN, ROUND(SUM(DATEDIFF(day,r.CheckInDate,r.CheckOutDate)*rt.pricePerNight),2) as money
	from Guests g
	join Reservations r
	on g.EGN = r.GuestEGN
	join Rooms rm 
	on r.RoomNumber = rm.roomNumber
	join RoomTypes rt 
	on rm.roomType = rt.roomType
	group by g.EGN) as dt
on dt.EGN = gu.EGN;

select gu.FirstName, gu.LastName, dt.money
from Guests gu
join (select g.EGN, ROUND(AVG(DATEDIFF(day,r.CheckInDate,r.CheckOutDate)*rt.pricePerNight),2) as money
	from Guests g
	join Reservations r
	on g.EGN = r.GuestEGN
	join Rooms rm 
	on r.RoomNumber = rm.roomNumber
	join RoomTypes rt 
	on rm.roomType = rt.roomType
	group by g.EGN) as dt
on dt.EGN = gu.EGN;