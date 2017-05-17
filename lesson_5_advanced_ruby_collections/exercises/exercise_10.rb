# Exercise 10

# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original 
# but where the value of each integer is incremented by 1.

# hsh = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# incremented_hash = array.each do |arr|
#   arr.each do |key, value|
#     arr[key] += 1
#   end
# end

# p array
# p incremented_hash

# The above works to an extent but I haven't satisfied the actual question of 
# using map and also not modifying the original array!

# [[['a', 'b']]].map do |sub_arr|
#   p sub_arr
# end

# arr = [['1', '3', '2', '5', '4']]

# ['1', '3', '2', '5', '4']
# incremented_hash = {}
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  # puts hsh
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
    # incremented_hash << key[value] += 1
  end
   incremented_hash
end


puts incremented_hash
p array


