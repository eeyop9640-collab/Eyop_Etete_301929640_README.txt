# Eyop_Etete_301929640_README.txt

## Entity Relationship Diagram

The following ER diagram represents the relational design of the SwiftTrack Logistics Management System.

<img width="802" height="1039" alt="SwiftTrack_Logistics_ER_Diagram " src="https://github.com/user-attachments/assets/6d6d73e2-ddc0-4b3e-a727-1fe5d82b5159" />

## ER Diagram Description

The database consists of eight main entities:

* Customers
* Drivers
* Vehicles
* Deliveries
* Locations
* Packages
* Payments
* Tracking Events

The Deliveries entity forms the central transactional component of the database. It connects customers, drivers, vehicles, pickup locations and destination locations.

Primary keys uniquely identify records within each entity, while foreign keys establish relationships between related entities and maintain referential integrity.

The database primarily uses one-to-many relationships. For example, one customer may create multiple deliveries, while each delivery is associated with one customer. Similarly, one delivery may contain multiple packages and generate multiple tracking events.
