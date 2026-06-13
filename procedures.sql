DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(Quantity) AS MaxQuantity
FROM Orders;
END //

CREATE PROCEDURE CheckBooking(
IN bookingDate DATE,
IN tableNo INT
)
BEGIN
IF EXISTS (
SELECT *
FROM Bookings
WHERE BookingDate = bookingDate
AND TableNumber = tableNo
) THEN
SELECT 'Table is already booked' AS Status;
ELSE
SELECT 'Table is available' AS Status;
END IF;
END //

CREATE PROCEDURE AddBooking(
IN bookingID INT,
IN customerID INT,
IN bookingDate DATE,
IN tableNo INT
)
BEGIN
INSERT INTO Bookings
VALUES (bookingID, bookingDate, tableNo, customerID);
END //

CREATE PROCEDURE CancelBooking(
IN bookingID INT
)
BEGIN
DELETE FROM Bookings
WHERE BookingID = bookingID;
END //

DELIMITER ;
