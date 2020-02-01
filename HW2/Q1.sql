

A check constraint can be applied to check that both the problems are adequately addressed. 

	CREATE TABLE HotelStays
	(roomNum INTEGER NOT NULL,
	arrDate DATE NOT NULL,
	depDate DATE NOT NULL,
	Check(arrDate > depDate),
	guestName CHAR(30) NOT NULL,
	ReservationNumber INTEGER,
	Check (ReservationNumber = NULL)
	PRIMARY KEY (roomNum, arrDate));

	


When the above table is made, it always checks for each entry in the table that the arrival date is before the departure date. So you have to arrive first and then depart.
The ReservationNumber makes sure that only those rooms are provided whose Reservation Number is Null. If any room has a ReservationNumber given, that room isn't assigned.
 


