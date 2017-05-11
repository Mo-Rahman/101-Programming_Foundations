# # Example 10

# # Let's say we have the following data structure of nested arrays and we want to increment every number by 1 without changing the data structure.

# [[[1, 2], [3, 4]], [5, 6]].map do |arr|
#   arr.map do |el|
#     if el.to_s.size == 1    # it's an integer
#       el + 1
#     else                    # it's an array
#       el.map do |n|
#         n + 1
#       end
#     end
#   end
# end

# [[[1, 2], [3, 4]], [5, 6]]







































# [[[1, 2], [3, 4]], [5, 6]]

[[1, 2], [3, 4], [5, 6]].map do |arr|
  arr.map do |num|
    num + 1
  end
end


















