Portfolio 5: Distributed and Cloud Database



Objective


* The objective of this portfolio activity is to demonstrate how the SwiftTrack Logistics database could be deployed in a distributed cloud environment to improve scalability, availability, resilience and performance.

* The proposed architecture considers database replication, sharding, availability and consistency using the same SwiftTrack Logistics case study developed throughout the portfolio.


Business Scenario


* SwiftTrack Logistics initially operates from a central database environment but is assumed to expand operations across multiple Nigerian locations including Lagos, Abuja and Kano.

*  As delivery volumes increase, relying on a single database server could introduce performance, scalability and availability limitations.

*  A distributed database architecture is therefore proposed to support continued business growth.



Proposed Distributed Architecture
SwiftTrack would use a primary cloud database with replicated database nodes to support resilience and availability.

The conceptual architecture is:

Customers / Drivers / Operations | v SwiftTrack Application | v Cloud Database Layer / |
/ |
Lagos Abuja Kano Replica Replica Replica








Database Replication
Replication maintains copies of database information across multiple database nodes.

For SwiftTrack, the primary database would process the authoritative transactional workload while replicas could support resilience and selected read workloads.

Example:

Primary Database | +------ Replica 1 | +------ Replica 2







Database Sharding
As SwiftTrack grows, the delivery dataset may eventually become too large for a single database node to process efficiently.

Sharding distributes portions of a dataset across multiple database nodes.

A geographical sharding model could conceptually divide delivery information by operational region.

Example:

*  Shard 1 Lagos / South-West operations

*  Shard 2 Abuja / North-Central operations

*  Shard 3 Kano / Northern operations











Geographical sharding could reduce the amount of data each node processes and may place operational data closer to the workload generating it.

However, sharding also increases complexity. Queries spanning multiple regions may require cross-shard processing, and an unsuitable shard key can cause uneven data distribution or hotspots.

Therefore, sharding would only be introduced when database volume and workload justify the additional complexity.







Availability and Resilience


A distributed architecture reduces dependence on a single database instance.

SwiftTrack could use multiple availability zones so that a failure affecting one database host or zone does not necessarily make the logistics platform unavailable.

The architecture would support:

*  Database redundancy
*  Automated backups
*  Point-in-time recovery
*  Failure monitoring
* Replica promotion/failover
*  Disaster recovery testing

  
This is particularly relevant to SwiftTrack because customers and operations personnel may require continuous access to delivery and tracking information.










Consistency Considerations


Distributed databases introduce a trade-off between availability, performance and how quickly replicated data becomes consistent across nodes.

SwiftTrack's requirements depend on the type of information.

Strong consistency is particularly important for:

*  Payments
*  Delivery assignment
*  Delivery status changes
*  Customer account information
*  Slight replication delay may be more tolerable for:

*  Historical reporting
*  Analytical dashboards
*  Management reporting

  
The architecture should therefore prioritise transactional accuracy for operational data while replicas may be used for suitable read-oriented workloads.







Distributed Data Strategy


SwiftTrack could use different database technologies for different workloads.

PostgreSQL


PostgreSQL remains appropriate for core transactional information including:

   *  Customers
   *  Drivers
   *  Vehicles
   *  Deliveries
   *  Payments

These workloads benefit from relational integrity and transactional consistency.

MongoDB


A document database can complement PostgreSQL for flexible tracking-event workloads where information is naturally represented as nested documents.

The architecture therefore demonstrates polyglot persistence: selecting database technologies according to the characteristics of the workload rather than replacing the relational database completely.
