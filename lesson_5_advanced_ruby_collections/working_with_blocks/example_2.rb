# Example 2

# Let's take a look at another example.

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

# Map - action = Transformation
# considers the return value of the block? Yes
# Returns a new collection from the method? Yes
# Length of the returned collection? Length of the original

[[1,2], [3,4]].map do |arr|
  arr.first
end

