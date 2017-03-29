# Question 5

# How could the unnecessary duplication in this method be removed?

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

# Answer

def color_valid(color)
  color == "blue" || color == "green"
end 

# if the condition is met, the return value will be true, else it will be false.

puts color_valid("yellow")