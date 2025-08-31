# Airbnb Clone Database – Normalization Documentation

This document outlines the normalization process applied to the Airbnb Clone backend database schema. The goal is to ensure the schema adheres to the Third Normal Form (3NF), eliminating redundancy and improving data integrity.

---

## 🧠 Overview of Normalization

Normalization is a systematic approach to organizing data in a relational database. It reduces data redundancy and ensures logical data dependencies. The key stages are:

- **1NF (First Normal Form)**: Eliminate repeating groups; ensure atomic values.
- **2NF (Second Normal Form)**: Remove partial dependencies; every non-key attribute must depend on the whole primary key.
- **3NF (Third Normal Form)**: Remove transitive dependencies; non-key attributes must depend only on the primary key.

---

## 🧩 Initial Schema Overview

The initial schema includes the following entities:

- `User`: Stores user details and roles.
- `Property`: Contains property listings and host references.
- `Booking`: Tracks reservations made by users.
- `Payment`: Records payment transactions linked to bookings.
- `Review`: Captures user feedback on properties.

---

## ✅ Step-by-Step Normalization

### 🔹 First Normal Form (1NF)

**Issues Identified:**
- No repeating groups or multi-valued attributes were present.
- All fields were atomic.

**Action Taken:**
- Confirmed atomicity of attributes like `Phone`, `Email`, `Location`.

✅ **Schema is in 1NF**

---

### 🔹 Second Normal Form (2NF)

**Issues Identified:**
- Composite keys were not used, so partial dependency was not a concern.
- All non-key attributes were fully dependent on their respective primary keys.

**Action Taken:**
- Verified that attributes like `TotalPrice` in `Booking` depend on `BookingID`, not just `StartDate`.

✅ **Schema is in 2NF**

---

### 🔹 Third Normal Form (3NF)

**Issues Identified:**
- Potential transitive dependency: `HostID` in `Booking` could be derived from `Property`, creating redundancy.
- `TotalPrice` could be derived from `PricePerNight × Duration`, making it a calculated field.

**Action Taken:**
- Removed `HostID` from `Booking`; retained only `PropertyID` which links to `HostID` via `Property`.
- Kept `TotalPrice` in `Booking` for performance, but documented it as a derived field.
- Ensured `Payment` is a separate entity linked via `BookingID` to avoid mixing financial and transactional data.

✅ **Schema is in 3NF**

---

## 🧪 Final Schema Highlights

| Table     | Normalized Attributes |
|-----------|------------------------|
| `User`    | Atomic fields, no transitive dependencies |
| `Property`| Linked to `User` via `HostID`; no derived fields |
| `Booking` | Linked to `User` and `Property`; no redundant host info |
| `Payment` | Linked to `Booking`; financial data isolated |
| `Review`  | Linked to `User` and `Property`; rating is atomic |

---

## 📌 Notes

- All foreign keys enforce referential integrity.
- Derived fields like `TotalPrice` are retained for performance but documented.
- Additional normalization (e.g., separating `Location` into `City`, `Country`) can be considered for scalability.

---

## ✅ Conclusion

The Airbnb Clone database schema has been successfully normalized to Third Normal Form (3NF). This ensures minimal redundancy, optimal query performance, and strong data integrity across all core backend operations.

