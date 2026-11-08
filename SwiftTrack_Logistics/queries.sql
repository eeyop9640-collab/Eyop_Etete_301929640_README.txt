-- ==========================================
-- SWIFTTRACK LOGISTICS VALIDATION QUERIES
-- ==========================================


-- Retrieve customers

SELECT *
FROM customers;


-- Retrieve drivers

SELECT *
FROM drivers;


-- Retrieve vehicles

SELECT *
FROM vehicles;


-- Retrieve locations

SELECT *
FROM locations;


-- Retrieve deliveries

SELECT *
FROM deliveries;


SELECT
    d.driver_id,
    d.first_name,
    d.last_name,
    v.registration_number,
    v.vehicle_type,
    v.make,
    v.model
FROM drivers d
JOIN vehicles v
    ON d.driver_id = v.driver_id;
