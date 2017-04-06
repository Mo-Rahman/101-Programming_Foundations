# Print While

# Using a while loop, print 5 random numbers between 0 and 99. The code below 
# shows an example of how to begin solving this exercise.

# Using the shovel method

numbers = []

while numbers.length < 5
  numbers << rand(0..99)
end

puts numbers

# Using the push method!

numbers = []

while numbers.length < 5
  numbers.push(rand(0..99)) 
end

puts numbers

# using a until 

numbers = []

until numbers.length == 5
  numbers << rand(0..99)
end

puts numbers
