# Airbnb Clone – Database Schema

This directory contains the SQL schema for the Airbnb Clone backend. It defines the core entities, relationships, constraints, and indexes to support a scalable and normalized relational database.

---

## 📦 Tables Defined

### 1. `User`
Stores user details and roles (Guest, Host, Admin).

### 2. `Property`
Represents property listings created by hosts.

### 3. `Booking`
Tracks reservations made by guests for specific properties.

### 4. `Payment`
Handles payment transactions linked to bookings.

### 5. `Review`
Captures user feedback and ratings for properties.

---

## 🔐 Constraints & Integrity

- Foreign keys enforce relationships between entities.
- Unique constraints on `Email` and `BookingID` in `Payment`.
- Enum types restrict status and role values.
- Indexes improve query performance on frequently accessed columns.

---

## 🚀 Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/alx-airbnb-database.git
   cd alx-airbnb-database/database-script-0x01
