####################################
to create the database from scratch if lost connection:
pg_dump --clean --create --inserts --username=freecodecamp students > students.sql

to create a db from above:
psql -U postgres < studednts.sql
####################################

to automate data insertion from file:
create a .sh file
give it executable permission
chmod -x file_name
add #!/bin/bash
to read all data from csv file
cat file_name.csv
pipe it to a while loop
and set the seperator (IFS internal field seperator from default space to comma)
cat courses.csv | while IFS="," read MAJOR COURSE
do
echo $MAJOR
done

to remove all tables data:
TRUNCATE table_name;
