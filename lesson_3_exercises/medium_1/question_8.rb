
# Question 8

# One day Spot was playing with the Munster family's home computer and he 
# wrote a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

new_demo = mess_with_demographics(munsters)
puts new_demo
p munsters

# The below is me just playing around with Hash values to better understand.

# munsters.each do |key, value| 
#   puts value
#   puts key
# end

# car = {
#   Honda: 'Civic',
#   VW: 'golf',
#   Nissan: 'Micra'
# }

# munsters.each { |key, value| puts "the key is #{key}, the values are #{value}" } 

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# After writing this method, he typed the following...and before Grandpa could 
# stop him, he hit the Enter key with his tail:

# mess_with_demographics(munsters)
# Did the family's data get ransacked? Why or why not?

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# # puts munsters.values('age')

#   # munsters.keys.each do |family_member|
#   #   family_member["age"] = 5 
#   #   # family_member["gender"] = "other"
#   #   puts family_member
#   # end

# # munsters.each do |key, value| 
# #   puts "I am the key: #{key}"
# #   puts "I am the value: #{value}"
# # end

# # def mess_with_demographics(demo_hash)
#   munsters.values.each do |family_member|
#     # family_member["age"] += 42
#     # family_member["gender"] = "other"
#     # puts family_member
#     puts munsters["Herman"]
#   end
# # end

# # puts munsters
