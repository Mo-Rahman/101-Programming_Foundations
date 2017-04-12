# Exercise 2

# Add up all of the ages from the Munster family hash:

# my solution using map!

# all_ages = 0
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# ages.map do |key, value|
#   all_ages += value
# end

# puts all_ages
# p ages

# Using a basic loop

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# ages_keys = ages.keys
# # puts ages_keys
# counter = 0
# total_age = 0

# loop do 
#   break if counter == ages.size
#   current_age = ages[ages_keys[counter]]
#   total_age += current_age
#   counter += 1
# end

# puts total_age

# using each

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_age = 0
ages.each do |key, value|
  total_age += value
end
puts total_age




