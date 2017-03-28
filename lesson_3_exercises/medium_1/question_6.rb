# Question 6

#### Wasn't quite sure what this question was asking me to do, I understood 
# that one of the strings was assignment and wasn't being mutated while the other
# was a destructive method and was being mutated and also that return value
# for -- an_array_param += ["rutabaga"] -- only

# In an earlier exercise we saw that depending on variables to be modified by 
# called methods can be tricky:

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"
# We learned that whether the above "coincidentally" does what we think we wanted 
# "depends" upon what is going on inside the method.

# How can we refactor this exercise to make the result easier to predict and 
# easier for the next programmer to maintain?

# Solution 6
# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"
# Every language (Ruby included) provides ways and means of writing "clever" code 
# that depends on some of the less obvious traits of the language.

# Every good programmer practices these tricks...and then avoids them like the 
# plague.

# Clever programmers don't write "clever" code. They write explicit code that is 
# easy to read, debug and modify as the requirements change.

