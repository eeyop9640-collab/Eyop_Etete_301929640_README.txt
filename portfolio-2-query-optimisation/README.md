Portfolio 2: Query Processing and Optimisation

Objective

The objective of this portfolio activity is to investigate query-processing and optimisation techniques using the SwiftTrack Logistics PostgreSQL database.

The activity evaluates SQL execution plans before and after the application of optimisation techniques such as B-tree indexes, composite indexes, filtering, join optimisation and materialised views.

* Technologies
* PostgreSQL
* pgAdmin 4
* SQL
* EXPLAIN ANALYZE

Experiments

1. Baseline query performance
2. B-tree index optimisation
3. Composite index optimisation
4. JOIN query optimisation
5. Aggregation and materialised views

Evidence

Each optimisation experiment will include:

* Business scenario
* SQL query
* Baseline execution plan
* Optimisation applied
* Post-optimisation execution plan
* Performance comparison
* Analysis of the results
* Screenshot evidence




Performance Test Dataset


The original SwiftTrack Logistics database contained a small dataset created for relational database validation.



The initial database contained:



Table	             Initial Rows

Customers            	5
Drivers	              3
Vehicles	            3
Locations	            10
Deliveries	          1
Packages	            1
Payments	            1
Tracking Events	      3

The initial dataset was insufficient for meaningful query optimisation testing because PostgreSQL could process the tables using sequential scans at negligible cost.

PostgreSQL generate_series() was therefore used to generate a larger synthetic dataset for performance testing.

The generated records are test data and do not represent real customers, drivers, vehicles or deliveries.


Performance Dataset
The database was subsequently expanded to provide sufficient data for query execution-plan and indexing experiments.

Table	             Performance Dataset
Customers	          5,000
Drivers	            500
Vehicles	          ~500
Locations	          1,000
Deliveries	        50,000


The larger dataset provides a more meaningful environment for evaluating sequential scans, B-tree indexes, composite indexes, joins and aggregation operations.


Post-Optimisation Result

After creating a B-tree index on expected_delivery_date, PostgreSQL changed the execution strategy from a Sequential Scan to a Bitmap Index Scan combined with a Bitmap Heap Scan.


Metric	        Before Index	      After Index
Access Method	  Sequential Scan	   Bitmap Heap/Index Scan
Actual Rows	    6,052	             6,052
Planning Time	  0.273 ms	         0.903 ms
Execution Time	5.497 ms	         1.777 ms

The execution time decreased from 5.497 ms to 1.777 ms, representing an improvement of approximately 67.7%.

The B-tree index allowed PostgreSQL to identify matching delivery records using expected_delivery_date rather than scanning all 50,000 records.

Although planning time increased slightly, the reduction in execution time demonstrates the benefit of indexing for this date-range workload.


Experiment 5: Materialised View

A materialised view named monthly_delivery_summary was created to store precomputed monthly delivery and revenue totals.

The view was queried using:

SELECT *

FROM monthly_delivery_summary

ORDER BY month;
