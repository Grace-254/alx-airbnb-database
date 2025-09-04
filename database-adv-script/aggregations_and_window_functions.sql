-- Aggregation Query:
-- Find the total number of bookings made by each user

SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id
ORDER BY total_bookings DESC;

-- --------------------------------------------------------

-- Window Function Query 1:
-- Rank properties based on the total number of bookings using RANK()

SELECT
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id
ORDER BY booking_rank;

-- --------------------------------------------------------

-- Window Function Query 2:
-- Assign a unique row number to each property based on booking count using ROW_NUMBER()

SELECT
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_row_number
FROM bookings
GROUP BY property_id
ORDER BY booking_row_number;
