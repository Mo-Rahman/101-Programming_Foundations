# Element Assignment

# String Element Assignment

# We can use the element assignment notation of String in order to change the 
# value of a specific character within a string by referring to its index. Say 
# for example that we wanted to change the first letter of the first word in a 
# sentence to its uppercase equivalent, we could do this in the following way.

str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"

# Another way of solving the problem without having to count the index's by eye

str[str.index('favorite')] = 'F'
str[str.index('color')] = 'C'
str[str.index('is')] = 'I'
str[str.index('blue')] = 'B'

puts str
