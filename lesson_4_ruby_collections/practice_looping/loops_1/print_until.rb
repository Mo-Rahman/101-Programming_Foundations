require 'pry'

# Print Until

# Given the array of several numbers below, use an until loop to print each number.

# destructive method that leaves the array empty!

numbers = [7, 9, 13, 25, 18]

until numbers.length == 0
  puts numbers.shift
end

# or 

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.length
  puts numbers[count]
  count += 1
  # binding.pry
end

# looping through a hash

# animals = {
#   cat: 1,
#   dogs: 4,
#   fishes: 10
# }

# pets = animals.keys
# count = 0


# loop do 
#   break if count == animals.size
#   type_of_pet = pets[count]
#   number_of_pets = animals[type_of_pet]
#   puts "I have #{number_of_pets} #{type_of_pet}"
#   count += 1
# end




