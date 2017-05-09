require 'pry'

# Example 1

# Take a moment to digest the following example:

# [[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end

# 

# [[1, 2], [3, 4]].each do |arr|
#   puts arr
#   binding.pry
# end

# The same as example 1

[[1, 2], [3, 4]].each do |arr|
  puts arr[0]
end


