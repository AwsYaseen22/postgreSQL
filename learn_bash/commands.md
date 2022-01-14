create a shell file:
touch questionnaire.sh

open the file and att to it:
echo hellow sh

run the script from the file with the shell:
sh questionnaire.sh

run the script from the file with the bash(bourne-again shell):
bash questionnaire.sh

to make the bash default interpreter:
take the bash path:
which bash
take the path and put it at the top of the file with shebang #!:
#!/bin/bash

to run the file:
./file_name.sh

get access denied:
-rw-r--r--

to give the permission to excute:
chmod +x file_name.sh

to create a variable:
VARIABLE="What's your name?"

to use the variable:
$VARIABLE

to store from the terminal:
read NAME

to pass argument put them after the command:
./file_name arg1 arg2 arg3

to print the arguments:
echo $\*

to print the second argument only:
echo $2

if statement with the arguments:
if [[CONDITION]]
then
STATEMENTS
else
STATEMENTS
fi

to print the last command exit state:
echo $?

for loop:
for (( i = 10; i > 0; i-- ))
do
echo $i
done

comment multi line:
: '
line 1
line 2
'

to print all environment variables:
printenv

to view all variables in the shell:
declare -p
