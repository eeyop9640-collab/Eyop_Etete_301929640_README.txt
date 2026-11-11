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



<img width="1877" height="964" alt="03-concurrent-lock-test" src="https://github.com/user-attachments/assets/a550c913-05ef-4274-a0e0-5282c86faaa2" />
<img width="1915" height="1036" alt="02-transaction-rollback" src="https://github.com/user-attachments/assets/6dda0d82-983e-4092-b24a-ecfcd0ba0bcf" />
<img width="1904" height="1026" alt="01-transaction-commit" src="https://github.com/user-attachments/assets/8f6944a1-6cd3-4090-8e36-29356cfe4ab3" />
<img width="1915" height="1023" alt="04-transaction-isolation" src="https://github.com/user-attachments/assets/23e7fb28-2da8-4415-9869-a363d69ed90b" />

