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
ALTER TABLE table_name ADD UNIQUE(column_name);
ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;

to edit values in row:
UPDATE table_name SET column_name=new_value WHERE condition;

show data in order:
SELECT columns FROM table_name ORDER BY column_name;

add primary key to specific column:
ALTER TABLE table_name ADD PRIMARY KEY(column_name);

to remove constraint like primary key:
ALTER TABLE table_name DROP CONSTRAINT constraint_name;

to add a foreign key to table reference another table:
ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);

show specific data with WHERE:
SELECT columns FROM table_name WHERE condition;

set an existing column as a foreign key:
ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES referenced_table(referenced_column);

to add a foreign key to join table that join two tables for the many to many relation:
ALTER TABLE table_name ADD PRIMARY KEY(column1, column2);

get all the data from multiple joint tables with a JOIN command:
SELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column;

get the data from many to many tables joined by the junction table:
SELECT columns FROM junction_table
FULL JOIN table_1 ON junction_table.foreign_key_column = table_1.primary_key_column
FULL JOIN table_2 ON junction_table.foreign_key_column = table_2.primary_key_column;

#####################################################################################
very important note:
Instructions
For this project, you need to log in to PostgreSQL with psql to create your database. Do that by entering psql --username=freecodecamp --dbname=postgres in the terminal. Be sure to get creative, and have fun!

Here's some ideas for other column and table names: description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth.

If you leave your virtual machine, your database will not be saved. You can make a dump of it by entering pg_dump --clean --create --inserts --username=freecodecamp universe > universe.sql in a terminal (not the psql one). Make sure you are in the project folder when entering the command. It will save the commands to rebuild your database to universe.sql. Then, save the file somewhere. You can rebuild it by entering psql -U postgres < universe.sql in a terminal if you enter the command where the .sql file is.

Don't forget to connect to your database after you create it 😄
#####################################################################################
