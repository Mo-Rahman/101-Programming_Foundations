# Bad Questions

# Here is an example of a bad question:

# Can I access a constant that's defined outside a method?

# The reason this question is bad is because it's easily testable. The word "bad" may be a little strong, 
# but we want to encourage you to try things out yourself. Create a new .rb file and give it a shot:


NUMBERS = [1, 2, 3]

def test
  puts NUMBERS.inspect
end

test

# Or simply test this in irb 