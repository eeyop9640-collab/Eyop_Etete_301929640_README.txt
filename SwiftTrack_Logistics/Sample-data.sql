-- ==========================================
-- SWIFTTRACK LOGISTICS SAMPLE DATA
-- ==========================================


-- CUSTOMERS

INSERT INTO customers
(first_name, last_name, email, phone)
VALUES
(
    'David',
    'Okoro',
    'david.okoro@example.com',
    '08011111111'
),
(
    'Grace',
    'Adebayo',
    'grace.adebayo@example.com',
    '08022222222'
),
(
    'Samuel',
    'Eze',
    'samuel.eze@example.com',
    '08033333333'
);


- DRIVERS

INSERT INTO drivers
(first_name, last_name, phone, licence_number, status)
VALUES
(
    'James',
    'Okafor',
    '08060000001',
    'DRV-LIC-001',
    'Available'
),
(
    'Peter',
    'Adeyemi',
    '08060000002',
    'DRV-LIC-002',
    'Available'
);
