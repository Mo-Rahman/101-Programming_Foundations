

# For example, write out pseudo-code (both casual and formal) that does the following:

# 1 - a method that returns the sum of two integers
# 2 - a method that takes an array of strings, and returns a string that is all those strings concatenated together
# 3 - a method that takes an array of integers, and returns a new array with every other element

# No need to code here, just practice writing logic out in English.

# We'll use the below keywords to assist us, along with their meaning.

#     keyword                 meaning

#     START                   start of the program
#     SET                     sets a variable we can use for later
#     GET                     retrieve input from user
#     PRINT                   displays output to user
#     READ                    retrieve value from variable
#     IF / ELSE IF / ELSE     show conditional branches in logic
#     WHILE                   show looping logic
#     END                     end of the program


1 - a method that returns the sum of two integers

ask the user for a number 
ask the user for a second number
the first number + the second number gives you the result of the sum of two integers

START 

# A method that returns the sum of two numbers

GET get the value for number 1
GET get the value for number 2
READ - result = number 1 + number 2
PRINT Your result is the value of result!

END


2 - a method that takes an array of strings, and returns a string that is all those strings concatenated together

start off with a long list of strings/words
take the first string and save it as string
take the second string and add it to the end of the first saved string
carry on until you've gone through the whole list of strings and adding it to the saved string

START 

# Given a collection of strings in an array 

SET concatenated = ''

WHILE array_of_strings > 1
  concatenate = concatenate + array.pop
END

PRINT concatenate

END


# 3 - a method that takes an array of integers, and returns a new array with every other element

start of with an array of integers
is the position of the integer odd
if the position is odd then add to new array
if the position isn't odd, ignore.
once you've iterated over the whole array print the new array. 

START

# Given an array of integers

SET odds = []

WHILE iterate over the array num
  if position is odd
  odds << num
  else 
  do nothing

  puts odds

END













