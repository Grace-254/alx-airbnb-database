# 📈 Database Performance Monitoring — Airbnb Clone

## 🎯 Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## 📁 Directory Structure


---

## 🔍 Monitored Query

SELECT ...
FROM bookings
JOIN users ON ...
JOIN properties ON ...
LEFT JOIN payments ON ...
WHERE start_date >= '2025-01-01'
  AND pay.status = 'confirmed'
ORDER BY start_date DESC;
