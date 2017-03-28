# limit = 15

# def fib(first_num, second_num)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# Ben defines limit before he calls fib. But limit is not visible in the scope
# of fib because fib is a method and does not have access to any local variables
# outside of its scope.


# Answer
# This has to do with a methods scope and where limit has been initialised. 
# Unlike blocks where the inner scope has access to the outer scope, method's 
# scope work differently in that it needs to be initialised within the method
# or passed in as an argument.  To fix the problem, we could add limit to the 
# method paramter see 'Solution 1', or we could initialise limit within the 
# method, see 'Solution 2'.  

# Solution 1

# def fib(first_num, second_num, limit)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# limit = 15
# result = fib(0, 1, limit)
# puts "result is #{result}"

# Solution 2

def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
