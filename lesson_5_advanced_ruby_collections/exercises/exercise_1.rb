# Exercise 1

# How would you order this array of number strings by descending numeric value?

# First solution!

# arr = ['10', '11', '9', '7', '8']

# sorted = arr.map do |num|
#   num.to_i
# end

# p sorted.sort.reverse

arr = ['10', '11', '9', '7', '8']

# arr.sort_by do |sub_arr|
#   p sub_arr.to_i
# end

# # second solution!

# descending_order = []

# arr.map do |string|
#   descending_order << string.to_i
#   # descending_order.sort { |a, b| b <=> a }
# end

# p descending_order.sort { |a,b| b <=> a }

# arr = [['10', '11'], ['9', '7', '8'],['1','2','3']]

# arr.sort do |string|
#   string.to_i
# end


# arr = [['10', '11'], ['9', '7', '8'],['1','2','3']]

# Final solution!

arr = ['10', '11', '9', '7', '8']

arr.sort do |a,b|
  b.to_i <=> a.to_i
end





























