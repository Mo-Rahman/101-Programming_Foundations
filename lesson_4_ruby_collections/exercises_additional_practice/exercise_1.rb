# Exercise 1

# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are 
# the positions in the array.

# flintstones.each_with_index do |name, index|
#   puts "I am the #{name} with an index of #{index}"
# end

# flintstones.each_with_index({}) do |name, index|
#   hash[name] = index
# end

# p flintstones

# flintstones.each_with_object({}) do |num, hash|
#   hash[num]
# end

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

puts flintstones_hash