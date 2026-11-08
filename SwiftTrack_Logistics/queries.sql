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



SELECT
    d.tracking_number,

    c.first_name || ' ' ||
    c.last_name AS customer,

    dr.first_name || ' ' ||
    dr.last_name AS driver,

    v.registration_number AS vehicle,

    pickup.address_line AS pickup_location,

    destination.address_line AS destination,

    d.status,

    d.delivery_fee

FROM deliveries d

JOIN customers c
    ON d.customer_id = c.customer_id

LEFT JOIN drivers dr
    ON d.driver_id = dr.driver_id

LEFT JOIN vehicles v
    ON d.vehicle_id = v.vehicle_id

JOIN locations pickup
    ON d.pickup_location_id =
       pickup.location_id

JOIN locations destination
    ON d.destination_location_id =
       destination.location_id;
