# require 'pry'

# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#     # binding.pry
#   end until dividend == 0
#   divisors
# end

# p factors(10)

# Breaking down the question: 

# We are trying to work out all the factors of an input number. 

# The definition of a factor: The factors of a number are any numbers that 
# divide into it exactly.  This includes 1 and the number itself. For example, 
# the factors of 6 are 1, 2, 3 and 6.  The factors of 8 are 1, 2, 4 and 8

def factors(number)
  dividend = number # pointers.
  divisors = []
  while dividend > 0 do # dividend starts at 10 for the first loop and 9 for the second
    divisors << (number / dividend) if number % dividend == 0 # number is always 10
    dividend -= 1 
  end
  divisors # this is the return value
  # dividend if I had put dividend here, the return value would have been 0. 
end

p factors(10)
