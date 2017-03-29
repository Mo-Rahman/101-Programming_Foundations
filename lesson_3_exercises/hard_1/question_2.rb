# Question 2

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
puts greetings.object_id
informal_greeting = greetings[:a]
puts greetings[:a].object_id
puts informal_greeting.object_id
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"

puts greetings # => "hi there"
puts greetings.object_id
