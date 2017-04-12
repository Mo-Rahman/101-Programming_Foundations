require 'pry'
# Exercise 8

# What happens when we modify an array while we are iterating over it? 
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  # binding.pry
  numbers.shift(1)
end

# p's 1
# p's 3
# return value is [3,4]

# 1 - So what the above iterates through numbers and the first iteration index 0, 
# the number is 1, it puts 1 as the output.

# 2- The numbers.shift(1) removes [1] from numbers and the numbers array is = [2, 3, 4]

# 3 - The each loop is now on it's second iteration which is index 1. At this point 
# the array looks like [2, 3, 4] and index 1 is the value 3.  So the p number value is 3

# 4 - The numbers.shift(1) will remove the first value of the array [2] and the numbers
# array now looks like [3, 4].

# 5 - The each loop has already looped through index 0, 1 and there isn't a value in 
# index 2 anymore so the loop ends.  

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# The above works opposite the shift as it removes a value from the end of the array
# as opposed to the beginning of the array.  Both shift and pop are destructive methods. 

# will puts 1 and 2 
# return value will be [1, 2]