# Question 10

# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the output of this code:

# bar(foo)

# returns 'no'

# This is because foo always returns yes so we are passing bar("yes")
# based on the turnary operator param == "no" ? "yes" : "no", the answer being
# false returns no. 

puts bar("yes")