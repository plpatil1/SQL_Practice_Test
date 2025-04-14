#### CREATE DATABASE dbname;      -- Create new database
#### SHOW DATABASES;              -- List all databases
#### USE dbname;                  -- Select database
#### DROP DATABASE dbname;        -- Delete database

CREATE TABLE tablename (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  age INT
);

SHOW TABLES;                 -- List tables
DESCRIBE tablename;          -- Table structure
DROP TABLE tablename;        -- Delete table
RENAME TABLE old TO new;     -- Rename table
