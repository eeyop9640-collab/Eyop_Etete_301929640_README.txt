Portfolio 4: NoSQL and Advanced Data Models


Objective


The objective of this portfolio activity is to demonstrate how a NoSQL document database can complement the relational PostgreSQL implementation of the SwiftTrack Logistics Management System.

A document-oriented model was selected for delivery tracking data because individual deliveries may contain multiple tracking events with varying structures.


Selected Model

Document Database


Implementation

Delivery tracking information is represented as a JSON-style document containing delivery information and an embedded array of tracking events.


Relational vs NoSQL

PostgreSQL is used for highly structured transactional data, including customers, drivers, vehicles, deliveries and payments.

The document model provides a flexible representation for tracking histories where multiple related events can be stored within a single delivery document.

Practical MongoDB Implementation
The NoSQL model was implemented using MongoDB Community Server and MongoDB Compass.

A database named swifttrack_nosql was created with a collection named delivery_tracking.

Delivery documents were inserted using MongoDB's insertOne() operation.

Example:

db.delivery_tracking.insertOne({
    tracking_number: "SWFT-2026-0001",
    delivery_status: "Delivered",
    customer_id: 1,
    package: {
        description: "Laptop Computer",
        weight_kg: 2.5,
        fragile: true
    },
    tracking_events: [
        {
            status: "Order Created",
            location: "Ikeja"
        },
        {
            status: "Delivered",
            location: "Victoria Island"
        }
    ]
});
