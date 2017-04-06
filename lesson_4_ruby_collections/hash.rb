# number_of_pets = {
#   'dogs' => 2,
#   'cats' => 4,
#   'fish' => 1
# }

# pets = number_of_pets.keys
# counter = 0
# # p pets
# # => ["dogs", "cats", "fish"]

# loop do 
#   break if counter == number_of_pets.size
#   current_pet = pets[counter]
#   current_pet_number = number_of_pets[current_pet]
#   puts "I have #{current_pet_number} #{current_pet}!"
#   counter += 1
# end
















number_of_pets = {
  cat: 1, 
  dogs: 4, 
  fishes: 10
}

pets = number_of_pets.keys
# p pets
counter = 0

loop do 
  break if counter == number_of_pets.length
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end







































