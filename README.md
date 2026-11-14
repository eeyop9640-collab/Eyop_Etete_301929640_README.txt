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


 # Technical Reflection

The SwiftTrack Logistics portfolio provided practical experience across relational, NoSQL and distributed database concepts.

The project began with the design of a PostgreSQL relational database containing customers, drivers, vehicles, locations, deliveries, packages, payments and tracking events. Primary keys, foreign keys and constraints were used to maintain data integrity, while normalisation reduced unnecessary duplication.

One of the main challenges encountered during implementation was maintaining consistency between the ER diagram, SQL schema and the physical PostgreSQL database. For example, missing columns and duplicate values generated constraint errors during testing. Resolving these issues strengthened my understanding of schema modification, UNIQUE constraints, CHECK constraints and referential integrity.

Query optimisation was tested using a synthetic dataset of approximately 50,000 delivery records. The initial date-range query used a sequential scan with an execution time of 5.497 ms. After implementation of a B-tree index, PostgreSQL used an index-based execution strategy and the measured execution time reduced to 1.777 ms, an improvement of approximately 67.7%.

Transaction testing demonstrated COMMIT, ROLLBACK, concurrency control, locking and transaction isolation. Using separate database sessions helped demonstrate how PostgreSQL protects records when concurrent transactions attempt to modify the same data.

MongoDB was subsequently used to model delivery-tracking information as documents containing embedded package, location and tracking-event information. This demonstrated the flexibility of document databases compared with the relational model.

Finally, distributed database concepts such as replication, sharding, availability and consistency were considered for a future cloud deployment of SwiftTrack.

Overall, the portfolio improved my understanding of how database design decisions affect integrity, performance, scalability and availability in a practical business system.


## References

* PostgreSQL documentation
* MongoDB documentation
* Course materials provided


# AI Use Declaration

## Microsoft Copilot was used as a learning and technical support tool during the development of this portfolio.

AI assistance was used to:

* Explain advanced database concepts
* Review PostgreSQL syntax
* Support troubleshooting of PostgreSQL and pgAdmin
* Suggest database-testing approaches
* Explain query execution plans and optimisation techniques
* Support MongoDB document modelling
* Assist with documentation structure and presentation
  
AI-generated suggestions were not accepted without review. SQL commands and database operations were executed and tested using PostgreSQL, pgAdmin and MongoDB Compass. 

Database outputs, constraints, execution plans and query results were reviewed before being included as portfolio evidence.

The final implementation, testing decisions, evidence selection and interpretation remain my responsibility
