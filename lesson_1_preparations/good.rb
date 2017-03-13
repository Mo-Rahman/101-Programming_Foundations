
# Good Questions

# A better question would be to observe this behavior, and note how it differs from local variable scope rules, 
# and ask why. Example of a good question:

# Why is it that a constant is accessible from a method, but a local variable isn't? Here's an example:

NUMBERS = [1, 2, 3]
arr = [1, 2, 3]

def test    
 puts NUMBERS.inspect
 puts arr.inspect
end
  1 
  1
test

# => [1, 2, 3]
# => NameError: undefined local variable or method `arr'

def repeat(something, number)
  number.times { puts 'something' }
end
