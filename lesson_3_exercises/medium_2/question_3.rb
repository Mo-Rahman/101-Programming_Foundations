# Question 3

# Let's call a method, and pass both a string and an array as parameters and 
# see how even though they are treated in the same way by Ruby, the results can 
# be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# the tricky_method will return => ["pumpkins", "rutabaga"] this is 
# because it's the last line in the method. 

# my_string will look like ="pumpkins" as the re-assignment isn't destructive, 
# therefore the argument "my_string" that was passed in works as pass by value.  

# The << is a destructive method and it mutates the argument passed in, therefore
# the output of my_array will be ["pumpkins", "rutabaga"] 