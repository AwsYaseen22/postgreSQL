to login to the postgres:
psql --username=freecodecamp dbname=postgres

to list all dbs:
\l

create db:
CREATE DATABASE **\*\***

connect to db:
\c database_name

to create table:
CREATE TABLE table_name;

to show tables inside db:
\d

to show table details:
\d table_name

to add column to tabel:
ALTER TABLE table_name ADD COLUMN column_name DATA_TYPE;

to remove a column:
ALTER TABLE table_name DROP COLUMN column_name;

to rename column:
ALTER TABLE table_name RENAME COLUMN column_name TO new_name;

to insert row to table:
INSERT INTO table_name(column_1, column_2) VALUES(value1, value2);

to show data in table:
SELECT columns FROM table_name;
SELECT \* FROM table_name; (show all data)

to delete row from table:
DELETE FROM table_name WHERE condition;

to remove table:
DROP TABLE table_name;

to rename database:
ALTER DATABASE database_name RENAME TO new_database_name;

to add constraint:
ALTER TABLE table_name ADD COLUMN column_name VARCHAR(30) NOT NULL;

to edit values in row:
UPDATE table_name SET column_name=new_value WHERE condition;

show data in order:
SELECT columns FROM table_name ORDER BY column_name;

add primary key to specific column:
ALTER TABLE table_name ADD PRIMARY KEY(column_name);

to remove constraint like primary key:
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
