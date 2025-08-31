# Airbnb Clone – Sample Data Script

This directory contains SQL scripts to populate the Airbnb Clone database with realistic sample data. These entries simulate actual usage scenarios including multiple users, property listings, bookings, payments, and reviews.

---

## 📦 Entities Populated

- `User`: Hosts and guests with contact details
- `Property`: Listings across Nairobi and Naivasha
- `Booking`: Reservations with varied status and dates
- `Payment`: Transactions using different methods
- `Review`: Feedback with ratings and comments

---

## 🚀 Usage Instructions

1. Ensure the database schema is already created (see `database-script-0x01/schema.sql`).
2. Run the seed script in your SQL environment:
   ```bash
   mysql -u your_user -p your_database < seed.sql
