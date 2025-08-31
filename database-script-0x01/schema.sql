-- Create User table
CREATE TABLE User (
  UserID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL,
  Phone VARCHAR(20),
  Password VARCHAR(255) NOT NULL,
  UserType ENUM('Guest', 'Host', 'Admin') NOT NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Property table
CREATE TABLE Property (
  PropertyID INT PRIMARY KEY AUTO_INCREMENT,
  HostID INT NOT NULL,
  Title VARCHAR(150) NOT NULL,
  Description TEXT,
  Location VARCHAR(100) NOT NULL,
  PricePerNight DECIMAL(10,2) NOT NULL,
  PropertyType VARCHAR(50),
  AvailabilityStatus BOOLEAN DEFAULT TRUE,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (HostID) REFERENCES User(UserID)
);

-- Create Booking table
CREATE TABLE Booking (
  BookingID INT PRIMARY KEY AUTO_INCREMENT,
  UserID INT NOT NULL,
  PropertyID INT NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  TotalPrice DECIMAL(10,2),
  BookingStatus ENUM('Confirmed', 'Cancelled', 'Pending') DEFAULT 'Pending',
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (UserID) REFERENCES User(UserID),
  FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);

-- Create Payment table
CREATE TABLE Payment (
  PaymentID INT PRIMARY KEY AUTO_INCREMENT,
  BookingID INT UNIQUE NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  PaymentDate DATE NOT NULL,
  PaymentMethod VARCHAR(50),
  PaymentStatus ENUM('Paid', 'Pending', 'Failed') DEFAULT 'Pending',
  FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);

-- Create Review table
CREATE TABLE Review (
  ReviewID INT PRIMARY KEY AUTO_INCREMENT,
  UserID INT NOT NULL,
  PropertyID INT NOT NULL,
  Rating INT CHECK (Rating BETWEEN 1 AND 5),
  Comment TEXT,
  ReviewDate DATE NOT NULL,
  FOREIGN KEY (UserID) REFERENCES User(UserID),
  FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);

-- Indexes for performance
CREATE INDEX idx_user_email ON User(Email);
CREATE INDEX idx_property_location ON Property(Location);
CREATE INDEX idx_booking_dates ON Booking(StartDate, EndDate);
CREATE INDEX idx_review_rating ON Review(Rating);
