to put output of command to a file:
echo something > stdout.txt

to append output of command to a file:
echo something >> stdout.txt

the above for the stdout with no error

fot the error output:
bad_command 2> stderr.txt

for stdout we can use 1>
echo hello bash 1> stdout.txt

stdout and stderr are for output. stdin (standard in) is the third thing commands can use and is for getting input. The default is the keyboard. Enter read NAME in the terminal to see a command that uses stdin:

The read command is looking at stdin for where to get input, which is pointing to the keyboard. Type your name and press enter:

Just like you can redirect output, you can redirect stdin as well. Here's an example: <command> < <filename_for_stdin>. Use the read command to assign the NAME variable to the contents of name.txt by redirecting the stdin:
read NAME < name.txt

Now the variable is set to the content of the file, which was the input. Another way to set the stdin is by using the pipe (|). It will use the output from one command as input for another. Here's an example: <command_1> | <command_2>. This will take the stdout from command_1 and use it as the stdin for command_2. Use this method to echo your name and pipe the output into the read command which reads your name into the NAME variable:
echo Aws | read NAME

cat will print the contents of a file or input to stdout.
cat filename.txt

as echo worked:
echo Aws | cat

You should be starting to get the hang of how stdin, stdout, and stderr work but let's try another example with your own command. Use touch to create a file named script.sh:
in the file there is a read command wait to enter name

we can use the echo to fill the name:
echo Aws | ./script.sh

It didn't ask for input this time because you gave it input with the pipe. The two types of output were printed in the terminal. Run the same command but redirect and stderr output the stderr.txt:
echo Aws | ./script.sh 2> stderr.txt

redirect stdout and stderr for each file:
echo Aws | ./script.sh 2> stderr.txt > stdout.txt

It didn't ask for input and nothing was printed in the terminal that time. You redirected both outputs to files. You should take a look at them to see if they have what you expected. Run your script again, use redirection to set name.txt as the input. Don't redirect any of the output:
./script.sh < name.txt

take info of a text file:
wc filename.txt

for lines only: wc -l
for words only: wc -w
for characters: wc -m

to get info without filename with the result (with redirection):
wc -l < filename.txt

to get info without filename with the result (with pipe):
cat filename.txt | wc -l

to forward the info to a file:
cat filename.txt | wc -l >> anotherfile.txt
or
wc -. < filename.txt >> anotherfile.txt

grep is a command for searching for patterns in text. You can use it like this: grep '<pattern>' <filename>. Use it to search for the pattern meow in the kitty_ipsum_1.txt file:
grep -n --color 'meow' kitty_ipsum_1.txt (print line number with colors)

grep --color 'meow[a-z]\*' kitty_ipsum_1.txt
use the regular expresion with coloring them

grep -o 'meow[a-z]\*' kitty_ipsum_1.txt
list just the words from the file

to get the number of matched word:
grep -o 'meow[a-z]\*' kitty_ipsum_1.txt | wc -l

sed can replace text like this: sed 's/<pattern_to_replace>/<text_to_replace_it_with>/' <filename>. By default, it won't replace the text in the file. It will output it to stdout. Use it to replace r with 2 in the name.txt file and the output prints to the terminal:
sed 's/r/2/' name.txt (replace r with 2)

a flags could be added after the last slash
sed 's/r/2/g' name.txt(for global in all the text)
sed 's/r/2/i' name.txt(to ignore the case sensetive)

find meow with extras put them in numbered lines then capture the numbers at the start and find that number with everything after and replace them all with catched text:
grep -n 'meow[a-z]_' kitty_ipsum_1.txt | sed -E 's/([0-9]+)._/\1/'

list all the founded words and count the lines:
grep -o 'cat[a-z]\*' kitty_ipsum_1.txt | wc -l

grep -n 'cat[a-z]_' kitty_ipsum_1.txt | sed -E 's/([0-9]+)._/\1/' >> kitty_info.txt

to find deferences between two files:
diff --color file1 file2

to replace multi places (g for many places appears in the text):
sed -E 's/catnip/dogchow/g; s/cat/dog/g; s/meow|meowzer/woof/g'

the sed is change the text on the fly not affect the files
so we should append the result to a new file to keep the changes
