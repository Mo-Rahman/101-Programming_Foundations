require 'pry'

# [[1,2],[3,4]].map do |arr|
#   arr * 2
#   binding.pry
# end

# arr being the sub array [1,2] in the first iteration!

# arr being the sub array [3,4] in the second interation! 

# array = [[1,2],[3,4]].map do |arr|
#   arr[0] * 2
#   # binding.pry
# end



# array = [[1,2],[3,4]].map do |arr|
#   arr.map do |num|
#     num * 2
#   end
# end

# p array


[[1,2],[3,4]].each do |arr|
    puts arr
  end
