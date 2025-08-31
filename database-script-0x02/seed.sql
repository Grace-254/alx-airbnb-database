-- Insert sample users
INSERT INTO User (Name, Email, Phone, Password, UserType)
VALUES 
('Grace Mukami', 'grace@example.com', '0712345678', 'hashed_pw1', 'Host'),
('John Doe', 'john@example.com', '0723456789', 'hashed_pw2', 'Guest'),
('Amina Yusuf', 'amina@example.com', '0734567890', 'hashed_pw3', 'Guest'),
('David Otieno', 'david@example.com', '0745678901', 'hashed_pw4', 'Host');

-- Insert sample properties
INSERT INTO Property (HostID, Title, Description, Location, PricePerNight, PropertyType, AvailabilityStatus)
VALUES 
(1, 'Modern Loft in Nairobi', 'Stylish loft near CBD', 'Nairobi', 4500.00, 'Apartment', TRUE),
(4, 'Lakeview Cottage in Naivasha', 'Peaceful retreat with lake view', 'Naivasha', 6000.00, 'House', TRUE),
(1, 'Studio Apartment in Westlands', 'Compact and cozy', 'Nairobi', 3500.00, 'Studio', TRUE);

-- Insert sample bookings
INSERT INTO Booking (UserID, PropertyID, StartDate, EndDate, TotalPrice, BookingStatus)
VALUES 
(2, 1, '2025-09-10', '2025-09-12', 9000.00, 'Confirmed'),
(3, 2, '2025-10-01', '2025-10-03', 12000.00, 'Pending'),
(2, 3, '2025-09-15', '2025-09-16', 3500.00, 'Confirmed');

-- Insert sample payments
INSERT INTO Payment (BookingID, Amount, PaymentDate, PaymentMethod, PaymentStatus)
VALUES 
(1, 9000.00, '2025-09-09', 'M-Pesa', 'Paid'),
(2, 12000.00, '2025-09-30', 'Credit Card', 'Pending'),
(3, 3500.00, '2025-09-14', 'PayPal', 'Paid');

-- Insert sample reviews
INSERT INTO Review (UserID, PropertyID, Rating, Comment, ReviewDate)
VALUES 
(2, 1, 5, 'Amazing stay, very clean and central!', '2025-09-13'),
(3, 2, 4, 'Lovely cottage, peaceful environment.', '2025-10-04'),
(2, 3, 3, 'Good location but a bit noisy.', '2025-09-17');
