loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

# notes 
# The loop will puts hello multiple times until number == 5
# Once number is equal to 5, the loop will puts Exiting... and break out of the loop