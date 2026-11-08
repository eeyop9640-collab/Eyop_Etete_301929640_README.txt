-- ==========================================
-- SWIFTTRACK LOGISTICS MANAGEMENT SYSTEM
-- MIT 8103 ADVANCED DATABASE SYSTEMS
-- PORTFOLIO 1: DATABASE DESIGN AND MODELLING
-- ==========================================


-- ==========================================
-- 1. CUSTOMERS
-- ==========================================

CREATE TABLE customers (
    customer_id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,
    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);


-- ==========================================
-- 2. DRIVERS
-- ==========================================

CREATE TABLE drivers (
    driver_id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    licence_number VARCHAR(50) NOT NULL UNIQUE,
    status VARCHAR(20) NOT NULL
        DEFAULT 'Available',
    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_driver_status
        CHECK (
            status IN (
                'Available',
                'Assigned',
                'Inactive'
            )
        )
);
