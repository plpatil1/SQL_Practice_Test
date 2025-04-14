#### CREATE DATABASE dbname;      -- Create new database
#### SHOW DATABASES;              -- List all databases
#### USE dbname;                  -- Select database
#### DROP DATABASE dbname;        -- Delete database

##  What is MySQL?
#### MySQL is an open-source Relational Database Management System (RDBMS) that uses SQL (Structured Query Language).

#### Developed by MySQL AB, now owned by Oracle Corporation.

## Key Features of MySQL

_Open Source: Free to use and modify._

_Cross-Platform: Works on Windows, Linux, and macOS._

_High Performance: Fast data processing._

_Scalability: Handles small to large applications._

_Security: Password encryption and user privileges._

_Replication: Supports master-slave replication._

## RDBMS Concepts
*Database:* A collection of related data.

*Table:* Collection of rows and columns.

*Row (Record):* A single data item in a table.

*Column (Field):* A property/attribute of the record.

*Primary Key:* Uniquely identifies each record.

*Foreign Key:* Creates a relationship between two tables.

## SQL Sub-Languages
### DDL (Data Definition Language) – Structure:

#### CREATE, ALTER, DROP, RENAME, TRUNCATE

#### DML (Data Manipulation Language) – Data:

#### INSERT, UPDATE, DELETE

#### DQL (Data Query Language) – Queries:

##### SELECT

##### DCL (Data Control Language) – Access:

##### GRANT, REVOKE

##### TCL (Transaction Control Language) – Transactions:

##### COMMIT, ROLLBACK, SAVEPOINT


## Relationships in MySQL
#### One-to-One: One record in Table A is linked to one in Table B.

#### One-to-Many: One record in Table A linked to multiple in Table B.

#### Many-to-Many: Requires a junction table (e.g., orders and products).

