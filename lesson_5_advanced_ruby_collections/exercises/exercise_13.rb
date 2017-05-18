# Exercise 13

# Given the following data structure, return a new array containing the same 
# sub-arrays as the original but ordered logically according to the numeric value 
# of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_arr|
  sub_arr[2]
end

# => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# The above method only works as all the odd numbers are in the same position
# in each array. 

arr.sort_by do |sub_arr|
  sub_arr.select do |n|
    n.odd? 
  end
end


# The sorted array should look like this:

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]