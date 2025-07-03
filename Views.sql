#Use Existing DB
USE RentalDB;


#Show bookings with a defined end date (i.e., ongoing or completed)
SELECT b.BookingID, p.Title AS PropertyTitle, r.Name AS RenterName, b.StartDate, b.EndDate
FROM Bookings b
JOIN Properties p ON b.PropertyID = p.PropertyID
JOIN Renters r ON b.RenterID = r.RenterID
WHERE b.EndDate IS NOT NULL;


#Show total payment and payment method for each booking
SELECT b.BookingID, r.Name AS RenterName, pr.Title AS PropertyTitle, p.AmountPaid, p.PaymentMethod
FROM Payments p
JOIN Bookings b ON p.BookingID = b.BookingID
JOIN Renters r ON b.RenterID = r.RenterID
JOIN Properties pr ON b.PropertyID = pr.PropertyID;


#Display properties with rent and location details
SELECT pr.PropertyID, pr.Title, pr.RentAmount, pr.AvailableFrom, l.City, l.State
FROM Properties pr
JOIN Locations l ON pr.LocationID = l.LocationID;


#See owners and their listed properties
SELECT o.Name AS OwnerName, o.Email, p.Title AS PropertyTitle, l.City
FROM Owners o
JOIN Properties p ON o.OwnerID = p.OwnerID
JOIN Locations l ON p.LocationID = l.LocationID;
