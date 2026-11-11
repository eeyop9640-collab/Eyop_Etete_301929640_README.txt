Portfolio 3: Transactions and Concurrency

Objective

This portfolio demonstrates transaction management and concurrency control using the SwiftTrack Logistics PostgreSQL database.

The experiments cover:

1. Transaction COMMIT
2. Transaction ROLLBACK
3. Concurrent transactions and locking
4. Transaction isolation


Experiment 1: COMMIT

A transaction was started using BEGIN, after which a synthetic SwiftTrack delivery record was updated.

COMMIT permanently saved the update.

This demonstrates transaction atomicity and controlled persistence of database changes.

Experiment 2: ROLLBACK


A delivery status was changed inside a transaction and subsequently reversed using ROLLBACK.

The test confirmed that uncommitted changes can be discarded when an operation is incorrect or should not be completed.

Experiment 3: Concurrency and Locking


Two pgAdmin Query Tool sessions attempted to modify the same delivery record.

The first transaction updated the record without immediately committing. PostgreSQL maintained a row-level lock, causing the second update to wait.

After the first transaction was committed, the competing operation could continue.

This demonstrated PostgreSQL concurrency control and the role of locking in protecting simultaneous database updates.

Experiment 4: Transaction Isolation


The active PostgreSQL transaction isolation level was inspected using SHOW transaction_isolation.

A transaction was then executed using the SERIALIZABLE isolation level to demonstrate explicit isolation control.
